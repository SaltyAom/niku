import '../objects/objects.dart';

abstract class ApplyContentTextMacro {
  NikuTextStyle? contentTextStyle;

  void useStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (contentTextStyle == null) contentTextStyle = NikuTextStyle();

    contentTextStyle?.apply = v(contentTextStyle!);
  }

  set applyStyle(NikuTextStyle v) {
    if (contentTextStyle == null) contentTextStyle = NikuTextStyle();

    contentTextStyle?.apply = v;
  }
}
