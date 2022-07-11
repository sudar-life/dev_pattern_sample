import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MVCControlelr extends ControllerMVC {
  factory MVCControlelr([StateMVC? state]) => _this ??= MVCControlelr._(state);

  MVCControlelr._(StateMVC? state)
      : _model = Model(),
        super(state);

  static MVCControlelr? _this;
  final Model _model;

  int get count => _model.counter;

  void update() => setState(() {});

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    _model.decrementCounter();
    update();
  }
}
