import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

import 'rpc/step.pbgrpc.dart';
import 'step_channel.dart';

class StepController extends GetxController {
  Rx<StepSummary> summary = StepSummary().obs;
  RxList folder = [].obs;
  RxInt count = 0.obs;
  increment() => count++;

  void callStep() async {
    final channel = StepChannel.channel();
    final stub = StepClient(channel);

    try {
      StepRequest request = StepRequest();
      request.name = "step";
      List<String> rootPath = folder.map((e) => e.toString()).toList();
      Option option = Option(rootPath: rootPath, ignorePath: [".git", ".svn"], ignoreFileNamePart: [".DS_Store"]);
      request.option = option;

      final response = await stub.sayHello(
        request,
        // options: CallOptions(compression: const GzipCodec()),
      );

      summary.value = response.summary;
      // print('Greeter client received: ${response}');
    } catch (e) {
      print('Caught error: $e');
    }

    // await channel.shutdown();
  }

  void selectFolder() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      // User canceled the picker
      folder.add(selectedDirectory);
    }
  }

  void clear() async {
    folder.value = [];
  }

  removeFolder(String f) {
    for (var element in folder) {
      if (element == f) {
        folder.remove(element);
        break;
      }
    }
    if (folder.isEmpty) {
      folder.value = [];
    }
  }
}
