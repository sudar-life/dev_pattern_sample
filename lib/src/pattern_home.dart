import 'package:dev_pattern_sample/src/mvc/views/mvc_view.dart';
import 'package:dev_pattern_sample/src/mvvm/views/mvvm_view.dart';
import 'package:flutter/material.dart';

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
                      MaterialPageRoute(builder: (context) => MVCView()));
                },
                child: const Text('MVC PATTERN')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MVVMView()));
                },
                child: const Text('MVVM PATTERN')),
          ],
        ),
      ),
    );
  }
}
