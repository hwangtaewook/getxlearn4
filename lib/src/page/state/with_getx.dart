import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/controller/coutn_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "GetX",
            style: TextStyle(fontSize: 30),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          const IncreaseButton(id: "first"),
          const IncreaseButton(id: "second"),
        ],
      ),
    );
  }
}

class IncreaseButton extends StatelessWidget {
  const IncreaseButton({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        "+",
        style: TextStyle(fontSize: 30),
      ),
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase(id);
      },
    );
  }
}
