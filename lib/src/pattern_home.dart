import 'package:dev_pattern_sample/src/mvc/views/mvc_view.dart';
import 'package:dev_pattern_sample/src/mvvm/views/mvvm_view.dart';
import 'package:dev_pattern_sample/src/mvvm_getx/mvvm_getx_controller.dart';
import 'package:dev_pattern_sample/src/mvvm_getx/mvvm_getx_view.dart';
import 'package:dev_pattern_sample/src/mvvm_provider/mvvm_provider_controller.dart';
import 'package:dev_pattern_sample/src/mvvm_provider/mvvm_provider_view.dart';
import 'package:dev_pattern_sample/src/normal/normal_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class PatternHome extends StatelessWidget {
  const PatternHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NormalView()));
                },
                child: const Text('NO PATTERN')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MVCView()));
                },
                child: const Text('MVC PATTERN')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MVVMView()));
                },
                child: const Text('MVVM PATTERN')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChangeNotifierProvider<MVVMProviderController>.value(
                        value: MVVMProviderController(),
                        child: MVVMProviderView(),
                      ),
                    ),
                  );
                },
                child: const Text('MVVM PROVIDER PATTERN')),
            ElevatedButton(
                onPressed: () {
                  Get.to(MVVMGetxView(), binding: BindingsBuilder(
                    () {
                      Get.put(MVVMGetxController());
                    },
                  ));
                },
                child: const Text('MVVM GETX PATTERN')),
          ],
        ),
      ),
    );
  }
}
