import '../objects/objects.dart';

abstract class ApplyStrutStyleMacro {
  NikuStrutStyle? strutStyle;

  void useSturtStyle(NikuStrutStyle Function(NikuStrutStyle) v) {
    if (strutStyle == null) strutStyle = NikuStrutStyle();

    strutStyle?.apply = v(strutStyle!);
  }
}
