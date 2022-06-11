import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

typedef _TextStyleBuilder = NikuTextStyle Function(NikuTextStyle);
typedef _ConstraintsBuilder = NikuBoxConstraints Function(NikuBoxConstraints);

class NikuInputDecoration
    with ContentPaddingMacro, ConstraintsMacro, FloatingLabelBehaviorMacro {
  Widget? icon;
  Widget? label;
  String? labelText;
  NikuTextStyle? labelStyle;
  NikuTextStyle? floatingLabelStyle;
  String? helperText;
  NikuTextStyle? helperStyle;
  int? helperMaxLines;
  String? hintText;
  NikuTextStyle? hintStyle;
  TextDirection? hintTextDirection;
  int? hintMaxLines;
  String? errorText;
  NikuTextStyle? errorStyle;
  int? errorMaxLines;
  FloatingLabelBehavior? floatingLabelBehavior;
  bool? isDense;
  NikuEdgeInsets? contentPadding;
  bool? isCollapsed;
  Widget? prefixIcon;
  NikuBoxConstraints? prefixIconConstraints;
  Widget? prefix;
  String? prefixText;
  NikuTextStyle? prefixStyle;
  Widget? suffixIcon;
  Widget? suffix;
  String? suffixText;
  NikuTextStyle? suffixStyle;
  NikuBoxConstraints? suffixIconConstraints;
  String? counterText;
  Widget? counter;
  NikuTextStyle? counterStyle;
  bool? filled;
  Color? fillColor;
  Color? focusColor;
  Color? hoverColor;
  NikuInputBorder? errorBorder;
  NikuInputBorder? focusedBorder;
  NikuInputBorder? focusedErrorBorder;
  NikuInputBorder? disabledBorder;
  NikuInputBorder? enabledBorder;
  NikuInputBorder? baseBorder;
  bool? enabled;
  String? semanticCounterText;
  bool? alignLabelWithHint;
  NikuBoxConstraints? constraints;

  NikuInputDecoration({
    this.icon,
    this.label,
    this.labelText,
    this.labelStyle,
    this.floatingLabelStyle,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.hintText,
    this.hintStyle,
    this.hintTextDirection,
    this.hintMaxLines,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.isDense,
    this.contentPadding,
    this.isCollapsed,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.suffixIcon,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.suffixIconConstraints,
    this.counterText,
    this.counter,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.baseBorder,
    this.enabled,
    this.semanticCounterText,
    this.alignLabelWithHint,
    this.constraints,
  });

  NikuInputBorder get _baseBorder => baseBorder ??= NikuInputBorder();
  NikuInputBorder get _enabledBorder => enabledBorder ??= NikuInputBorder();
  NikuInputBorder get _disabledBorder => disabledBorder ??= NikuInputBorder();
  NikuInputBorder get _focusedBorder => focusedBorder ??= NikuInputBorder();
  NikuInputBorder get _focusedErrorBorder =>
      focusedErrorBorder ??= NikuInputBorder();
  NikuInputBorder get _errorBorder => errorBorder ??= NikuInputBorder();

  void get isFilled => filled = true;

  set border(NikuInputBorder? value) {
    _baseBorder.apply = value;
    _enabledBorder.apply = value;
    _disabledBorder.apply = value;
    _focusedBorder.apply = value;
    _focusedErrorBorder.apply = value;
    _errorBorder.apply = value;
  }

  set borderWidth(double width) {
    _baseBorder.width = width;
    _enabledBorder.width = width;
    _disabledBorder.width = width;
    _focusedBorder.width = width;
    _focusedErrorBorder.width = width;
    _errorBorder.width = width;
  }

  set borderColor(Color? color) {
    _baseBorder.color = color;
    _enabledBorder.color = color;
    _disabledBorder.color = color;
    _focusedBorder.color = color;
    _focusedErrorBorder.color = color;
    _errorBorder.color = color;
  }

  set bg(Color color) {
    filled = true;
    fillColor = color;
  }

  set borderRadius(double radius) {
    _baseBorder.radius = radius;
    _enabledBorder.radius = radius;
    _disabledBorder.radius = radius;
    _focusedBorder.radius = radius;
    _focusedErrorBorder.radius = radius;
    _errorBorder.radius = radius;
  }

  double get rounded {
    _baseBorder.radius = 99999;
    _enabledBorder.radius = 9999;
    _disabledBorder.radius = 9999;
    _focusedBorder.radius = 9999;
    _focusedErrorBorder.radius = 9999;
    _errorBorder.radius = 9999;

    return 99999;
  }

  set rounded(double v) {
    _baseBorder.radius = v;
    _enabledBorder.radius = v;
    _disabledBorder.radius = v;
    _focusedBorder.radius = v;
    _focusedErrorBorder.radius = v;
    _errorBorder.radius = v;
  }

  void useBorder({
    InputBorder? all,
    InputBorder? base,
    InputBorder? enabled,
    InputBorder? disabled,
    InputBorder? focused,
    InputBorder? focusedError,
    InputBorder? error,
  }) {
    baseBorder = all?.asNiku ?? baseBorder;
    enabledBorder = enabled?.asNiku ?? enabledBorder;
    disabledBorder = disabled?.asNiku ?? disabledBorder;
    focusedBorder = focused?.asNiku ?? focusedBorder;
    focusedErrorBorder = focusedError?.asNiku ?? focusedErrorBorder;
    errorBorder = error?.asNiku ?? errorBorder;
  }

  void useNikuBorder({
    NikuInputBorder? all,
    NikuInputBorder? base,
    NikuInputBorder? enabled,
    NikuInputBorder? disabled,
    NikuInputBorder? focused,
    NikuInputBorder? focusedError,
    NikuInputBorder? error,
  }) {
    baseBorder = all ?? baseBorder!;
    enabledBorder = enabled ?? enabledBorder!;
    disabledBorder = disabled ?? disabledBorder!;
    focusedBorder = focused ?? focusedBorder!;
    focusedErrorBorder = focusedError ?? focusedErrorBorder!;
    errorBorder = error ?? errorBorder!;
  }

  void get underline {
    _baseBorder.type = NikuInputBorderType.Underline;
    _enabledBorder.type = NikuInputBorderType.Underline;
    _disabledBorder.type = NikuInputBorderType.Underline;
    _focusedBorder.type = NikuInputBorderType.Underline;
    _focusedErrorBorder.type = NikuInputBorderType.Underline;
    _errorBorder.type = NikuInputBorderType.Underline;
  }

  void get noUnderline {
    borderWidth = 0;
    borderColor = Colors.transparent;
  }

  void get outlined {
    _baseBorder.type = NikuInputBorderType.Outlined;
    _enabledBorder.type = NikuInputBorderType.Outlined;
    _disabledBorder.type = NikuInputBorderType.Outlined;
    _focusedBorder.type = NikuInputBorderType.Outlined;
    _focusedErrorBorder.type = NikuInputBorderType.Outlined;
    _errorBorder.type = NikuInputBorderType.Outlined;
  }

  void useBorderWidth({
    double? all,
    double? base,
    double? enabled,
    double? disabled,
    double? focused,
    double? focusedError,
    double? error,
  }) {
    _baseBorder.width = all ?? baseBorder?.width;
    _enabledBorder.width = enabled ?? enabledBorder?.width;
    _disabledBorder.width = disabled ?? disabledBorder?.width;
    _focusedBorder.width = focused ?? focusedBorder?.width;
    _focusedErrorBorder.width = focusedError ?? focusedErrorBorder?.width;
    _errorBorder.width = error ?? errorBorder?.width;
  }

  set baseBorderWidth(double width) => _baseBorder.width = width;
  set enabledBorderWidth(double width) => _enabledBorder.width = width;
  set disabledBorderWidth(double width) => _disabledBorder.width = width;
  set focusedBorderWidth(double width) => _focusedBorder.width = width;
  set focusedErrorBorderWidth(double width) =>
      _focusedErrorBorder.width = width;
  set errorBorderWidth(double width) => _errorBorder.width = width;

  void useBorderColor({
    Color? all,
    Color? base,
    Color? enabled,
    Color? disabled,
    Color? focused,
    Color? focusedError,
    Color? error,
  }) {
    baseBorder!.color = all ?? baseBorder?.color;
    enabledBorder!.color = enabled ?? enabledBorder?.color;
    disabledBorder!.color = disabled ?? disabledBorder?.color;
    focusedBorder!.color = focused ?? focusedBorder?.color;
    focusedErrorBorder!.color = focusedError ?? focusedErrorBorder?.color;
    errorBorder!.color = error ?? errorBorder?.color;
  }

  set baseBorderColor(Color color) => _baseBorder.color = color;
  set enabledBorderColor(Color color) => _enabledBorder.color = color;
  set disabledBorderColor(Color color) => _disabledBorder.color = color;
  set focusedBorderColor(Color color) => _focusedBorder.color = color;
  set focusedErrorBorderColor(Color color) => _focusedErrorBorder.color = color;
  set errorBorderColor(Color color) => _errorBorder.color = color;

  NikuTextStyle get _labelStyle => labelStyle ??= NikuTextStyle();
  void useLabelStyle(_TextStyleBuilder v) => _labelStyle.apply = v(labelStyle!);
  set applyLabelStyle(NikuTextStyle v) => labelStyle?.apply = v;

  NikuTextStyle get _floatingLabelStyle =>
      floatingLabelStyle ??= NikuTextStyle();
  void useFloatingLabelStyle(_TextStyleBuilder v) =>
      _floatingLabelStyle.apply = v(floatingLabelStyle!);
  set applyFloatingLabelStyle(NikuTextStyle v) => _floatingLabelStyle.apply = v;

  get _helperStyle => helperStyle ??= NikuTextStyle();
  void useHelperStyle(_TextStyleBuilder v) =>
      _helperStyle.apply = v(helperStyle!);
  set applyHelperStyle(NikuTextStyle v) => _helperStyle.apply = v;

  get _hintStyle => hintStyle ??= NikuTextStyle();
  void useHintStyle(_TextStyleBuilder v) => _hintStyle.apply = v(hintStyle!);
  set applyHintStyle(NikuTextStyle v) => _hintStyle.apply = v;

  get _errorStyle => errorStyle ??= NikuTextStyle();
  void useErrorStyle(_TextStyleBuilder v) => _errorStyle.apply = v(errorStyle!);
  set applyErrorStyle(NikuTextStyle v) => _errorStyle.apply = v;

  get _usePrefixStyle => prefixStyle ??= NikuTextStyle();
  void usePrefixStyle(_TextStyleBuilder v) =>
      _usePrefixStyle.apply = v(prefixStyle!);
  set applyPrefixStyle(NikuTextStyle v) => _usePrefixStyle.apply = v;

  get _useSuffixStyle => suffixStyle ??= NikuTextStyle();
  void useSuffixStyle(_TextStyleBuilder v) =>
      _useSuffixStyle.apply = v(suffixStyle!);
  set applySuffixStyle(NikuTextStyle v) => _useSuffixStyle.apply = v;

  get _prefixIconConstraints => prefixIconConstraints ??= NikuBoxConstraints();
  void usePrefixIconConstraints(_ConstraintsBuilder v) =>
      _prefixIconConstraints.apply = v(prefixIconConstraints!);
  set applyPrefixIconConstraints(NikuBoxConstraints v) =>
      _prefixIconConstraints?.apply = v;

  get _suffixIconConstraints => suffixIconConstraints ??= NikuBoxConstraints();
  void useSuffixIconConstraints(_ConstraintsBuilder v) =>
      _suffixIconConstraints.apply = v(suffixIconConstraints!);
  set applySuffixIconConstraints(NikuBoxConstraints v) =>
      _suffixIconConstraints?.apply = v;

  get _constraints => constraints ??= NikuBoxConstraints();
  void useConstraints(_ConstraintsBuilder v) =>
      _constraints.apply = v(constraints!);
  set applyConstraints(NikuBoxConstraints v) => _constraints?.apply = v;

  set apply(NikuInputDecoration? v) {
    if (v == null) return;

    if (labelStyle == null && v.labelStyle != null)
      labelStyle = NikuTextStyle();
    if (floatingLabelStyle == null && v.floatingLabelStyle != null)
      floatingLabelStyle = NikuTextStyle();
    if (helperStyle == null && v.helperStyle != null)
      helperStyle = NikuTextStyle();
    if (hintStyle == null && v.hintStyle != null) hintStyle = NikuTextStyle();
    if (errorStyle == null && v.errorStyle != null)
      errorStyle = NikuTextStyle();
    if (prefixIconConstraints == null && v.prefixIconConstraints != null)
      prefixIconConstraints = NikuBoxConstraints();
    if (prefixStyle == null && v.prefixStyle != null)
      prefixStyle = NikuTextStyle();
    if (suffixIconConstraints == null && v.suffixIconConstraints != null)
      suffixIconConstraints = NikuBoxConstraints();
    if (suffixStyle == null && v.suffixStyle != null)
      suffixStyle = NikuTextStyle();
    if (counterStyle == null && v.counterStyle != null)
      counterStyle = NikuTextStyle();
    if (constraints == null && v.constraints != null)
      constraints = NikuBoxConstraints();

    icon = v.icon ?? icon;
    label = v.label ?? label;
    labelText = v.labelText ?? labelText;
    labelStyle?.apply = v.labelStyle;
    floatingLabelStyle?.apply = v.floatingLabelStyle ?? floatingLabelStyle;
    helperText = v.helperText ?? helperText;
    helperStyle?.apply = v.helperStyle ?? helperStyle;
    helperMaxLines = v.helperMaxLines ?? helperMaxLines;
    hintText = v.hintText ?? hintText;
    hintStyle?.apply = v.hintStyle ?? hintStyle;
    hintTextDirection = v.hintTextDirection ?? hintTextDirection;
    hintMaxLines = v.hintMaxLines ?? hintMaxLines;
    errorText = v.errorText ?? errorText;
    errorStyle?.apply = v.errorStyle ?? errorStyle;
    errorMaxLines = v.errorMaxLines ?? errorMaxLines;
    floatingLabelBehavior = v.floatingLabelBehavior ?? floatingLabelBehavior;
    isDense = v.isDense ?? isDense;
    contentPadding?.apply = v.contentPadding ?? contentPadding;
    isCollapsed = v.isCollapsed ?? isCollapsed;
    prefixIcon = v.prefixIcon ?? prefixIcon;
    prefixIconConstraints?.apply =
        v.prefixIconConstraints ?? prefixIconConstraints;
    prefix = v.prefix ?? prefix;
    prefixText = v.prefixText ?? prefixText;
    prefixStyle?.apply = v.prefixStyle ?? prefixStyle;
    suffixIcon = v.suffixIcon ?? suffixIcon;
    suffix = v.suffix ?? suffix;
    suffixText = v.suffixText ?? suffixText;
    suffixStyle?.apply = v.suffixStyle ?? suffixStyle;
    suffixIconConstraints?.apply =
        v.suffixIconConstraints ?? suffixIconConstraints;
    counterText = v.counterText ?? counterText;
    counter = v.counter ?? counter;
    counterStyle?.apply = v.counterStyle ?? counterStyle;
    filled = v.filled ?? filled;
    fillColor = v.fillColor ?? fillColor;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    errorBorder = v.errorBorder ?? errorBorder;
    focusedBorder = v.focusedBorder ?? focusedBorder;
    focusedErrorBorder = v.focusedErrorBorder ?? focusedErrorBorder;
    disabledBorder = v.disabledBorder ?? disabledBorder;
    enabledBorder = v.enabledBorder ?? enabledBorder;
    baseBorder = v.baseBorder ?? baseBorder;
    enabled = v.enabled ?? enabled;
    semanticCounterText = v.semanticCounterText ?? semanticCounterText;
    alignLabelWithHint = v.alignLabelWithHint ?? alignLabelWithHint;
    constraints?.apply = v.constraints ?? constraints;
  }

  NikuInputDecoration get copy => NikuInputDecoration(
        icon: icon,
        label: label,
        labelText: labelText,
        labelStyle: labelStyle,
        floatingLabelStyle: floatingLabelStyle,
        helperText: helperText,
        helperStyle: helperStyle,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hintStyle: hintStyle,
        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        errorText: errorText,
        errorStyle: errorStyle,
        errorMaxLines: errorMaxLines,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding,
        isCollapsed: isCollapsed,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle,
        suffixIconConstraints: suffixIconConstraints,
        counterText: counterText,
        counter: counter,
        counterStyle: counterStyle,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        baseBorder: baseBorder,
        enabled: enabled,
        semanticCounterText: semanticCounterText,
        alignLabelWithHint: alignLabelWithHint,
        constraints: constraints,
      );

  InputDecoration get value => InputDecoration(
        icon: icon,
        label: label,
        labelText: labelText,
        labelStyle: labelStyle?.value,
        floatingLabelStyle: floatingLabelStyle?.value,
        helperText: helperText,
        helperStyle: helperStyle?.value,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hintStyle: hintStyle?.value,
        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        errorText: errorText,
        errorStyle: errorStyle?.value,
        errorMaxLines: errorMaxLines,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding?.value,
        isCollapsed: isCollapsed ?? false,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints?.value,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle?.value,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle?.value,
        suffixIconConstraints: suffixIconConstraints?.value,
        counterText: counterText,
        counter: counter,
        counterStyle: counterStyle?.value,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder != null
            ? (errorBorder!.type == NikuInputBorderType.Outlined
                ? errorBorder!.outlined
                : errorBorder!.value)
            : null,
        focusedBorder: focusedBorder != null
            ? (focusedBorder!.type == NikuInputBorderType.Outlined
                ? focusedBorder!.outlined
                : focusedBorder!.value)
            : null,
        focusedErrorBorder: focusedErrorBorder != null
            ? (focusedErrorBorder!.type == NikuInputBorderType.Outlined
                ? focusedErrorBorder!.outlined
                : focusedErrorBorder!.value)
            : null,
        disabledBorder: disabledBorder != null
            ? (disabledBorder!.type == NikuInputBorderType.Outlined
                ? disabledBorder!.outlined
                : disabledBorder!.value)
            : null,
        enabledBorder: enabledBorder != null
            ? (enabledBorder!.type == NikuInputBorderType.Outlined
                ? enabledBorder!.outlined
                : enabledBorder!.value)
            : null,
        border: baseBorder != null
            ? (baseBorder!.type == NikuInputBorderType.Outlined
                ? baseBorder!.outlined
                : baseBorder!.value)
            : null,
        enabled: enabled ?? true,
        semanticCounterText: semanticCounterText,
        alignLabelWithHint: alignLabelWithHint,
        constraints: constraints?.value,
      );
}

