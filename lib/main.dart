import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/home.dart';
import 'package:getxlearn/src/page/named/first.dart';
import 'package:getxlearn/src/page/named/next.dart';
import 'package:getxlearn/src/page/named/user.dart';
import 'package:getxlearn/src/page/named/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const Home(),
      //   "/first": (context) => const FirstNamedPage(),
      //   "second": (context) => const SecondNamedPage(),
      // },
      getPages: [
        GetPage(
            name: "/", page: () => const Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => const FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => const SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => const NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => const UserPage(),
            transition: Transition.zoom),
      ],
    );
  }
}
