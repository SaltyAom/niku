import '../objects/edgeInsets.dart';

abstract class ActionPaddingMacro {
  NikuEdgeInsets? actionPadding;

  _initialize(Function callback) {
    if (actionPadding == null) actionPadding = new NikuEdgeInsets.all(20);

    print(actionPadding?.value);

    callback();
  }

  set actionPt(double padding) =>
      _initialize(() => actionPadding!.top = padding);

  set actionPl(double padding) =>
      _initialize(() => actionPadding!.left = padding);

  set actinoPb(double padding) =>
      _initialize(() => actionPadding!.bottom = padding);

  set actionPr(double padding) =>
      _initialize(() => actionPadding!.right = padding);

  set actionPx(double padding) {
    _initialize(() {
      actionPadding!.left = padding;
      actionPadding!.right = padding;
    });
  }

  set actionPy(double padding) {
    _initialize(() {
      actionPadding!.top = padding;
      actionPadding!.bottom = padding;
    });
  }

  set actionP(double padding) {
    _initialize(() {
      actionPadding!.top = padding;
      actionPadding!.bottom = padding;
      actionPadding!.left = padding;
      actionPadding!.right = padding;
    });
  }
}
