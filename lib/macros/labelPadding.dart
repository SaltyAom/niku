import '../objects/edgeInsets.dart';

abstract class LabelPaddingMacro {
  NikuEdgeInsets? labelPadding;

  NikuEdgeInsets get _labelPadding =>
      labelPadding ??= new NikuEdgeInsets.all(20);

  set p(double padding) => _labelPadding.p = padding;
  set px(double padding) => _labelPadding.px = padding;
  set py(double padding) => _labelPadding.py = padding;
  set pt(double padding) => _labelPadding.pt = padding;
  set pl(double padding) => _labelPadding.pl = padding;
  set pb(double padding) => _labelPadding.pb = padding;
  set pr(double padding) => _labelPadding.pr = padding;
}

abstract class LabelPaddingFullMacro {
  NikuEdgeInsets? labelPadding;

  NikuEdgeInsets get _labelPadding =>
      labelPadding ??= new NikuEdgeInsets.all(20);

  set labelP(double padding) => _labelPadding.p = padding;
  set labelPx(double padding) => _labelPadding.px = padding;
  set labelPy(double padding) => _labelPadding.py = padding;
  set labelPt(double padding) => _labelPadding.pt = padding;
  set labelPl(double padding) => _labelPadding.pl = padding;
  set labelPb(double padding) => _labelPadding.pb = padding;
  set labelPr(double padding) => _labelPadding.pr = padding;
}
