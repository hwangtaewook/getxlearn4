import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({super.key});

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
