import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:get/get.dart';

class MVVMGetxController extends GetxController {
  Rx<Model> model = Model().obs;

  void incrementCounter() {
    model.update((val) {
      val!.incrementCounter();
    });
  }

  void decreamentCounter() {
    model.update((val) {
      val!.decrementCounter();
    });
  }
}
