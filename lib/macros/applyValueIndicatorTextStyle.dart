import '../objects/objects.dart';

abstract class ApplyValueIndicatorTextStyleMacro {
  NikuTextStyle? valueIndicatorTextStyle;

  void useTextStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    valueIndicatorTextStyle?.apply = v(valueIndicatorTextStyle!);
  }

  set applyTextStyle(NikuTextStyle v) {
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    valueIndicatorTextStyle?.apply = v;
  }

  void useValueIndicatorTextStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    valueIndicatorTextStyle?.apply = v(valueIndicatorTextStyle!);
  }

  set applyValueIndicatorTextStyle(NikuTextStyle v) {
    if (valueIndicatorTextStyle == null)
      valueIndicatorTextStyle = NikuTextStyle();

    valueIndicatorTextStyle?.apply = v;
  }
}
