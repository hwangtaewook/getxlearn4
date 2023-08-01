import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/count_controller_with_reactive.dart';

class ReactiveStateMangePage extends StatelessWidget {
  const ReactiveStateMangePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: const Text("반응형상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "GetX",
              style: TextStyle(fontSize: 30),
            ),
            GetX<CountControllerWithReactive>(
              builder: (controller) {
                return Text(
                  "${controller.count.value}",
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Obx(
              () => Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              child: const Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            ElevatedButton(
              child: const Text(
                "5로 변경",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
