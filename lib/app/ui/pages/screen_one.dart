import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/app/controller/screen_one_controller.dart';

class ScreenOne extends GetView<ScreenOneController> {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "A Simple Counter App",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromARGB(255, 240, 243, 240),
              ),
              child: Obx(() => Text(
                    controller.counter.value.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                  )),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Increment + 1'),
              onPressed: () {
                controller.increment();
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Open Screen two'),
              onPressed: () {
                // same as Get.to(ScreenTwo());
                // you can read more on GetX Route documentation
                Get.toNamed("/screentwo");
              },
            ),
          ],
        ),
      ),
    );
  }
}