extension TransformNikuInputDecoration on InputDecoration {
  NikuInputDecoration get niku {
    return NikuInputDecoration(
      icon: icon,
      label: label,
      labelText: labelText,
      labelStyle: labelStyle?.asNiku,
      floatingLabelStyle: floatingLabelStyle?.asNiku,
      helperText: helperText,
      helperStyle: helperStyle?.asNiku,
      helperMaxLines: helperMaxLines,
      hintText: hintText,
      hintStyle: hintStyle?.asNiku,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      errorText: errorText,
      errorStyle: errorStyle?.asNiku,
      errorMaxLines: errorMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      isDense: isDense,
      contentPadding: contentPadding?.asNiku,
      isCollapsed: isCollapsed,
      prefixIcon: prefixIcon,
      prefixIconConstraints: prefixIconConstraints?.asNiku,
      prefix: prefix,
      prefixText: prefixText,
      prefixStyle: prefixStyle?.asNiku,
      suffixIcon: suffixIcon,
      suffix: suffix,
      suffixText: suffixText,
      suffixStyle: suffixStyle?.asNiku,
      suffixIconConstraints: suffixIconConstraints?.asNiku,
      counterText: counterText,
      counter: counter,
      counterStyle: counterStyle?.asNiku,
      filled: filled,
      fillColor: fillColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      errorBorder: errorBorder?.asNiku,
      focusedBorder: focusedBorder?.asNiku,
      focusedErrorBorder: focusedErrorBorder?.asNiku,
      disabledBorder: disabledBorder?.asNiku,
      enabledBorder: enabledBorder?.asNiku,
      baseBorder: border?.asNiku,
      enabled: enabled,
      semanticCounterText: semanticCounterText,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints?.asNiku,
    );
  }
}
