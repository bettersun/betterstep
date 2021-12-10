import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../step_controller.dart';

class ResultDetail extends StatelessWidget {
  ResultDetail({Key? key}) : super(key: key);

  final c = Get.put(StepController());
  final Color colorTitle = Colors.white;
  final EdgeInsets paddingCell = const EdgeInsets.only(left: 4.0, right: 4.0);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Center(child: Text('', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 8, child: Center(child: Text('文件全路径', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('文件名', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('总行数', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('代码行数', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('注释行数', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('空行数', style: TextStyle(color: colorTitle)))),
                Expanded(flex: 3, child: Center(child: Text('备注', style: TextStyle(color: colorTitle)))),
              ],
            ),
          ),
          !c.counted.value
              ? Container()
              : Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.lightBlue.shade100),
                    ),
                    child: ListView.builder(
                      controller: ScrollController(),
                      scrollDirection: Axis.vertical,
                      itemCount: c.summary.value.info.length,
                      itemBuilder: (_, index) => Container(
                        color: index % 2 == 1 ? Colors.lightBlue.shade100 : Colors.transparent,
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0, bottom: 2.0),
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: Text((index + 1).toString())),
                            Expanded(
                              flex: 8,
                              child: Padding(padding: paddingCell, child: Text(c.summary.value.info[index].file)),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                  padding: paddingCell, child: Text(c.summary.value.info[index].fileName.toString())),
                            ),
                            Expanded(
                              flex: 3,
                              child: Center(child: Text(c.summary.value.info[index].totalStep.toString())),
                            ),
                            Expanded(
                              flex: 3,
                              child: Center(child: Text(c.summary.value.info[index].sourceStep.toString())),
                            ),
                            Expanded(
                              flex: 3,
                              child: Center(child: Text(c.summary.value.info[index].commentStep.toString())),
                            ),
                            Expanded(
                              flex: 3,
                              child: Center(child: Text(c.summary.value.info[index].emptyLineStep.toString())),
                            ),
                            Expanded(
                              flex: 3,
                              child: Center(child: Text(c.summary.value.info[index].exInfo)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
