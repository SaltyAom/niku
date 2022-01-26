import '../objects/objects.dart';

abstract class ApplyTextMacro {
  NikuTextStyle? style;

  void useTextStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (style == null) style = NikuTextStyle();

    style?.apply = v(style!);
  }

  set applyTextStyle(NikuTextStyle v) {
    if (style == null) style = NikuTextStyle();

    style?.apply = v;
  }
}
