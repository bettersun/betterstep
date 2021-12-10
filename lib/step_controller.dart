import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rpc/step.pbgrpc.dart';
import 'step_channel.dart';

class StepController extends GetxController with SingleGetTickerProviderMixin {
  // 统计目录
  RxList folder = [].obs;
  // 代码统计汇总信息
  Rx<StepSummary> summary = StepSummary().obs;
  // 统计标志
  RxBool counted = false.obs;

  // 代码统计结果 Tab
  final List<Tab> tabStep = <Tab>[
    const Tab(
      child: Text('概要'),
    ),
    const Tab(
      child: Text('详细'),
    ),
    // const Tab(
    //   child: Text('按类型'),
    // ),
  ];

  // 概要 Tab
  final List<Tab> tabSummary = <Tab>[
    const Tab(child: Text('注释未统计文件')),
    const Tab(child: Text('未统计文件')),
  ];

  // 代码统计结果 Tab 控制
  late TabController controller;
  // 概要 Tab 控制
  late TabController ctlrSummary;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: tabStep.length);
    ctlrSummary = TabController(vsync: this, length: tabSummary.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void callStep() async {
    final channel = StepChannel.channel();
    final stub = StepClient(channel);

    try {
      StepRequest request = StepRequest();
      request.name = "step";
      List<String> rootPath = folder.map((e) => e.toString()).toList();
      Option option = Option(rootPath: rootPath, ignorePath: [".git", ".svn"], ignoreFileNamePart: [".DS_Store"]);
      request.option = option;

      final response = await stub.countStep(
        request,
        // options: CallOptions(compression: const GzipCodec()),
      );

      summary.value = response.summary;
      counted.value = true;
    } catch (e) {
      // TODO
      print('Caught error: $e');
    }

    // TODO
    // await channel.shutdown();
  }

  // 选择目录
  void selectFolder() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      folder.add(selectedDirectory);
    }
  }

  // 清空所有目录
  void clear() async {
    folder.value = [];
    counted.value = false;
  }

  // 清空选中目录
  removeFolder(int index) {
    folder.remove(folder[index]);
    if (folder.isEmpty) {
      folder.value = [];
    }
  }
}
