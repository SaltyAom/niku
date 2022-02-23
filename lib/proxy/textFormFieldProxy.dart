import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

extension TextFormFieldInputDecorationProxy on NikuTextFormField {
  _init() {
    if (decoration == null) decoration = NikuInputDecoration();
  }

  set icon(Widget? v) {
    _init();
    decoration?.icon = v;
  }

  set label(Widget? v) {
    _init();
    decoration?.label = v;
  }

  set labelText(String? v) {
    _init();
    decoration?.labelText = v;
  }

  set labelStyle(NikuTextStyle? v) {
    _init();
    decoration?.labelStyle = v;
  }

  set floatingLabelStyle(NikuTextStyle? v) {
    _init();
    decoration?.floatingLabelStyle = v;
  }

  set helperText(String? v) {
    _init();
    decoration?.helperText = v;
  }

  set helperStyle(NikuTextStyle? v) {
    _init();
    decoration?.helperStyle = v;
  }

  set helperMaxLines(int? v) {
    _init();
    decoration?.helperMaxLines = v;
  }

  set hintText(String? v) {
    _init();
    decoration?.hintText = v;
  }

  set hintStyle(NikuTextStyle? v) {
    _init();
    decoration?.hintStyle = v;
  }

  set hintTextDirection(TextDirection? v) {
    _init();
    decoration?.hintTextDirection = v;
  }

  set hintMaxLines(int? v) {
    _init();
    decoration?.hintMaxLines = v;
  }

  set errorText(String? v) {
    _init();
    decoration?.errorText = v;
  }

  set errorStyle(NikuTextStyle? v) {
    _init();
    decoration?.errorStyle = v;
  }

  set errorMaxLines(int? v) {
    _init();
    decoration?.errorMaxLines = v;
  }

  set floatingLabelBehavior(FloatingLabelBehavior? v) {
    _init();
    decoration?.floatingLabelBehavior = v;
  }

  set isDense(bool? v) {
    _init();
    decoration?.isDense = v;
  }

  set contentPadding(NikuEdgeInsets? v) {
    _init();
    decoration?.contentPadding = v;
  }

  set isCollapsed(bool? v) {
    _init();
    decoration?.isCollapsed = v;
  }

  set prefixIcon(Widget? v) {
    _init();
    decoration?.prefixIcon = v;
  }

  set prefixIconConstraints(NikuBoxConstraints? v) {
    _init();
    decoration?.prefixIconConstraints = v;
  }

  set prefix(Widget? v) {
    _init();
    decoration?.prefix = v;
  }

  set prefixText(String? v) {
    _init();
    decoration?.prefixText = v;
  }

  set prefixStyle(NikuTextStyle? v) {
    _init();
    decoration?.prefixStyle = v;
  }

  set suffixIcon(Widget? v) {
    _init();
    decoration?.suffixIcon = v;
  }

  set suffix(Widget? v) {
    _init();
    decoration?.suffix = v;
  }

  set suffixText(String? v) {
    _init();
    decoration?.suffixText = v;
  }

  set suffixStyle(NikuTextStyle? v) {
    _init();
    decoration?.suffixStyle = v;
  }

  set suffixIconConstraints(NikuBoxConstraints? v) {
    _init();
    decoration?.suffixIconConstraints = v;
  }

  set counterText(String? v) {
    _init();
    decoration?.counterText = v;
  }

  set counter(Widget? v) {
    _init();
    decoration?.counter = v;
  }

  set counterStyle(NikuTextStyle? v) {
    _init();
    decoration?.counterStyle = v;
  }

  set filled(bool? v) {
    _init();
    decoration?.filled = v;
  }

  set fillColor(Color? v) {
    _init();
    decoration?.fillColor = v;
  }

  set focusColor(Color? v) {
    _init();
    decoration?.focusColor = v;
  }

  set hoverColor(Color? v) {
    _init();
    decoration?.hoverColor = v;
  }

  set errorBorder(NikuInputBorder? v) {
    _init();
    decoration?.errorBorder = v;
  }

  set focusedBorder(NikuInputBorder? v) {
    _init();
    decoration?.focusedBorder = v;
  }

