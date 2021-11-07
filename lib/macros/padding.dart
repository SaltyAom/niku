import '../objects/edgeInsets.dart';

abstract class PaddingMacro {
  NikuEdgeInsets? padding;

  _initialize(Function callback) {
    if (padding == null) padding = new NikuEdgeInsets.all(20);

    print(padding?.value);

    callback();
  }

  set pt(double p) => _initialize(() => padding!.top = p);
  set pl(double p) => _initialize(() => padding!.left = p);
  set pb(double p) => _initialize(() => padding!.bottom = p);
  set pr(double p) => _initialize(() => padding!.right = p);

  set px(double p) {
    _initialize(() {
      padding!.left = p;
      padding!.right = p;
    });
  }

  set py(double p) {
    _initialize(() {
      padding!.top = p;
      padding!.bottom = p;
    });
  }

  set p(double p) {
    _initialize(() {
      padding!.top = p;
      padding!.bottom = p;
      padding!.left = p;
      padding!.right = p;
    });
  }
}
