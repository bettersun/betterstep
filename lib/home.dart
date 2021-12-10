import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'step_controller.dart';
import 'widget/operation_panel.dart';
import 'widget/result_panel.dart';

class HomePage extends StatelessWidget {
  final StepController c = Get.put(StepController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            OperationPanel(),
            Expanded(
              child: ResultPanel(),
            ),
          ],
        ),
      ),
    );
  }
}