  set focusedErrorBorder(NikuInputBorder? v) {
    _init();
    decoration?.focusedErrorBorder = v;
  }

  set disabledBorder(NikuInputBorder? v) {
    _init();
    decoration?.disabledBorder = v;
  }

  set enabledBorder(NikuInputBorder? v) {
    _init();
    decoration?.enabledBorder = v;
  }

  set border(NikuInputBorder? v) {
    _init();
    decoration?.border = v;
  }

  set enabled(bool? v) {
    _init();
    decoration?.enabled = v;
  }

  set semanticCounterText(String? v) {
    _init();
    decoration?.semanticCounterText = v;
  }

  set alignLabelWithHint(bool? v) {
    _init();
    decoration?.alignLabelWithHint = v;
  }

  set constraints(NikuBoxConstraints? v) {
    _init();
    decoration?.constraints = v;
  }

  _initializeAllBorder() {
    _init();

    if (decoration?.baseBorder == null) decoration?.border = NikuInputBorder();
    if (decoration?.enabledBorder == null)
      decoration?.enabledBorder = NikuInputBorder();
    if (decoration?.disabledBorder == null)
      decoration?.disabledBorder = NikuInputBorder();
    if (decoration?.focusedErrorBorder == null)
      decoration?.focusedErrorBorder = NikuInputBorder();
    if (decoration?.focusedBorder == null)
      decoration?.focusedBorder = NikuInputBorder();
    if (decoration?.errorBorder == null)
      decoration?.errorBorder = NikuInputBorder();
  }

  set allBorder(NikuInputBorder? value) {
    _initializeAllBorder();

    decoration?.baseBorder!.apply = value;
    decoration?.enabledBorder!.apply = value;
    decoration?.disabledBorder!.apply = value;
    decoration?.focusedBorder!.apply = value;
    decoration?.focusedErrorBorder!.apply = value;
    decoration?.errorBorder!.apply = value;
  }

  set allBorderWidth(double? width) {
    _initializeAllBorder();

    decoration?.baseBorder!.width = width;
    decoration?.enabledBorder!.width = width;
    decoration?.disabledBorder!.width = width;
    decoration?.focusedBorder!.width = width;
    decoration?.focusedErrorBorder!.width = width;
    decoration?.errorBorder!.width = width;
  }

  set borderColor(Color? color) {
    _initializeAllBorder();

    decoration?.baseBorder!.color = color;
    decoration?.enabledBorder!.color = color;
    decoration?.disabledBorder!.color = color;
    decoration?.focusedBorder!.color = color;
    decoration?.focusedErrorBorder!.color = color;
    decoration?.errorBorder!.color = color;
  }

  set borderRadius(double? radius) {
    _initializeAllBorder();

    decoration?.baseBorder!.radius = radius;
    decoration?.enabledBorder!.radius = radius;
    decoration?.disabledBorder!.radius = radius;
    decoration?.focusedBorder!.radius = radius;
    decoration?.focusedErrorBorder!.radius = radius;
    decoration?.errorBorder!.radius = radius;
  }

  set bg(Color color) {
    _init();
    decoration?.fillColor = color;
    decoration?.filled = true;
  }

  double get rounded {
    _initializeAllBorder();

    decoration?.baseBorder!.radius = 99999;
    decoration?.enabledBorder!.radius = 9999;
    decoration?.disabledBorder!.radius = 9999;
    decoration?.focusedBorder!.radius = 9999;
    decoration?.focusedErrorBorder!.radius = 9999;
    decoration?.errorBorder!.radius = 9999;

    return 99999;
  }

  set rounded(double v) {
    _initializeAllBorder();

    decoration?.baseBorder!.radius = v;
    decoration?.enabledBorder!.radius = v;
    decoration?.disabledBorder!.radius = v;
    decoration?.focusedBorder!.radius = v;
    decoration?.focusedErrorBorder!.radius = v;
    decoration?.errorBorder!.radius = v;
  }

