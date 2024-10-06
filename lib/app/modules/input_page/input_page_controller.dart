import 'package:get/get.dart';
import 'package:teacher/app/modules/input_page/input_page_repository.dart';

class InputPageController extends GetxController {
  final repository = InputPageRepository();
  final schoolSuggestList = <String>[].obs;

  Future<void> getSuggestList(String val) async {
    schoolSuggestList.clear();
    final result = await repository.getSuggestList(val);
    for (int i = 0; i < result.length; i++) {
      schoolSuggestList.add(result[i]['SCHUL_NM'].toString());
    }
    update();
  }

  final searchText = "".obs;
}
