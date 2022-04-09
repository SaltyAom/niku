import '../objects/edgeInsets.dart';

abstract class ContentPaddingMacro {
  NikuEdgeInsets? contentPadding;

  NikuEdgeInsets get _contentPadding =>
      contentPadding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _contentPadding.p = padding;
  set px(double padding) => _contentPadding.px = padding;
  set py(double padding) => _contentPadding.py = padding;
  set pt(double padding) => _contentPadding.pt = padding;
  set pl(double padding) => _contentPadding.pl = padding;
  set pb(double padding) => _contentPadding.pb = padding;
  set pr(double padding) => _contentPadding.pr = padding;
}

abstract class ContentPaddingFullMacro {
  NikuEdgeInsets? contentPadding;

  NikuEdgeInsets get _contentPadding =>
      contentPadding ??= new NikuEdgeInsets.all(20);

  set contentP(double padding) => _contentPadding.p = padding;
  set contentPx(double padding) => _contentPadding.px = padding;
  set contentPy(double padding) => _contentPadding.py = padding;
  set contentPt(double padding) => _contentPadding.pt = padding;
  set contentPl(double padding) => _contentPadding.pl = padding;
  set contentPb(double padding) => _contentPadding.pb = padding;
  set contentPr(double padding) => _contentPadding.pr = padding;
}