  void useBorder(
    InputBorder? all,
    InputBorder? base,
    InputBorder? enabled,
    InputBorder? disabled,
    InputBorder? focused,
    InputBorder? focusedError,
    InputBorder? error,
  ) {
    _initializeAllBorder();

    decoration?.baseBorder = all?.asNiku ?? decoration?.baseBorder;
    decoration?.enabledBorder = enabled?.asNiku ?? decoration?.enabledBorder;
    decoration?.disabledBorder = disabled?.asNiku ?? decoration?.disabledBorder;
    decoration?.focusedBorder = focused?.asNiku ?? decoration?.focusedBorder;
    decoration?.focusedErrorBorder =
        focusedError?.asNiku ?? decoration?.focusedErrorBorder;
    decoration?.errorBorder = error?.asNiku ?? decoration?.errorBorder;
  }

  void useNikuBorder(
    NikuInputBorder? all,
    NikuInputBorder? base,
    NikuInputBorder? enabled,
    NikuInputBorder? disabled,
    NikuInputBorder? focused,
    NikuInputBorder? focusedError,
    NikuInputBorder? error,
  ) {
    _initializeAllBorder();

    decoration?.baseBorder = all ?? decoration?.baseBorder!;
    decoration?.enabledBorder = enabled ?? decoration?.enabledBorder!;
    decoration?.disabledBorder = disabled ?? decoration?.disabledBorder!;
    decoration?.focusedBorder = focused ?? decoration?.focusedBorder!;
    decoration?.focusedErrorBorder =
        focusedError ?? decoration?.focusedErrorBorder!;
    decoration?.errorBorder = error ?? decoration?.errorBorder!;
  }

  void get underline {
    _initializeAllBorder();

    decoration?.baseBorder!.type = NikuInputBorderType.Underline;
    decoration?.enabledBorder!.type = NikuInputBorderType.Underline;
    decoration?.disabledBorder!.type = NikuInputBorderType.Underline;
    decoration?.focusedBorder!.type = NikuInputBorderType.Underline;
    decoration?.focusedErrorBorder!.type = NikuInputBorderType.Underline;
    decoration?.errorBorder!.type = NikuInputBorderType.Underline;
  }

  void get outlined {
    _initializeAllBorder();

    decoration?.baseBorder!.type = NikuInputBorderType.Outlined;
    decoration?.enabledBorder!.type = NikuInputBorderType.Outlined;
    decoration?.disabledBorder!.type = NikuInputBorderType.Outlined;
    decoration?.focusedBorder!.type = NikuInputBorderType.Outlined;
    decoration?.focusedErrorBorder!.type = NikuInputBorderType.Outlined;
    decoration?.errorBorder!.type = NikuInputBorderType.Outlined;
  }

  void useBorderWidth(
    double? all,
    double? base,
    double? enabled,
    double? disabled,
    double? focused,
    double? focusedError,
    double? error,
  ) {
    _initializeAllBorder();

    decoration?.baseBorder!.width = all ?? decoration?.baseBorder?.width;
    decoration?.enabledBorder!.width =
        enabled ?? decoration?.enabledBorder?.width;
    decoration?.disabledBorder!.width =
        disabled ?? decoration?.disabledBorder?.width;
    decoration?.focusedBorder!.width =
        focused ?? decoration?.focusedBorder?.width;
    decoration?.focusedErrorBorder!.width =
        focusedError ?? decoration?.focusedErrorBorder?.width;
    decoration?.errorBorder!.width = error ?? decoration?.errorBorder?.width;
  }

  set borderWidth(double width) {
    _init();

    if (decoration?.baseBorder == null) border = NikuInputBorder();
    decoration?.baseBorder?.width = width;
  }

  set enabledBorderWidth(double width) {
    _init();

    if (decoration?.enabledBorder == null) enabledBorder = NikuInputBorder();
    decoration?.enabledBorder?.width = width;
  }

  set disabledBorderWidth(double width) {
    _init();

    if (decoration?.disabledBorder == null) disabledBorder = NikuInputBorder();
    decoration?.disabledBorder?.width = width;
  }

  set focusedBorderWidth(double width) {
    _init();

    if (decoration?.focusedBorder == null) focusedBorder = NikuInputBorder();
    decoration?.focusedBorder?.width = width;
  }

  set focusedErrororderWidth(double width) {
    _init();

    if (decoration?.focusedErrorBorder == null)
      focusedErrorBorder = NikuInputBorder();
    decoration?.focusedErrorBorder?.width = width;
  }

