import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuTextFormField extends StatelessWidget
    with
        NikuBuildMacro,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        ApplyInputDecorationMacro,
        TextAlignMacro,
        TextDirectionMacro,
        KeyboardTypeMacro,
        TextAlignMacro,
        TextCapitalizationMacro,
        TextInputActionMacro {
  TextEditingController? controller;
  String? initialValue;
  FocusNode? focusNode;
  NikuInputDecoration? decoration;
  TextInputType? keyboardType;
  TextCapitalization? textCapitalization;
  TextInputAction? textInputAction;
  NikuTextStyle? style = NikuTextStyle();
  NikuStrutStyle? strutStyle;
  TextDirection? textDirection;
  TextAlign? textAlign;
  TextAlignVertical? textAlignVertical;
  bool? autofocus;
  bool? readOnly;
  ToolbarOptions? toolbarOptions;
  bool? showCursor;
  String? obscuringCharacter;
  bool? obscureText;
  bool? autocorrect;
  SmartDashesType? smartDashesType;
  SmartQuotesType? smartQuotesType;
  bool? enableSuggestions;
  bool? autovalidate;
  bool? maxLengthEnforced;
  MaxLengthEnforcement? maxLengthEnforcement;
  int? maxLines;
  int? minLines;
  bool? expands;
  int? maxLength;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onFieldSubmitted;
  FormFieldSetter<String>? onSaved;
  FormFieldValidator<String>? validator;
  List<TextInputFormatter>? inputFormatters;
  bool? enabled;
  double? cursorWidth;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  Brightness? keyboardAppearance;
  EdgeInsets? scrollPadding;
  bool? enableInteractiveSelection;
  TextSelectionControls? selectionControls;
  InputCounterWidgetBuilder? buildCounter;
  ScrollPhysics? scrollPhysics;
  Iterable<String>? autofillHints;
  AutovalidateMode? autovalidateMode;
  ScrollController? scrollController;
  String? restorationId;
  bool? enableIMEPersonalizedLearning;

  NikuTextFormField(
    String _label, {
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textCapitalization,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign,
    this.textAlignVertical,
    this.autofocus,
    this.readOnly,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter,
    this.obscureText,
    this.autocorrect,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions,
    this.autovalidate,
    this.maxLengthEnforced,
    this.maxLengthEnforcement,
    this.maxLines,
    this.minLines,
    this.expands,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning,
  }) : super(key: key) {
    label = _label;
  }

  void get lightKeyboard => keyboardAppearance == Brightness.light;
  void get darkKeyboard => keyboardAppearance == Brightness.dark;

  bool get asPassword {
    obscureText = true;
    maxLines = 1;

    return true;
  }

  set asPassword(bool value) {
    obscureText = value;
    maxLines = 1;
  }

  set apply(NikuTextFormField? v) {
    if (v == null) return;

    if (decoration == null && v.decoration != null)
      decoration = NikuInputDecoration();
    if (style == null && v.style != null) style = NikuTextStyle();
    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    initialValue = v.initialValue ?? initialValue;
    focusNode = v.focusNode ?? focusNode;
    decoration?.apply = v.decoration;
    keyboardType = v.keyboardType ?? keyboardType;
    textCapitalization = v.textCapitalization ?? textCapitalization;
    textInputAction = v.textInputAction ?? textInputAction;
    style?.apply = v.style;
    strutStyle?.apply = v.strutStyle;
    textDirection = v.textDirection ?? textDirection;
    textAlign = v.textAlign ?? textAlign;
    textAlignVertical = v.textAlignVertical ?? textAlignVertical;
    autofocus = v.autofocus ?? autofocus;
    readOnly = v.readOnly ?? readOnly;
    toolbarOptions = v.toolbarOptions ?? toolbarOptions;
    showCursor = v.showCursor ?? showCursor;
    obscuringCharacter = v.obscuringCharacter ?? obscuringCharacter;
    obscureText = v.obscureText ?? obscureText;
    autocorrect = v.autocorrect ?? autocorrect;
    smartDashesType = v.smartDashesType ?? smartDashesType;
    smartQuotesType = v.smartQuotesType ?? smartQuotesType;
    enableSuggestions = v.enableSuggestions ?? enableSuggestions;
    autovalidate = v.autovalidate ?? autovalidate;
    maxLengthEnforced = v.maxLengthEnforced ?? maxLengthEnforced;
    maxLengthEnforcement = v.maxLengthEnforcement ?? maxLengthEnforcement;
    maxLines = v.maxLines ?? maxLines;
    minLines = v.minLines ?? minLines;
    expands = v.expands ?? expands;
    maxLength = v.maxLength ?? maxLength;
    onChanged = v.onChanged ?? onChanged;
    onTap = v.onTap ?? onTap;
    onEditingComplete = v.onEditingComplete ?? onEditingComplete;
    onFieldSubmitted = v.onFieldSubmitted ?? onFieldSubmitted;
    onSaved = v.onSaved ?? onSaved;
    validator = v.validator ?? validator;
    inputFormatters = v.inputFormatters ?? inputFormatters;
    enabled = v.enabled ?? enabled;
    cursorWidth = v.cursorWidth ?? cursorWidth;
    cursorHeight = v.cursorHeight ?? cursorHeight;
    cursorRadius = v.cursorRadius ?? cursorRadius;
    cursorColor = v.cursorColor ?? cursorColor;
    keyboardAppearance = v.keyboardAppearance ?? keyboardAppearance;
    scrollPadding = v.scrollPadding ?? scrollPadding;
    enableInteractiveSelection =
        v.enableInteractiveSelection ?? enableInteractiveSelection;
    selectionControls = v.selectionControls ?? selectionControls;
    buildCounter = v.buildCounter ?? buildCounter;
    scrollPhysics = v.scrollPhysics ?? scrollPhysics;
    autofillHints = v.autofillHints ?? autofillHints;
    restorationId = v.restorationId ?? restorationId;
    enableIMEPersonalizedLearning =
        v.enableIMEPersonalizedLearning ?? enableIMEPersonalizedLearning;
  }

  TextFormField get value => TextFormField(
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: decoration?.value,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        textInputAction: textInputAction,
        style: style?.value,
        strutStyle: strutStyle?.value,
        textDirection: textDirection,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: textAlignVertical,
        autofocus: autofocus ?? false,
        readOnly: readOnly ?? false,
        toolbarOptions: toolbarOptions,
        showCursor: showCursor,
        obscuringCharacter: obscuringCharacter = '•',
        obscureText: obscureText ?? false,
        autocorrect: autocorrect ?? true,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions ?? true,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands ?? false,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        validator: validator,
        inputFormatters: inputFormatters,
        enabled: enabled,
        cursorWidth: cursorWidth ?? 2,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        keyboardAppearance: keyboardAppearance,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        selectionControls: selectionControls,
        buildCounter: buildCounter,
        scrollPhysics: scrollPhysics,
        autofillHints: autofillHints,
        autovalidateMode: autovalidateMode,
        scrollController: scrollController,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning ?? true,
      );

  set label(String v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..labelText = v;
  }

  set prefix(Widget v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..prefix = v;
  }

  set prefixIcon(Widget v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..prefixIcon = v;
  }

  set suffix(Widget v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..suffix = v;
  }

  set suffixIcon(Widget v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..suffixIcon = v;
  }

  void useLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useLabelStyle(v);
  }

  set applyLabelStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(labelStyle: v);
  }

  void useFloatingLabelStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useFloatingLabelStyle(v);
  }

  set applyFloatingLabelStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(floatingLabelStyle: v);
  }

  void useHelperStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useHelperStyle(v);
  }

  set applyHelperStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(helperStyle: v);
  }

  void useHintStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useHintStyle(v);
  }

  set applyHintStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(hintStyle: v);
  }

  void useErrorStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useErrorStyle(v);
  }

  set applyErrorStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(errorStyle: v);
  }

  void usePrefixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..usePrefixStyle(v);
  }

  set applyPrefixStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(prefixStyle: v);
  }

  void useSuffixStyle(NikuTextStyle Function(NikuTextStyle) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useSuffixStyle(v);
  }

  set applySuffixStyle(NikuTextStyle v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(suffixStyle: v);
  }

  void usePrefixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..usePrefixIconConstraints(v);
  }

  set applyPrefixIconConstraints(NikuBoxConstraints v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(prefixIconConstraints: v);
  }

  void useSuffixIconConstraints(
      NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useSuffixIconConstraints(v);
  }

  set applySuffixIconConstraints(NikuBoxConstraints v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(suffixIconConstraints: v);
  }

  void useConstraints(NikuBoxConstraints Function(NikuBoxConstraints) v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()..useConstraints(v);
  }

  set applyConstraints(NikuBoxConstraints v) {
    if (decoration == null) decoration = NikuInputDecoration();

    decoration?.apply = NikuInputDecoration()
      ..apply = NikuInputDecoration(constraints: v);
  }
}
