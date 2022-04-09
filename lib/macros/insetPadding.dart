import '../objects/edgeInsets.dart';

abstract class InsetPaddingMacro {
  NikuEdgeInsets? insetPadding;

  NikuEdgeInsets get _insetPadding =>
      insetPadding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _insetPadding.p = padding;
  set px(double padding) => _insetPadding.px = padding;
  set py(double padding) => _insetPadding.py = padding;
  set pt(double padding) => _insetPadding.pt = padding;
  set pl(double padding) => _insetPadding.pl = padding;
  set pb(double padding) => _insetPadding.pb = padding;
  set pr(double padding) => _insetPadding.pr = padding;
}

abstract class InsetPaddingFullMacro {
  NikuEdgeInsets? insetPadding;

  NikuEdgeInsets get _insetPadding =>
      insetPadding ??= new NikuEdgeInsets.all(20);

  set insetP(double padding) => _insetPadding.p = padding;
  set insetPx(double padding) => _insetPadding.px = padding;
  set insetPy(double padding) => _insetPadding.py = padding;
  set insetPt(double padding) => _insetPadding.pt = padding;
  set insetPl(double padding) => _insetPadding.pl = padding;
  set insetPb(double padding) => _insetPadding.pb = padding;
  set insetPr(double padding) => _insetPadding.pr = padding;
}
