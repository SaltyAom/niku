import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

extension TextFormFieldInputDecorationProxy on NikuTextFormField {
  NikuInputDecoration get _decoration => decoration ??= NikuInputDecoration();

  set icon(Widget? v) => _decoration.icon = v;
  set label(Widget? v) => _decoration.label = v;
  set labelText(String? v) => _decoration.labelText = v;
  set labelStyle(NikuTextStyle? v) => _decoration.labelStyle = v;
  set floatingLabelStyle(NikuTextStyle? v) =>
      _decoration.floatingLabelStyle = v;
  set floatingLabelBehavior(FloatingLabelBehavior? v) =>
      _decoration.floatingLabelBehavior = v;

  set helperText(String? v) => _decoration.helperText = v;
  set helperStyle(NikuTextStyle? v) => _decoration.helperStyle = v;
  set helperMaxLines(int? v) => _decoration.helperMaxLines = v;
  set hintText(String? v) => _decoration.hintText = v;
  set hintStyle(NikuTextStyle? v) => _decoration.hintStyle = v;
  set hintTextDirection(TextDirection? v) => _decoration.hintTextDirection = v;
  set hintMaxLines(int? v) => _decoration.hintMaxLines = v;

  set errorText(String? v) => _decoration.errorText = v;
  set errorStyle(NikuTextStyle? v) => _decoration.errorStyle = v;
  set errorMaxLines(int? v) => _decoration.errorMaxLines = v;

  set isDense(bool? v) => _decoration.isDense = v;
  set contentPadding(NikuEdgeInsets? v) => _decoration.contentPadding = v;
  set isCollapsed(bool? v) => _decoration.isCollapsed = v;

  set prefixIcon(Widget? v) => _decoration.prefixIcon = v;
  set prefixIconConstraints(NikuBoxConstraints? v) =>
      _decoration.prefixIconConstraints = v;
  set prefix(Widget? v) => _decoration.prefix = v;
  set prefixText(String? v) => _decoration.prefixText = v;
  set prefixStyle(NikuTextStyle? v) => _decoration.prefixStyle = v;

  set suffixIcon(Widget? v) => _decoration.suffixIcon = v;
  set suffix(Widget? v) => _decoration.suffix = v;
  set suffixText(String? v) => _decoration.suffixText = v;
  set suffixStyle(NikuTextStyle? v) => _decoration.suffixStyle = v;
  set suffixIconConstraints(NikuBoxConstraints? v) =>
      _decoration.suffixIconConstraints = v;

  set counterText(String? v) => _decoration.counterText = v;
  set counter(Widget? v) => _decoration.counter = v;
  set counterStyle(NikuTextStyle? v) => _decoration.counterStyle = v;

  set filled(bool? v) => _decoration.filled = v;
  void get isFilled => _decoration.filled = true;
  set fillColor(Color? v) => _decoration.fillColor = v;

  set focusColor(Color? v) => _decoration.focusColor = v;
  set hoverColor(Color? v) => _decoration.hoverColor = v;
  set errorBorder(NikuInputBorder? v) => _decoration.errorBorder = v;
  set focusedBorder(NikuInputBorder? v) => _decoration.focusedBorder = v;

  set focusedErrorBorder(NikuInputBorder? v) =>
      _decoration.focusedErrorBorder = v;

  set disabledBorder(NikuInputBorder? v) => _decoration.disabledBorder = v;
  set enabledBorder(NikuInputBorder? v) => _decoration.enabledBorder = v;
  set border(NikuInputBorder? v) => _decoration.border = v;
  set enabled(bool? v) => _decoration.enabled = v;

  set semanticCounterText(String? v) => _decoration.semanticCounterText = v;
  set alignLabelWithHint(bool? v) => _decoration.alignLabelWithHint = v;
  set constraints(NikuBoxConstraints? v) => _decoration.constraints = v;
  set borderWidth(double width) => _decoration.borderWidth = width;
  set borderColor(Color color) => _decoration.borderColor = color;
  set borderRadius(double radius) => _decoration.borderRadius = radius;
  set bg(Color color) => _decoration.bg = color;

  double get rounded => _decoration.rounded;
  set rounded(double v) => _decoration.rounded = v;

  void useBorder({
    InputBorder? all,
    InputBorder? base,
    InputBorder? enabled,
    InputBorder? disabled,
    InputBorder? focused,
    InputBorder? focusedError,
    InputBorder? error,
  }) =>
      _decoration.useBorder(
        all: all,
        base: base,
        enabled: enabled,
        disabled: disabled,
        focused: focused,
        focusedError: focusedError,
        error: error,
      );

  void useNikuBorder({
    NikuInputBorder? all,
    NikuInputBorder? base,
    NikuInputBorder? enabled,
    NikuInputBorder? disabled,
    NikuInputBorder? focused,
    NikuInputBorder? focusedError,
    NikuInputBorder? error,
  }) =>
      _decoration.useNikuBorder(
        all: all,
        base: base,
        enabled: enabled,
        disabled: disabled,
        focused: focused,
        focusedError: focusedError,
        error: error,
      );

