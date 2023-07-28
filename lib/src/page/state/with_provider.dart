import 'package:flutter/material.dart';
import 'package:getxlearn/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Provider",
            style: TextStyle(fontSize: 30),
          ),
          Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
            return Text(
              "${snapshot.count}",
              style: const TextStyle(fontSize: 30),
            );
          }),
          ElevatedButton(
            child: const Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false);
            },
          ),
        ],
      ),
    );
  }
}
