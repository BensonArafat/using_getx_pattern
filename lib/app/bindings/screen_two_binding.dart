import 'package:get/get.dart';
import 'package:using_getx/app/controller/screen_two_controller.dart';

class ScreenTwoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenTwoController>(() => ScreenTwoController());
  }
}
