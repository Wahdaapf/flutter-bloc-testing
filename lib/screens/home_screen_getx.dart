import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart'; // Import CounterController

class HomeScreen extends StatelessWidget {
  // Instantiate the controller
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App with GetX')),
      body: Center(
        child: Obx(() {
          // Reactive UI that updates automatically
          return Text(
            'Counter: ${controller.counter}',
            style: const TextStyle(fontSize: 24),
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: controller.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
