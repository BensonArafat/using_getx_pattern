import 'package:get/get.dart';
import 'package:using_getx/app/controller/screen_one_controller.dart';

class ScreenOneBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenOneController>(() => ScreenOneController());
  }
}