  set errorBorderWidth(double width) {
    _init();

    if (decoration?.errorBorder == null) errorBorder = NikuInputBorder();
    decoration?.errorBorder?.width = width;
  }

  void useBorderColor(
    Color? all,
    Color? base,
    Color? enabled,
    Color? disabled,
    Color? focused,
    Color? focusedError,
    Color? error,
  ) {
    _initializeAllBorder();

    decoration?.baseBorder!.color = all ?? decoration?.baseBorder?.color;
    decoration?.enabledBorder!.color =
        enabled ?? decoration?.enabledBorder?.color;
    decoration?.disabledBorder!.color =
        disabled ?? decoration?.disabledBorder?.color;
    decoration?.focusedBorder!.color =
        focused ?? decoration?.focusedBorder?.color;
    decoration?.focusedErrorBorder!.color =
        focusedError ?? decoration?.focusedErrorBorder?.color;
    decoration?.errorBorder!.color = error ?? decoration?.errorBorder?.color;
  }

  set baseBorderColor(Color color) {
    _init();

    if (decoration?.baseBorder == null) border = NikuInputBorder();
    decoration?.baseBorder?.color = color;
  }

  set enabledBorderColor(Color color) {
    _init();

    if (decoration?.enabledBorder == null) enabledBorder = NikuInputBorder();
    decoration?.enabledBorder?.color = color;
  }

  set disabledBorderColor(Color color) {
    _init();

    if (decoration?.disabledBorder == null) disabledBorder = NikuInputBorder();
    decoration?.disabledBorder?.color = color;
  }

  set focusedBorderColor(Color color) {
    _init();

    if (decoration?.focusedBorder == null) focusedBorder = NikuInputBorder();
    decoration?.focusedBorder?.color = color;
  }

  set focusedErrorBorderColor(Color color) {
    _init();

    if (decoration?.focusedErrorBorder == null)
      focusedErrorBorder = NikuInputBorder();
    decoration?.focusedErrorBorder?.color = color;
  }

  set errorBorderColor(Color color) {
    _init();

    if (decoration?.errorBorder == null) errorBorder = NikuInputBorder();
    decoration?.errorBorder?.color = color;
  }

