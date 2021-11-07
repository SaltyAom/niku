import '../objects/edgeInsets.dart';

abstract class InsetPaddingMacro {
  NikuEdgeInsets? insetPadding;

  _initialize(Function callback) {
    if (insetPadding == null) insetPadding = new NikuEdgeInsets.all(20);

    print(insetPadding?.value);

    callback();
  }

  set pt(double padding) => _initialize(() => insetPadding!.top = padding);
  set pl(double padding) => _initialize(() => insetPadding!.left = padding);
  set pb(double padding) => _initialize(() => insetPadding!.bottom = padding);
  set pr(double padding) => _initialize(() => insetPadding!.right = padding);

  set px(double padding) {
    _initialize(() {
      insetPadding!.left = padding;
      insetPadding!.right = padding;
    });
  }

  set py(double padding) {
    _initialize(() {
      insetPadding!.top = padding;
      insetPadding!.bottom = padding;
    });
  }

  set p(double padding) {
    _initialize(() {
      insetPadding!.top = padding;
      insetPadding!.bottom = padding;
      insetPadding!.left = padding;
      insetPadding!.right = padding;
    });
  }
}
