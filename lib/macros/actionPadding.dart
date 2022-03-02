import '../objects/edgeInsets.dart';

abstract class ActionPaddingMacro {
  NikuEdgeInsets? actionPadding;

  _initialize(Function callback) {
    if (actionPadding == null) actionPadding = new NikuEdgeInsets.all(20);

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

abstract class ActionPaddingFullMacro {
  NikuEdgeInsets? actionPadding;

  _initialize(Function callback) {
    if (actionPadding == null) actionPadding = new NikuEdgeInsets.all(20);

    callback();
  }

  set actionPt(double padding) =>
      _initialize(() => actionPadding!.top = padding);

  set actionPl(double padding) =>
      _initialize(() => actionPadding!.left = padding);

  set actionPb(double padding) =>
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
