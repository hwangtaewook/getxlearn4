import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        child: const Text("asd"),
        onPressed: () {
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
