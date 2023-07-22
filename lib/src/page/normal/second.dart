import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("뒤로 이동"),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
            ElevatedButton(
              child: const Text("홈 이동"),
              onPressed: () {
                // Navigator.of(context)
                //     .pushNamedAndRemoveUntil("/", (route) => false);
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
