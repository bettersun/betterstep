import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../step_controller.dart';
import 'result_detail.dart';
import 'result_summary.dart';

class ResultPanel extends StatelessWidget {
  ResultPanel({Key? key}) : super(key: key);

  final c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2.0, right: 4.0, top: 4.0, bottom: 4.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.lightBlue, width: 1)),
      child: Column(
        children: [
          Container(
            color: Colors.lightBlue,
            child: TabBar(
              controller: c.controller,
              tabs: c.tabStep,
              // labelColor: Colors.indigoAccent,
              labelPadding: EdgeInsets.zero,
              indicatorColor: Colors.indigoAccent,
              indicatorPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
            ),
          ),
          Expanded(
            // 需要用 Expanded 包裹
            child: TabBarView(
              controller: c.controller,
              children: <Widget>[
                Center(
                  child: ResultSummary(),
                ),
                Center(
                  child: ResultDetail(),
                ),
                // Center(
                //   child: ResultType(),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
