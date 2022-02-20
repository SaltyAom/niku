import '../objects/edgeInsets.dart';

abstract class ContentPaddingMacro {
  NikuEdgeInsets? contentPadding;

  _initialize(Function callback) {
    if (contentPadding == null) contentPadding = new NikuEdgeInsets.all(20);

    print(contentPadding?.value);

    callback();
  }

  set pt(double padding) => _initialize(() => contentPadding!.top = padding);
  set pl(double padding) => _initialize(() => contentPadding!.left = padding);
  set pb(double padding) => _initialize(() => contentPadding!.bottom = padding);
  set pr(double padding) => _initialize(() => contentPadding!.right = padding);

  set px(double padding) {
    _initialize(() {
      contentPadding!.left = padding;
      contentPadding!.right = padding;
    });
  }

  set py(double padding) {
    _initialize(() {
      contentPadding!.top = padding;
      contentPadding!.bottom = padding;
    });
  }

  set p(double padding) {
    _initialize(() {
      contentPadding!.top = padding;
      contentPadding!.bottom = padding;
      contentPadding!.left = padding;
      contentPadding!.right = padding;
    });
  }
}

abstract class ContentPaddingFullMacro {
  NikuEdgeInsets? contentPadding;

  _initialize(Function callback) {
    if (contentPadding == null) contentPadding = new NikuEdgeInsets.all(20);

    print(contentPadding?.value);

    callback();
  }

  set contentPt(double padding) =>
      _initialize(() => contentPadding!.top = padding);
  set contentPl(double padding) =>
      _initialize(() => contentPadding!.left = padding);
  set contentPb(double padding) =>
      _initialize(() => contentPadding!.bottom = padding);
  set contentPr(double padding) =>
      _initialize(() => contentPadding!.right = padding);

  set contentPx(double padding) {
    _initialize(() {
      contentPadding!.left = padding;
      contentPadding!.right = padding;
    });
  }

  set contentPy(double padding) {
    _initialize(() {
      contentPadding!.top = padding;
      contentPadding!.bottom = padding;
    });
  }

  set contentP(double padding) {
    _initialize(() {
      contentPadding!.top = padding;
      contentPadding!.bottom = padding;
      contentPadding!.left = padding;
      contentPadding!.right = padding;
    });
  }
}
