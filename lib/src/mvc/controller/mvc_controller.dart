import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MVCController extends ControllerMVC {
  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  MVCController._(StateMVC? state)
      : _model = Model(),
        super(state);

  static MVCController? _this;
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
