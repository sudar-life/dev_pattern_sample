import 'package:dev_pattern_sample/src/model/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MVCController extends ControllerMVC {
  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  MVCController._(StateMVC? state)
      : model = Model(),
        super(state);

  static MVCController? _this;
  final Model model;

  void update() => setState(() {});

  void incrementCounter() {
    model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    model.decrementCounter();
    update();
  }
}
