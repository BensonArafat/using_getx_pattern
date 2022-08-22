import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:using_getx/app/bindings/screen_one_binding.dart';
import 'package:using_getx/app/routes/app_pages.dart';
import 'package:using_getx/app/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.green,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: GetMaterialApp(
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        initialRoute: Routes.initial,
        initialBinding: ScreenOneBinding(),
      ),
    );
  }
}
