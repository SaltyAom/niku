import '../objects/objects.dart';

abstract class ApplyInputDecorationMacro {
  NikuInputDecoration? decoration;

  void useDecoration(NikuInputDecoration Function(NikuInputDecoration) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = v(decoration!);
  }
}
