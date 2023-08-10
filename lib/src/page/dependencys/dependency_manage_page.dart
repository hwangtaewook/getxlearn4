import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/src/controller/dependency_controller.dart';

import 'get_lazyput copy.dart';
import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("의존성 주입"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Getput"), //메모리에 인스턴스하고 끄면 사라져 메모리 관리에 좋음
            onPressed: () {
              Get.to(
                () => const GetPut(),
                binding: BindingsBuilder(
                  () {
                    Get.put(DependencyController());
                  },
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Get.lazyPut"), //컨트롤러에 접근할 때 메모리에 올림
            onPressed: () {
              Get.to(
                () => const GetLazyPut(),
                binding: BindingsBuilder(
                  () {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  },
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Get.putAsync"), //put과 비슷 하지만 비동기식으로 사용가능
            onPressed: () {
              Get.to(
                () => const GetPut(),
                binding: BindingsBuilder(
                  () {
                    Get.putAsync<DependencyController>(
                      () async {
                        await Future.delayed(const Duration(seconds: 5));
                        return DependencyController();
                      },
                    );
                  },
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Get.create"), //lazy와 비슷하지만 컨트롤러에 접근할 때마다 메모리에 올림
            onPressed: () {
              Get.to(
                () => const GetPut(),
                binding: BindingsBuilder(
                  () {
                    Get.create<DependencyController>(
                        () => DependencyController());
                  },
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
