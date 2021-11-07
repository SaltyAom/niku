import '../objects/objects.dart';

abstract class ApplyTextMacro {
  NikuTextStyle? style;

  void useStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (style == null) style = NikuTextStyle();

    style?.apply = v(style!);
  }

  set applyStyle(NikuTextStyle v) {
    if (style == null) style = NikuTextStyle();

    style?.apply = v;
  }
}
