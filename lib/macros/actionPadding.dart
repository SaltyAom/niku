import '../objects/edgeInsets.dart';

abstract class ActionPaddingMacro {
  NikuEdgeInsets? actionPadding;

  _initialize(Function callback) {
    if (actionPadding == null) actionPadding = new NikuEdgeInsets.all(20);

    print(actionPadding?.value);

    callback();
  }

  set pt(double padding) => _initialize(() => actionPadding!.top = padding);
  set pl(double padding) => _initialize(() => actionPadding!.left = padding);
  set pb(double padding) => _initialize(() => actionPadding!.bottom = padding);
  set pr(double padding) => _initialize(() => actionPadding!.right = padding);

  set px(double padding) {
    _initialize(() {
      actionPadding!.left = padding;
      actionPadding!.right = padding;
    });
  }

  set py(double padding) {
    _initialize(() {
      actionPadding!.top = padding;
      actionPadding!.bottom = padding;
    });
  }

  set p(double padding) {
    _initialize(() {
      actionPadding!.top = padding;
      actionPadding!.bottom = padding;
      actionPadding!.left = padding;
      actionPadding!.right = padding;
    });
  }
}
