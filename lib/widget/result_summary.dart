import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../step_controller.dart';

class ResultSummary extends StatelessWidget {
  ResultSummary({Key? key}) : super(key: key);

  final c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => !c.counted.value
          ? Container()
          : Column(
              children: [
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('文件总数')),
                      Expanded(child: Text(c.summary.value.fileCount.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('注释未统计文件数')),
                      Expanded(child: Text(c.summary.value.flatFile.length.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('未统计文件数')),
                      Expanded(child: Text(c.summary.value.unCountedFile.length.toString())),
                    ],
                  ),
                ),
                const Divider(),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('总行数')),
                      Expanded(child: Text(c.summary.value.totalStep.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('代码总行数')),
                      Expanded(child: Text(c.summary.value.sourceStep.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('注释总行数')),
                      Expanded(child: Text(c.summary.value.commentStep.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('总空行数')),
                      Expanded(child: Text(c.summary.value.emptyLineStep.toString())),
                      Container(padding: const EdgeInsets.only(right: 8.0), child: const Text('文件总数')),
                      Expanded(child: Text(c.summary.value.fileCount.toString())),
                    ],
                  ),
                ),
                const Divider(),
                TabBar(
                  controller: c.ctlrSummary,
                  tabs: c.tabSummary,
                  labelColor: Colors.lightBlue,
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: Colors.indigoAccent.shade200,
                  indicatorPadding: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                ),
                Expanded(
                  // 需要用 Expanded 包裹
                  child: TabBarView(
                    controller: c.ctlrSummary,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.lightBlue.shade100),
                        ),
                        child: Obx(
                          () => ListView.builder(
                            controller: ScrollController(),
                            scrollDirection: Axis.vertical,
                            itemCount: c.summary.value.flatFile.length,
                            itemBuilder: (_, index) => Container(
                              color: index % 2 == 1 ? Colors.lightBlue.shade100 : Colors.transparent,
                              padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 40, child: Text(index.toString())),
                                  Expanded(child: Text(c.summary.value.flatFile[index])),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Obx(
                          () => ListView.builder(
                            controller: ScrollController(),
                            scrollDirection: Axis.vertical,
                            itemCount: c.summary.value.unCountedFile.length,
                            itemBuilder: (_, index) => Container(
                              color: index % 2 == 0 ? Colors.lightBlue.shade100 : Colors.transparent,
                              padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
                              child: Row(
                                children: [
                                  Expanded(child: Text(c.summary.value.unCountedFile[index])),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
