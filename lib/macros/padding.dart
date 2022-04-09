import '../objects/edgeInsets.dart';

abstract class PaddingMacro {
  NikuEdgeInsets? padding;

  NikuEdgeInsets get _padding => padding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _padding.p = padding;
  set px(double padding) => _padding.px = padding;
  set py(double padding) => _padding.py = padding;
  set pt(double padding) => _padding.pt = padding;
  set pl(double padding) => _padding.pl = padding;
  set pb(double padding) => _padding.pb = padding;
  set pr(double padding) => _padding.pr = padding;
}

abstract class PaddingFullMacro {
  NikuEdgeInsets? padding;

  NikuEdgeInsets get _padding => padding ??= new NikuEdgeInsets.all(20);

  set actionP(double padding) => _padding.p = padding;
  set actionPx(double padding) => _padding.px = padding;
  set actionPy(double padding) => _padding.py = padding;
  set actionPt(double padding) => _padding.pt = padding;
  set actionPl(double padding) => _padding.pl = padding;
  set actionPb(double padding) => _padding.pb = padding;
  set actionPr(double padding) => _padding.pr = padding;
}
