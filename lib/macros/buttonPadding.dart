import '../objects/edgeInsets.dart';

abstract class ButtonPaddingMacro {
  NikuEdgeInsets? buttonPadding;

  _initialize(Function callback) {
    if (buttonPadding == null) buttonPadding = new NikuEdgeInsets.all(20);

    print(buttonPadding?.value);

    callback();
  }

  set pt(double padding) => _initialize(() => buttonPadding!.top = padding);
  set pl(double padding) => _initialize(() => buttonPadding!.left = padding);
  set pb(double padding) => _initialize(() => buttonPadding!.bottom = padding);
  set pr(double padding) => _initialize(() => buttonPadding!.right = padding);

  set px(double padding) {
    _initialize(() {
      buttonPadding!.left = padding;
      buttonPadding!.right = padding;
    });
  }

  set py(double padding) {
    _initialize(() {
      buttonPadding!.top = padding;
      buttonPadding!.bottom = padding;
    });
  }

  set p(double padding) {
    _initialize(() {
      buttonPadding!.top = padding;
      buttonPadding!.bottom = padding;
      buttonPadding!.left = padding;
      buttonPadding!.right = padding;
    });
  }
}
