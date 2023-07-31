import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/page/named/first.dart';
import 'package:getxlearn/src/page/named/reactive_state_manage_page.dart';
import 'package:getxlearn/src/page/named/simple_state_mange_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("일반적인 라우트"),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => const FirstPage(),
                //   ),
                // );
                Get.to(() => const FirstNamedPage());
              },
            ),
            ElevatedButton(
              child: const Text("Named 루트"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: const Text("Arguments 전달"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed(
                  "/next",
                  arguments: "탱구",
                );
                // Get.toNamed(
                //   "/next",
                //   arguments: User(
                //     name: "탱구",
                //     age: 27,
                //   ),
                // );
              },
            ),
            ElevatedButton(
              child: const Text("동적 url 전달"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed(
                  "/user/960425?name=탱구&age=27",
                );
              },
            ),
            ElevatedButton(
              child: const Text("단순상태관리"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.to(const SimpleStateMangePage());
              },
            ),
            ElevatedButton(
              child: const Text("반응형상태관리"),
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.to(const ReactiveStateMangePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({
    this.name,
    this.age,
  });
}
