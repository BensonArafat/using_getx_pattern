import 'package:get/get.dart';
import 'package:using_getx/app/data/repository/nigeria_states_repository.dart';

class ScreenTwoController extends GetxController {
  var loading = true.obs;

  var data = [].obs;

  @override
  Future<void> onInit() async {
    Map<String, dynamic> response = await NigeriaStatesRepository.getState();
    data.value = response['data'];
    loading.value = false;
    super.onInit();
  }
}
