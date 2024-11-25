import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; // Reactive state

  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
