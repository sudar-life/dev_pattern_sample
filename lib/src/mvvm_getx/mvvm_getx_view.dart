import 'package:dev_pattern_sample/src/mvvm_getx/mvvm_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MVVMGetxView extends GetView<MVVMGetxController> {
  const MVVMGetxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVC 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.count.toString(),
                  style: TextStyle(fontSize: 150)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.decreamentCounter();
                      },
                      child: const Text('-')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
