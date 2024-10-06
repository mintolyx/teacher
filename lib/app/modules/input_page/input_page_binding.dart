import 'package:get/get.dart';
import 'package:teacher/app/modules/input_page/input_page_controller.dart';

class InputPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InputPageController());
  }
}
