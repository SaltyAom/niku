import '../objects/objects.dart';

abstract class ApplyTitleTextMacro {
  NikuTextStyle? titleTextStyle;

  void useStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (titleTextStyle == null) titleTextStyle = NikuTextStyle();

    titleTextStyle?.apply = v(titleTextStyle!);
  }

  set applyStyle(NikuTextStyle v) {
    if (titleTextStyle == null) titleTextStyle = NikuTextStyle();

    titleTextStyle?.apply = v;
  }
}