  void useLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.labelStyle == null) labelStyle = NikuTextStyle();

    decoration?.labelStyle?.apply = v(decoration!.labelStyle!);
  }

  set applyLabelStyle(NikuTextStyle v) {
    if (decoration?.labelStyle == null) labelStyle = NikuTextStyle();

    decoration?.labelStyle?.apply = v;
  }

  void useFloatingLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.floatingLabelStyle == null)
      floatingLabelStyle = NikuTextStyle();

    decoration?.floatingLabelStyle?.apply = v(decoration!.floatingLabelStyle!);
  }

  set applyFloatingLabelStyle(NikuTextStyle v) {
    if (decoration?.floatingLabelStyle == null)
      floatingLabelStyle = NikuTextStyle();

    decoration?.floatingLabelStyle?.apply = v;
  }

  void useHelperStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.helperStyle == null) helperStyle = NikuTextStyle();

    decoration?.helperStyle?.apply = v(decoration!.helperStyle!);
  }

  set applyHelperStyle(NikuTextStyle v) {
    if (decoration?.helperStyle == null) helperStyle = NikuTextStyle();

    decoration?.helperStyle?.apply = v;
  }

  void useHintStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.hintStyle == null) hintStyle = NikuTextStyle();

    decoration?.hintStyle?.apply = v(decoration!.hintStyle!);
  }

  set applyHintStyle(NikuTextStyle v) {
    if (decoration?.hintStyle == null) hintStyle = NikuTextStyle();

    decoration?.hintStyle?.apply = v;
  }

  void useErrorStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.errorStyle == null) errorStyle = NikuTextStyle();

    decoration?.errorStyle?.apply = v(decoration!.errorStyle!);
  }

  set applyErrorStyle(NikuTextStyle v) {
    if (decoration?.errorStyle == null) errorStyle = NikuTextStyle();

    decoration?.errorStyle?.apply = v;
  }

  void usePrefixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.prefixStyle == null) prefixStyle = NikuTextStyle();

    decoration?.prefixStyle?.apply = v(decoration!.prefixStyle!);
  }

  set applyPrefixStyle(NikuTextStyle v) {
    if (decoration?.prefixStyle == null) prefixStyle = NikuTextStyle();

    decoration?.prefixStyle?.apply = v;
  }

  void useSuffixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration?.suffixStyle == null) suffixStyle = NikuTextStyle();

    decoration?.suffixStyle?.apply = v(decoration!.suffixStyle!);
  }

  set applySuffixStyle(NikuTextStyle v) {
    if (decoration?.suffixStyle == null) suffixStyle = NikuTextStyle();

    decoration?.suffixStyle?.apply = v;
  }

  void usePrefixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration?.prefixIconConstraints == null)
      prefixIconConstraints = NikuBoxConstraints();

    decoration?.prefixIconConstraints?.apply =
        v(decoration!.prefixIconConstraints!);
  }

  set applyPrefixIconConstraints(NikuBoxConstraints v) {
    if (decoration?.prefixIconConstraints == null)
      prefixIconConstraints = NikuBoxConstraints();

    decoration?.prefixIconConstraints?.apply = v;
  }

  void useSuffixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration?.suffixIconConstraints == null)
      suffixIconConstraints = NikuBoxConstraints();

    decoration?.suffixIconConstraints?.apply =
        v(decoration!.suffixIconConstraints!);
  }

  set applySuffixIconConstraints(NikuBoxConstraints v) {
    if (decoration?.suffixIconConstraints == null)
      suffixIconConstraints = NikuBoxConstraints();

    decoration?.suffixIconConstraints?.apply = v;
  }

  void useConstraints(NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration?.constraints == null) constraints = NikuBoxConstraints();

    decoration?.constraints?.apply = v(decoration!.constraints!);
  }

  // * ContentPaddingMacro
  _initP() {
    _init();
    if (decoration?.contentPadding == null)
      contentPadding = new NikuEdgeInsets.all(20);
  }

  set pt(double padding) {
    _initP();
    decoration?.contentPadding!.top = padding;
  }

  set pl(double padding) {
    _initP();
    decoration?.contentPadding!.left = padding;
  }

  set pb(double padding) {
    _initP();
    decoration?.contentPadding!.bottom = padding;
  }

  set pr(double padding) {
    _initP();
    decoration?.contentPadding!.right = padding;
  }

  set px(double padding) {
    _initP();
    decoration?.contentPadding!.left = padding;
    decoration?.contentPadding!.right = padding;
  }

  set py(double padding) {
    _initP();
    decoration?.contentPadding!.top = padding;
    decoration?.contentPadding!.bottom = padding;
  }

  set p(double padding) {
    _initP();
    decoration?.contentPadding!.top = padding;
    decoration?.contentPadding!.bottom = padding;
    decoration?.contentPadding!.left = padding;
    decoration?.contentPadding!.right = padding;
  }

  void get fullWidth {
    _init();
    decoration?.minWidth = double.infinity;
    decoration?.maxWidth = double.infinity;
  }

  void get fullHeight {
    _init();
    decoration?.maxHeight = double.infinity;
    decoration?.maxHeight = double.infinity;
  }

  void get fullSize {
    _init();
    decoration?.minWidth = double.infinity;
    decoration?.maxWidth = double.infinity;
  }

  set minSize(List<double> list) {
    _init();
    decoration?.minWidth = list[0];
    decoration?.minHeight = list[1];
  }

  set maxSize(List<double> list) {
    _init();
    decoration?.maxWidth = list[0];
    decoration?.maxHeight = list[1];
  }

  set floatingLabel(FloatingLabelBehavior behavior) {
    _init();
    floatingLabelBehavior = behavior;
  }

  void get neverFloat {
    _init();
    floatingLabelBehavior = FloatingLabelBehavior.never;
  }

  void get alwaysFloat {
    _init();
    floatingLabelBehavior = FloatingLabelBehavior.always;
  }

  void get autoFloat {
    _init();
    floatingLabelBehavior = FloatingLabelBehavior.auto;
  }
}
