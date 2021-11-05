import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

class NikuInputDecoration with ContentPaddingMacro, FloatingLabelBehaviorMacro {
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
  NikuInputBorder? border;
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
    this.border,
    this.enabled,
    this.semanticCounterText,
    this.alignLabelWithHint,
    this.constraints,
  });

  _initializeAllBorder() {
    if (border == null) border = NikuInputBorder();
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    if (errorBorder == null) errorBorder = NikuInputBorder();
  }

  set allBorder(NikuInputBorder? value) {
    _initializeAllBorder();

    border!.apply = value;
    enabledBorder!.apply = value;
    disabledBorder!.apply = value;
    focusedBorder!.apply = value;
    focusedErrorBorder!.apply = value;
    errorBorder!.apply = value;
  }

  set allBorderWidth(double? width) {
    _initializeAllBorder();

    border!.width = width;
    enabledBorder!.width = width;
    disabledBorder!.width = width;
    focusedBorder!.width = width;
    focusedErrorBorder!.width = width;
    errorBorder!.width = width;
  }

  set allBorderColor(Color? color) {
    _initializeAllBorder();

    border!.color = color;
    enabledBorder!.color = color;
    disabledBorder!.color = color;
    focusedBorder!.color = color;
    focusedErrorBorder!.color = color;
    errorBorder!.color = color;
  }

  set borderRadius(double? radius) {
    _initializeAllBorder();

    border!.radius = radius;
    enabledBorder!.radius = radius;
    disabledBorder!.radius = radius;
    focusedBorder!.radius = radius;
    focusedErrorBorder!.radius = radius;
    errorBorder!.radius = radius;
  }

  void get underline {
    _initializeAllBorder();

    border!.type = NikuInputBorderType.Underline;
    enabledBorder!.type = NikuInputBorderType.Underline;
    disabledBorder!.type = NikuInputBorderType.Underline;
    focusedBorder!.type = NikuInputBorderType.Underline;
    focusedErrorBorder!.type = NikuInputBorderType.Underline;
    errorBorder!.type = NikuInputBorderType.Underline;
  }

  void get outlined {
    _initializeAllBorder();

    border!.type = NikuInputBorderType.Outlined;
    enabledBorder!.type = NikuInputBorderType.Outlined;
    disabledBorder!.type = NikuInputBorderType.Outlined;
    focusedBorder!.type = NikuInputBorderType.Outlined;
    focusedErrorBorder!.type = NikuInputBorderType.Outlined;
    errorBorder!.type = NikuInputBorderType.Outlined;
  }

  set borderWidth(double width) {
    if (border == null) border = NikuInputBorder();
    border?.width = width;
  }

  set enabledBorderWidth(double width) {
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    enabledBorder?.width = width;
  }

  set disabledBorderWidth(double width) {
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    disabledBorder?.width = width;
  }

  set focusedBorderWidth(double width) {
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    focusedBorder?.width = width;
  }

  set focusedErrororderWidth(double width) {
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    focusedErrorBorder?.width = width;
  }

  set errorBorderWidth(double width) {
    if (errorBorder == null) errorBorder = NikuInputBorder();
    errorBorder?.width = width;
  }

  set borderColor(Color color) {
    if (border == null) border = NikuInputBorder();
    border?.color = color;
  }

  set enabledBorderColor(Color color) {
    if (enabledBorder == null) enabledBorder = NikuInputBorder();
    enabledBorder?.color = color;
  }

  set disabledBorderColor(Color color) {
    if (disabledBorder == null) disabledBorder = NikuInputBorder();
    disabledBorder?.color = color;
  }

  set focusedBorderColor(Color color) {
    if (focusedBorder == null) focusedBorder = NikuInputBorder();
    focusedBorder?.color = color;
  }

  set focusedErrororderColor(Color color) {
    if (focusedErrorBorder == null) focusedErrorBorder = NikuInputBorder();
    focusedErrorBorder?.color = color;
  }

  set errorBorderColor(Color color) {
    if (errorBorder == null) errorBorder = NikuInputBorder();
    errorBorder?.color = color;
  }

  set apply(NikuInputDecoration? inputDecoration) {
    if (inputDecoration == null) return;

    if (labelStyle == null) labelStyle = NikuTextStyle();
    if (floatingLabelStyle == null) floatingLabelStyle = NikuTextStyle();
    if (helperStyle == null) helperStyle = NikuTextStyle();
    if (hintStyle == null) hintStyle = NikuTextStyle();
    if (errorStyle == null) errorStyle = NikuTextStyle();
    if (prefixIconConstraints == null)
      prefixIconConstraints = NikuBoxConstraints();
    if (prefixStyle == null) prefixStyle = NikuTextStyle();
    if (suffixIconConstraints == null)
      suffixIconConstraints = NikuBoxConstraints();
    if (suffixStyle == null) suffixStyle = NikuTextStyle();
    if (counterStyle == null) counterStyle = NikuTextStyle();
    if (constraints == null) constraints = NikuBoxConstraints();

    icon = inputDecoration.icon ?? icon;
    label = inputDecoration.label ?? label;
    labelText = inputDecoration.labelText ?? labelText;
    labelStyle!.apply = inputDecoration.labelStyle;
    floatingLabelStyle!.apply = inputDecoration.floatingLabelStyle;
    helperText = inputDecoration.helperText ?? helperText;
    helperStyle!.apply = inputDecoration.helperStyle;
    helperMaxLines = inputDecoration.helperMaxLines ?? helperMaxLines;
    hintText = inputDecoration.hintText ?? hintText;
    hintStyle!.apply = inputDecoration.hintStyle;
    hintTextDirection = inputDecoration.hintTextDirection ?? hintTextDirection;
    hintMaxLines = inputDecoration.hintMaxLines ?? hintMaxLines;
    errorText = inputDecoration.errorText ?? errorText;
    errorStyle!.apply = inputDecoration.errorStyle;
    errorMaxLines = inputDecoration.errorMaxLines ?? errorMaxLines;
    floatingLabelBehavior =
        inputDecoration.floatingLabelBehavior ?? floatingLabelBehavior;
    isDense = inputDecoration.isDense ?? isDense;
    contentPadding = inputDecoration.contentPadding ?? contentPadding;
    isCollapsed = inputDecoration.isCollapsed ?? isCollapsed;
    prefixIcon = inputDecoration.prefixIcon ?? prefixIcon;
    prefixIconConstraints!.apply = inputDecoration.prefixIconConstraints;
    prefix = inputDecoration.prefix ?? prefix;
    prefixText = inputDecoration.prefixText ?? prefixText;
    prefixStyle!.apply = inputDecoration.prefixStyle;
    suffixIcon = inputDecoration.suffixIcon ?? suffixIcon;
    suffix = inputDecoration.suffix ?? suffix;
    suffixText = inputDecoration.suffixText ?? suffixText;
    suffixStyle!.apply = inputDecoration.suffixStyle;
    suffixIconConstraints!.apply = inputDecoration.suffixIconConstraints;
    counterText = inputDecoration.counterText ?? counterText;
    counter = inputDecoration.counter ?? counter;
    counterStyle!.apply = inputDecoration.counterStyle;
    filled = inputDecoration.filled ?? filled;
    fillColor = inputDecoration.fillColor ?? fillColor;
    focusColor = inputDecoration.focusColor ?? focusColor;
    hoverColor = inputDecoration.hoverColor ?? hoverColor;
    errorBorder = inputDecoration.errorBorder ?? errorBorder;
    focusedBorder = inputDecoration.focusedBorder ?? focusedBorder;
    focusedErrorBorder =
        inputDecoration.focusedErrorBorder ?? focusedErrorBorder;
    disabledBorder = inputDecoration.disabledBorder ?? disabledBorder;
    enabledBorder = inputDecoration.enabledBorder ?? enabledBorder;
    border = inputDecoration.border ?? border;
    enabled = inputDecoration.enabled ?? enabled;
    semanticCounterText =
        inputDecoration.semanticCounterText ?? semanticCounterText;
    alignLabelWithHint =
        inputDecoration.alignLabelWithHint ?? alignLabelWithHint;
    constraints!.apply = inputDecoration.constraints;
  }

  get value => InputDecoration(
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
        border: border != null
            ? (border!.type == NikuInputBorderType.Outlined
                ? border!.outlined
                : border!.value)
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
      labelStyle: labelStyle?.niku,
      floatingLabelStyle: floatingLabelStyle?.niku,
      helperText: helperText,
      helperStyle: helperStyle?.niku,
      helperMaxLines: helperMaxLines,
      hintText: hintText,
      hintStyle: hintStyle?.niku,
      hintTextDirection: hintTextDirection,
      hintMaxLines: hintMaxLines,
      errorText: errorText,
      errorStyle: errorStyle?.niku,
      errorMaxLines: errorMaxLines,
      floatingLabelBehavior: floatingLabelBehavior,
      isDense: isDense,
      contentPadding: contentPadding?.niku,
      isCollapsed: isCollapsed,
      prefixIcon: prefixIcon,
      prefixIconConstraints: prefixIconConstraints?.niku,
      prefix: prefix,
      prefixText: prefixText,
      prefixStyle: prefixStyle?.niku,
      suffixIcon: suffixIcon,
      suffix: suffix,
      suffixText: suffixText,
      suffixStyle: suffixStyle?.niku,
      suffixIconConstraints: suffixIconConstraints?.niku,
      counterText: counterText,
      counter: counter,
      counterStyle: counterStyle?.niku,
      filled: filled,
      fillColor: fillColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      errorBorder: errorBorder?.niku,
      focusedBorder: focusedBorder?.niku,
      focusedErrorBorder: focusedErrorBorder?.niku,
      disabledBorder: disabledBorder?.niku,
      enabledBorder: enabledBorder?.niku,
      border: border?.niku,
      enabled: enabled,
      semanticCounterText: semanticCounterText,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints?.niku,
    );
  }
}
