import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NameController extends GetxController {
  final textController = TextEditingController();
  RxString text = "".obs;

  void submitData() {
    if (textController.text.isEmpty) {
      return;
    } else {
      String inputedString = textController.text;
      if (textController.text.isEmpty || inputedString.isEmpty) {
        return;
      } else {
        text.value = inputedString;
      }
      textController.clear();
    }
  }
}
