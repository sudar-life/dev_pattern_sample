import 'package:flutter/material.dart';

class NormalView extends StatefulWidget {
  NormalView({Key? key}) : super(key: key);

  @override
  State<NormalView> createState() => _NormalViewState();
}

class _NormalViewState extends State<NormalView> {
  int count = 0;
  void update() => setState(() {});

  void incrementCounter() {
    count++;
    update();
  }

  void decrementCounter() {
    count--;
    update();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NO 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString(), style: TextStyle(fontSize: 150)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: incrementCounter, child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: decrementCounter, child: const Text('-')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
