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
