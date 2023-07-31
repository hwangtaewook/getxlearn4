import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NUM { first, second }

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  final RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.first.obs;
  final Rx<User> user = User(name: "탱구", age: 27).obs;
  RxList<String> list = [""].obs;

  void increase() {
    count++;
    _double + 1;
    _double(424);
    nums(NUM.second);
    user(User());
    user.update((user) {
      user?.name = "탱탱구";
    });
    // list.addAll();
    // list.add();
    list.addIf(user.value.name == "탱탱구", "okay");
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => debugPrint("매번 호출"));
    once(count, (_) => debugPrint("한번만 호출"));
    debounce(count, (_) => debugPrint("마지막 변경에 한번만 호출"),
        time: const Duration(seconds: 1));
    interval(count, (_) => debugPrint("변경되고 있는 동안 1초마다 호출"));
    super.onInit();
  }
}
