import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher/app/modules/input_page/input_page_controller.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({
    super.key,
  });

  @override
  State<MySearchBar> createState() => MySearchBarState();
}

class MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputPageController>();
    return SearchAnchor(
        builder: (scontext, scontroller) {
          return SearchBar(
            controller: scontroller,
            hintText: '학교 이름을 입력해주세요.',
            onTap: () {
              debugPrint('gogo');
              scontroller.openView();
            },
            onChanged: (text) {
              debugPrint('gogo');
              setState(() {
                controller.searchText.value = text;
                scontroller.openView();
              });
            },
            onSubmitted: (text) {
              debugPrint('gogo');
              controller.update();
            },
          );
        },
        suggestionsBuilder: (scontext, scontroller) {
          controller.getSuggestList(controller.searchText.value);
          return List<ListTile>.generate(controller.schoolSuggestList.length,
              (int index) {
            final String item = 'item ${controller.schoolSuggestList[index]}';
            return ListTile(
              title: Text(item),
              onTap: () {
                scontroller.closeView(item);
              },
            );
          });
        },
        viewConstraints: BoxConstraints(
          maxHeight: 250,
        ));
  }
}
