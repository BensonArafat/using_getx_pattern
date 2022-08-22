import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/app/controller/screen_two_controller.dart';

class ScreenTwo extends GetView<ScreenTwoController> {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen two'),
      ),
      body: Obx(() {
        if (controller.loading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        var data = controller.data;
        return ListView.separated(
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return ListTile(
              title: Text('${data[index]['name']}'),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: data.length,
        );
      }),
    );
  }
}
