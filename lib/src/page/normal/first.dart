import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/page/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("다음페이지 이동"),
              onPressed: () {
                Get.toNamed("/second");
              },
            ),
          ],
        ),
      ),
    );
  }
}
