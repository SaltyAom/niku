import '../objects/objects.dart';

abstract class ApplyButtonStyleMacro {
  NikuButtonStyle? style;

  useStyle(NikuButtonStyle Function(NikuButtonStyle) v) {
    if (style == null) style = NikuButtonStyle();

    style?.apply = v(style!);
  }
}
