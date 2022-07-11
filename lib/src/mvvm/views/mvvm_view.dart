import 'package:dev_pattern_sample/src/mvvm/viewmodel/mvvm_viewmodel.dart';
import 'package:flutter/material.dart';

class MVVMView extends StatelessWidget {
  MVVMView({Key? key}) : super(key: key);

  MvvmViewModel viewModel = MvvmViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                stream: viewModel.mvvmStream,
                builder: ((context, snapshot) {
                  return Text(viewModel.count.toString(),
                      style: const TextStyle(fontSize: 150));
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        viewModel.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        viewModel.decreamentCounter();
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
