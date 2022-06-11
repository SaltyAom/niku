import '../objects/edgeInsets.dart';

abstract class ContentPaddingMacro {
  NikuEdgeInsets? contentPadding;

  _initP() {
    if (contentPadding == null) contentPadding = new NikuEdgeInsets.all(20);
  }

  set pt(double padding) {
    _initP();
    contentPadding!.top = padding;
  }

  set pl(double padding) {
    _initP();
    contentPadding!.left = padding;
  }

  set pb(double padding) {
    _initP();
    contentPadding!.bottom = padding;
  }

  set pr(double padding) {
    _initP();
    contentPadding!.right = padding;
  }

  set px(double padding) {
    _initP();
    contentPadding!.left = padding;
    contentPadding!.right = padding;
  }

  set py(double padding) {
    _initP();
    contentPadding!.top = padding;
    contentPadding!.bottom = padding;
  }

  set p(double padding) {
    _initP();
    contentPadding!.top = padding;
    contentPadding!.bottom = padding;
    contentPadding!.left = padding;
    contentPadding!.right = padding;
  }
}

abstract class ContentPaddingFullMacro {
  NikuEdgeInsets? contentPadding;

  _initP() {
    if (contentPadding == null) contentPadding = new NikuEdgeInsets.all(20);
  }

  set contentPt(double padding) {
    _initP();
    contentPadding!.top = padding;
  }

  set contentPl(double padding) {
    _initP();
    contentPadding!.left = padding;
  }

  set contentPb(double padding) {
    _initP();
    contentPadding!.bottom = padding;
  }

  set contentPr(double padding) {
    _initP();
    contentPadding!.right = padding;
  }

  set contentPx(double padding) {
    _initP();
    contentPadding!.left = padding;
    contentPadding!.right = padding;
  }

  set contentPy(double padding) {
    _initP();
    contentPadding!.top = padding;
    contentPadding!.bottom = padding;
  }

  set contentP(double padding) {
    _initP();
    contentPadding!.top = padding;
    contentPadding!.bottom = padding;
    contentPadding!.left = padding;
    contentPadding!.right = padding;
  }
}