  void get underline => _decoration.underline;
  void get noUnderline => _decoration.noUnderline;
  void get outlined => _decoration.outlined;

  void useBorderWidth({
    double? all,
    double? base,
    double? enabled,
    double? disabled,
    double? focused,
    double? focusedError,
    double? error,
  }) =>
      _decoration.useBorderWidth(
        all: all,
        base: base,
        enabled: enabled,
        disabled: disabled,
        focused: focused,
        focusedError: focusedError,
        error: error,
      );

  set baseBorderWidth(double width) => _decoration.baseBorderWidth = width;
  set enabledBorderWidth(double width) =>
      _decoration.enabledBorderWidth = width;
  set disabledBorderWidth(double width) =>
      _decoration.disabledBorderWidth = width;
  set focusedBorderWidth(double width) =>
      _decoration.focusedBorderWidth = width;
  set focusedErrororderWidth(double width) =>
      _decoration.focusedErrorBorderWidth = width;
  set errorBorderWidth(double width) => _decoration.errorBorderWidth = width;

  void useBorderColor({
    Color? all,
    Color? base,
    Color? enabled,
    Color? disabled,
    Color? focused,
    Color? focusedError,
    Color? error,
  }) =>
      _decoration.useBorderColor(
        all: all,
        base: base,
        enabled: enabled,
        disabled: disabled,
        focused: focused,
        focusedError: focusedError,
        error: error,
      );

  set baseBorderColor(Color color) => _decoration.baseBorderColor = color;
  set enabledBorderColor(Color color) => _decoration.enabledBorderColor = color;
  set disabledBorderColor(Color color) =>
      _decoration.disabledBorderColor = color;
  set focusedBorderColor(Color color) => _decoration.focusedBorderColor = color;
  set focusedErrorBorderColor(Color color) =>
      _decoration.focusedErrorBorderColor = color;
  set errorBorderColor(Color color) => _decoration.errorBorderColor = color;

  void useLabelStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useLabelStyle(v);

  set applyLabelStyle(NikuTextStyle v) => _decoration.applyLabelStyle = v;

  void useFloatingLabelStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useFloatingLabelStyle(v);

  set applyFloatingLabelStyle(NikuTextStyle v) =>
      _decoration.applyFloatingLabelStyle = v;

  void useHelperStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useHelperStyle(v);

  set applyHelperStyle(NikuTextStyle v) => _decoration.applyHelperStyle = v;

  void useHintStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useHintStyle(v);

  set applyHintStyle(NikuTextStyle v) => _decoration.applyHintStyle = v;

  void useErrorStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useErrorStyle(v);

  set applyErrorStyle(NikuTextStyle v) => _decoration.applyErrorStyle = v;

  void usePrefixStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.usePrefixStyle(v);

  set applyPrefixStyle(NikuTextStyle v) => _decoration.applyPrefixStyle = v;

  void useSuffixStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _decoration.useSuffixStyle(v);

  set applySuffixStyle(NikuTextStyle v) => _decoration.applySuffixStyle = v;

  void usePrefixIconConstraints(
          NikuBoxConstraints Function(NikuBoxConstraints) v) =>
      _decoration.usePrefixIconConstraints(v);

  set applyPrefixIconConstraints(NikuBoxConstraints v) =>
      _decoration.applyPrefixIconConstraints = v;

  void useSuffixIconConstraints(
          NikuBoxConstraints Function(NikuBoxConstraints) v) =>
      _decoration.useSuffixIconConstraints(v);

  set applySuffixIconConstraints(NikuBoxConstraints v) =>
      _decoration.applySuffixIconConstraints = v;

  void useConstraints(NikuBoxConstraints Function(NikuBoxConstraints) v) =>
      _decoration.useConstraints(v);

  set applyConstraints(NikuBoxConstraints v) =>
      _decoration.applyConstraints = v;

  // * ContentPaddingMacro
  set pt(double padding) => _decoration.pt = padding;
  set pl(double padding) => _decoration.pl = padding;
  set pb(double padding) => _decoration.pb = padding;
  set pr(double padding) => _decoration.pr = padding;
  set px(double padding) => _decoration.px = padding;
  set py(double padding) => _decoration.py = padding;
  set p(double padding) => _decoration.p = padding;

  void get fullWidth => _decoration.fullWidth;
  void get fullHeight => _decoration.fullHeight;
  void get fullSize => _decoration.fullSize;

  set minSize(List<double> list) => _decoration.minSize = list;
  set maxSize(List<double> list) => _decoration.maxSize = list;

  set floatingLabel(FloatingLabelBehavior behavior) =>
      _decoration.floatingLabelBehavior = behavior;

  void get neverFloat => _decoration.neverFloat;
  void get alwaysFloat => _decoration.alwaysFloat;
  void get autoFloat => _decoration.autoFloat;
}
