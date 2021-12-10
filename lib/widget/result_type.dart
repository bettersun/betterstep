import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../step_controller.dart';

class ResultType extends StatelessWidget {
  ResultType({Key? key}) : super(key: key);

  final c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return Text("Summary");
  }
}
