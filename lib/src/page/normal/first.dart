import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/page/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("다음페이지 이동"),
              onPressed: () {
                Get.to(() => const SecondPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
