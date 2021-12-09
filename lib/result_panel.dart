import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'step_controller.dart';
import 'step_model.dart';

class ResultPanel extends StatelessWidget {
  final StepController c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    final data = StepModel.data();

    var columnWidth = const <int, TableColumnWidth>{
      0: FixedColumnWidth(400.0),
      1: FixedColumnWidth(100.0),
      2: FixedColumnWidth(60.0),
      3: FixedColumnWidth(60.0),
      4: FixedColumnWidth(60.0),
      5: FixedColumnWidth(60.0),
      6: FixedColumnWidth(80.0),
    };

    return Container(
      padding: const EdgeInsets.all(8.0),
      // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent, width: 1)),
      child: Column(
        children: [
          // Table(
          //   columnWidths: columnWidth,
          //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //   border: TableBorder.all(color: Colors.blueAccent, width: 1, style: BorderStyle.solid),
          //   children: [
          //     TableRow(
          //       children: <Widget>[
          //         const Text(''),
          //         const Text(''),
          //         Text(222.toString()),
          //         Text(800.toString()),
          //         Text(222.toString()),
          //         Text(900.toString()),
          //       ],
          //     )
          //   ],
          // ),
          // Container(
          //   height: 8,
          // ),
          Table(
            columnWidths: columnWidth,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(color: Colors.blueAccent, width: 1.0, style: BorderStyle.solid),
            children: const [
              TableRow(
                children: <Widget>[
                  Center(child: Text('文件路径')),
                  Center(child: Text('文件名')),
                  Center(child: Text('代码行数')),
                  Center(child: Text('注释行数')),
                  Center(child: Text('空行数')),
                  Center(child: Text('总行数')),
                  Center(child: Text('备注')),
                ],
              )
            ],
          ),
          Expanded(
            //   // width: 100,
            child: Container(
              // padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent, width: 1)),
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                key: const Key("result"),
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                child: Obx(
                  () => Table(
                    columnWidths: columnWidth,
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.all(color: Colors.blueAccent, width: 1, style: BorderStyle.solid),
                    children: c.summary.value.info
                        .map((item) => TableRow(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.file)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.fileName)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.sourceStep.toString())),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.commentStep.toString())),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.emptyLineStep.toString())),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.totalStep.toString())),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(item.exInfo)),
                              ),
                            ]))
                        .toList(),
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
