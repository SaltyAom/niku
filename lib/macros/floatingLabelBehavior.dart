import 'package:flutter/material.dart';

abstract class FloatingLabelBehaviorMacro {
  FloatingLabelBehavior? floatingLabelBehavior;

  set floatingLabel(FloatingLabelBehavior behavior) =>
      floatingLabelBehavior = behavior;

  void get neverFloat => floatingLabelBehavior = FloatingLabelBehavior.never;
  void get alwaysFloat => floatingLabelBehavior = FloatingLabelBehavior.always;
  void get autoFloat => floatingLabelBehavior = FloatingLabelBehavior.auto;
}
