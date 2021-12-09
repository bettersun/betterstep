import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'operation_panel.dart';
import 'result_panel.dart';
import 'step_controller.dart';

class HomePage extends StatelessWidget {
  final StepController c = Get.put(StepController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            OperationPanel(),
            ResultPanel(),
            // Obx(() => Text("Clicks: ${c.count}")),
          ],
        ),
      ),
    );
  }
}
