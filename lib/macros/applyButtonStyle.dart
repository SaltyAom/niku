import '../objects/objects.dart';

abstract class ApplyButtonStyleMacro {
  NikuButtonStyle? style;

  void useButtonStyle(NikuButtonStyle Function(NikuButtonStyle) v) {
    if (style == null) style = NikuButtonStyle();

    style?.apply = v(style!);
  }

  set applyButtonStyle(NikuButtonStyle v) {
    if (style == null) style = NikuButtonStyle();

    style?.apply = v;
  }
}
