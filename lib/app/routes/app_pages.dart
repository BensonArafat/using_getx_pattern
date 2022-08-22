import 'package:get/route_manager.dart';
import 'package:using_getx/app/bindings/screen_one_binding.dart';
import 'package:using_getx/app/bindings/screen_two_binding.dart';
import 'package:using_getx/app/routes/app_routes.dart';
import 'package:using_getx/app/ui/pages/screen_one.dart';
import 'package:using_getx/app/ui/pages/screen_two.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const ScreenOne(),
      binding: ScreenOneBinding(),
    ),
    GetPage(
      name: Routes.screentwo,
      page: () => const ScreenTwo(),
      binding: ScreenTwoBinding(),
    ),
  ];
}
