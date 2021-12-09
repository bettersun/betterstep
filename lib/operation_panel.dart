import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'step_controller.dart';

class OperationPanel extends StatelessWidget {
  final StepController c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: c.selectFolder, child: const Icon(Icons.create_new_folder_outlined)),
              TextButton(onPressed: c.clear, child: const Icon(Icons.clear_rounded)),
              TextButton(onPressed: c.callStep, child: const Icon(Icons.smart_display)),
            ],
          ),
          Expanded(
            child: Obx(
              () => ListView(
                  key: const Key("path"),
                  scrollDirection: Axis.vertical,
                  children: c.folder
                      .map(
                        (e) => Row(
                          children: [
                            Expanded(
                              child: Text(e.toString()),
                            ),
                            TextButton(
                                onPressed: () {
                                  c.removeFolder(e);
                                },
                                child: const Icon(Icons.clear_rounded)),
                          ],
                        ),
                      )
                      .toList()),
            ),
          ),
        ],
      ),
    );
  }
}
