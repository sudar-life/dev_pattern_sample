import 'package:dev_pattern_sample/src/mvc/controller/mvc_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MVCView extends StatefulWidget {
  MVCView({Key? key}) : super(key: key);

  @override
  State createState() => _MVCViewState();
}

class _MVCViewState extends StateMVC<MVCView> {
  _MVCViewState() : super(MVCController()) {
    con = controller as MVCController;
  }

  late MVCController con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVC 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(con.model.counter.toString(), style: TextStyle(fontSize: 150)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.decreamentCounter();
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
