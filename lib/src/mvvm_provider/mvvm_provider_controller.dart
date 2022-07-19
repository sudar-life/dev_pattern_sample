import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:flutter/material.dart';

class MVVMProviderController extends ChangeNotifier {
  late Model _model;
  MVVMProviderController() {
    _model = Model();
  }

  int get count => _model.counter;

  void update() {
    notifyListeners();
  }

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    _model.decrementCounter();
    update();
  }
}
