import '../objects/objects.dart';

abstract class ApplyButtonStyleMacro {
  NikuButtonStyle? style;

  NikuButtonStyle get _style => style ??= NikuButtonStyle();

  void useButtonStyle(NikuButtonStyle Function(NikuButtonStyle) v) =>
      _style.apply = v(style!);

  set applyButtonStyle(NikuButtonStyle v) => _style.apply = v;
}
