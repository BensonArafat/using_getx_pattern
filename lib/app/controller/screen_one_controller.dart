import 'package:get/get.dart';

class ScreenOneController extends GetxController {
  var counter = 0.obs;

  @override
  void onInit() {
    counter.value = 1;
    super.onInit();
  }

  void increment() {
    counter.value++;
  }
}
