import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuTextFormField extends StatelessWidget
    with
        TextAlignMacro,
        TextDirectionMacro,
        KeyboardTypeMacro,
        TextAlignMacro,
        TextCapitalizationMacro,
        TextInputActionMacro {
  String? label;

  TextEditingController? controller;
  String? initialValue;
  FocusNode? focusNode;
  NikuInputDecoration? decoration;
  TextInputType? keyboardType;
  TextCapitalization? textCapitalization;
  TextInputAction? textInputAction;
  NikuTextStyle? style;
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

  NikuTextFormField({
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
  }) : super(key: key);

  void get lightKeyboard => keyboardAppearance == Brightness.light;
  void get darkKeyboard => keyboardAppearance == Brightness.dark;

  set apply(NikuTextFormField? textFormField) {
    if (textFormField == null) return;

    if (decoration == null) decoration = NikuInputDecoration();
    if (style == null) style = NikuTextStyle();
    if (strutStyle == null) strutStyle = NikuStrutStyle();

    initialValue = textFormField.initialValue ?? initialValue;
    focusNode = textFormField.focusNode ?? focusNode;
    decoration!.apply = textFormField.decoration;
    keyboardType = textFormField.keyboardType ?? keyboardType;
    textCapitalization = textFormField.textCapitalization ?? textCapitalization;
    textInputAction = textFormField.textInputAction ?? textInputAction;
    style!.apply = textFormField.style;
    strutStyle!.apply = textFormField.strutStyle;
    textDirection = textFormField.textDirection ?? textDirection;
    textAlign = textFormField.textAlign ?? textAlign;
    textAlignVertical = textFormField.textAlignVertical ?? textAlignVertical;
    autofocus = textFormField.autofocus ?? autofocus;
    readOnly = textFormField.readOnly ?? readOnly;
    toolbarOptions = textFormField.toolbarOptions ?? toolbarOptions;
    showCursor = textFormField.showCursor ?? showCursor;
    obscuringCharacter = textFormField.obscuringCharacter ?? obscuringCharacter;
    obscureText = textFormField.obscureText ?? obscureText;
    autocorrect = textFormField.autocorrect ?? autocorrect;
    smartDashesType = textFormField.smartDashesType ?? smartDashesType;
    smartQuotesType = textFormField.smartQuotesType ?? smartQuotesType;
    enableSuggestions = textFormField.enableSuggestions ?? enableSuggestions;
    autovalidate = textFormField.autovalidate ?? autovalidate;
    maxLengthEnforced = textFormField.maxLengthEnforced ?? maxLengthEnforced;
    maxLengthEnforcement =
        textFormField.maxLengthEnforcement ?? maxLengthEnforcement;
    maxLines = textFormField.maxLines ?? maxLines;
    minLines = textFormField.minLines ?? minLines;
    expands = textFormField.expands ?? expands;
    maxLength = textFormField.maxLength ?? maxLength;
    onChanged = textFormField.onChanged ?? onChanged;
    onTap = textFormField.onTap ?? onTap;
    onEditingComplete = textFormField.onEditingComplete ?? onEditingComplete;
    onFieldSubmitted = textFormField.onFieldSubmitted ?? onFieldSubmitted;
    onSaved = textFormField.onSaved ?? onSaved;
    validator = textFormField.validator ?? validator;
    inputFormatters = textFormField.inputFormatters ?? inputFormatters;
    enabled = textFormField.enabled ?? enabled;
    cursorWidth = textFormField.cursorWidth ?? cursorWidth;
    cursorHeight = textFormField.cursorHeight ?? cursorHeight;
    cursorRadius = textFormField.cursorRadius ?? cursorRadius;
    cursorColor = textFormField.cursorColor ?? cursorColor;
    keyboardAppearance = textFormField.keyboardAppearance ?? keyboardAppearance;
    scrollPadding = textFormField.scrollPadding ?? scrollPadding;
    enableInteractiveSelection =
        textFormField.enableInteractiveSelection ?? enableInteractiveSelection;
    selectionControls = textFormField.selectionControls ?? selectionControls;
    buildCounter = textFormField.buildCounter ?? buildCounter;
    scrollPhysics = textFormField.scrollPhysics ?? scrollPhysics;
    autofillHints = textFormField.autofillHints ?? autofillHints;
    restorationId = textFormField.restorationId ?? restorationId;
    enableIMEPersonalizedLearning =
        textFormField.enableIMEPersonalizedLearning ??
            enableIMEPersonalizedLearning;
  }

  build(context) {
    return TextFormField(
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
  }
}
