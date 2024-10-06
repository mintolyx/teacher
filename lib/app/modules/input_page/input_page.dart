import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:teacher/app/modules/input_page/input_page_controller.dart';
import 'package:teacher/app/modules/input_page/local_widgets/search_bar.dart';

class InputPage extends GetView<InputPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(children: [MySearchBar()]),
        OutlinedButton(onPressed: () {}, child: Text('검색')),
      ],
    ));
  }
}
