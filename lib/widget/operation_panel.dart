import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../step_controller.dart';

class OperationPanel extends StatelessWidget {
  OperationPanel({Key? key}) : super(key: key);

  final StepController c = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 4.0, right: 2.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(onPressed: c.selectFolder, child: const Icon(Icons.create_new_folder_outlined)),
                TextButton(
                    onPressed: c.clear,
                    child: const Icon(
                      Icons.clear_rounded,
                      color: Colors.orangeAccent,
                    )),
                TextButton(onPressed: c.callStep, child: const Icon(Icons.smart_display)),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.lightBlue)),
                child: Obx(
                  () => ListView.builder(
                    controller: ScrollController(),
                    scrollDirection: Axis.vertical,
                    itemCount: c.folder.length,
                    itemBuilder: (_, index) => Container(
                      color: index % 2 == 1 ? Colors.lightBlue.shade100 : Colors.transparent,
                      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                      child: Stack(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(c.folder[index].toString()),
                            ),
                          ),
                          Positioned(
                            right: 0.0,
                            top: 4.0,
                            bottom: 4.0,
                            child: IconButton(
                              icon: const Icon(
                                Icons.clear_rounded,
                                color: Colors.orangeAccent,
                              ),
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(minWidth: 24),
                              onPressed: () {
                                c.removeFolder(index);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
