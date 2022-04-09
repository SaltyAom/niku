import '../objects/edgeInsets.dart';

abstract class ActionPaddingMacro {
  NikuEdgeInsets? actionPadding;

  NikuEdgeInsets get _actionPadding =>
      actionPadding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _actionPadding.p = padding;
  set px(double padding) => _actionPadding.px = padding;
  set py(double padding) => _actionPadding.py = padding;
  set pt(double padding) => _actionPadding.pt = padding;
  set pl(double padding) => _actionPadding.pl = padding;
  set pb(double padding) => _actionPadding.pb = padding;
  set pr(double padding) => _actionPadding.pr = padding;
}

abstract class ActionPaddingFullMacro {
  NikuEdgeInsets? actionPadding;

  NikuEdgeInsets get _actionPadding =>
      actionPadding ??= new NikuEdgeInsets.all(20);

  set actionP(double padding) => _actionPadding.p = padding;
  set actionPx(double padding) => _actionPadding.px = padding;
  set actionPy(double padding) => _actionPadding.py = padding;
  set actionPt(double padding) => _actionPadding.pt = padding;
  set actionPl(double padding) => _actionPadding.pl = padding;
  set actionPb(double padding) => _actionPadding.pb = padding;
  set actionPr(double padding) => _actionPadding.pr = padding;
}
