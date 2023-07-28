import 'package:flutter/material.dart';
import 'package:getxlearn/src/controller/count_controller_with_provider.dart';
import 'package:getxlearn/src/page/state/with_getx.dart';
import 'package:getxlearn/src/page/state/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateMangePage extends StatelessWidget {
  const SimpleStateMangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
