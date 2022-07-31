import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:get/get.dart';

class MVVMGetxController extends GetxController {
  late Model model;
  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    model = Model();
  }

  void incrementCounter() {
    model.incrementCounter();
    count(model.counter);
  }

  void decreamentCounter() {
    model.decrementCounter();
    count(model.counter);
  }
}
