import '../objects/edgeInsets.dart';

abstract class ButtonPaddingMacro {
  NikuEdgeInsets? buttonPadding;

  NikuEdgeInsets get _buttonPadding =>
      buttonPadding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _buttonPadding.p = padding;
  set px(double padding) => _buttonPadding.px = padding;
  set py(double padding) => _buttonPadding.py = padding;
  set pt(double padding) => _buttonPadding.pt = padding;
  set pl(double padding) => _buttonPadding.pl = padding;
  set pb(double padding) => _buttonPadding.pb = padding;
  set pr(double padding) => _buttonPadding.pr = padding;
}

abstract class ButtonPaddingFullMacro {
  NikuEdgeInsets? buttonPadding;

  NikuEdgeInsets get _buttonPadding =>
      buttonPadding ??= new NikuEdgeInsets.all(20);

  set buttonP(double padding) => _buttonPadding.p = padding;
  set buttonPx(double padding) => _buttonPadding.px = padding;
  set buttonPy(double padding) => _buttonPadding.py = padding;
  set buttonPt(double padding) => _buttonPadding.pt = padding;
  set buttonPl(double padding) => _buttonPadding.pl = padding;
  set buttonPb(double padding) => _buttonPadding.pb = padding;
  set buttonPr(double padding) => _buttonPadding.pr = padding;
}
