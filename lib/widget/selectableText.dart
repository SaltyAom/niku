import 'dart:ui' as ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuSelectableText extends StatelessWidget
    with
        NikuBuildMacro,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        MapTextStyleMacro,
        TextAlignMacro,
        TextDirectionMacro,
        TextBaselineMacro {
  String? text;

  NikuTextStyle? textStyle;
  NikuStrutStyle? strutStyle;
  TextAlign? textAlign;
  TextDirection? textDirection;
  double? textScaleFactor;
  bool? autofocus;
  int? minLines;
  int? maxLines;
  bool? showCursor;
  double? cursorWidth;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  ui.BoxHeightStyle? selectionHeightStyle;
  ui.BoxWidthStyle? selectionWidthStyle;
  bool? enableInteractiveSelection;
  TextSelectionControls? selectionControls;
  DragStartBehavior? dragStartBehavior;
  ToolbarOptions? toolbarOptions;
  GestureTapCallback? onTap;
  ScrollPhysics? scrollPhysics;
  TextHeightBehavior? textHeightBehavior;
  TextWidthBasis? textWidthBasis;
  SelectionChangedCallback? onSelectionChanged;

  NikuSelectableText(
    this.text, {
    Key? key,
    NikuTextStyle? style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.textScaleFactor,
    this.autofocus,
    this.minLines,
    this.maxLines,
    this.showCursor,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle,
    this.selectionWidthStyle,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.dragStartBehavior,
    this.toolbarOptions,
    this.onTap,
    this.scrollPhysics,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.onSelectionChanged,
  }) : super(key: key) {
    textStyle = style;
  }

  bool? get selectionEnabled => enableInteractiveSelection;

  set apply(NikuSelectableText? v) {
    if (v == null) return;

    if (style == null && v.style != null) textStyle = NikuTextStyle();
    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    textStyle?.apply = v.style;
    strutStyle?.apply = v.strutStyle;
    textAlign = v.textAlign ?? textAlign;
    textDirection = v.textDirection ?? textDirection;
    textScaleFactor = v.textScaleFactor ?? textScaleFactor;
    autofocus = v.autofocus ?? autofocus;
    minLines = v.minLines ?? minLines;
    maxLines = v.maxLines ?? maxLines;
    showCursor = showCursor ?? showCursor;
    cursorWidth = cursorWidth ?? cursorWidth;
    cursorHeight = cursorHeight ?? cursorHeight;
    cursorRadius = cursorRadius ?? cursorRadius;
    cursorColor = cursorColor ?? cursorColor;
    selectionHeightStyle = selectionHeightStyle ?? selectionHeightStyle;
    selectionWidthStyle = selectionWidthStyle ?? selectionWidthStyle;
    enableInteractiveSelection =
        enableInteractiveSelection ?? enableInteractiveSelection;
    selectionControls = selectionControls ?? selectionControls;
    dragStartBehavior = dragStartBehavior ?? dragStartBehavior;
    toolbarOptions = toolbarOptions ?? toolbarOptions;
    onTap = onTap ?? onTap;
    scrollPhysics = scrollPhysics ?? scrollPhysics;
    textWidthBasis = v.textWidthBasis ?? textWidthBasis;
    textHeightBehavior = v.textHeightBehavior ?? textHeightBehavior;
    textHeightBehavior = v.textHeightBehavior ?? textHeightBehavior;
  }

  NikuSelectableText get copied => NikuSelectableText(
        text,
        key: key,
        style: textStyle,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        autofocus: autofocus,
        minLines: minLines,
        maxLines: maxLines,
        showCursor: showCursor,
        cursorWidth: cursorWidth,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        selectionHeightStyle: selectionHeightStyle,
        selectionWidthStyle: selectionWidthStyle,
        enableInteractiveSelection: enableInteractiveSelection,
        selectionControls: selectionControls,
        dragStartBehavior: dragStartBehavior,
        toolbarOptions: toolbarOptions,
        onTap: onTap,
        scrollPhysics: scrollPhysics,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      );

  Widget get widget => SelectableText(
        this.text ?? "",
        key: key,
        style: this.style?.value,
        strutStyle: this.strutStyle?.value,
        textAlign: this.textAlign ?? TextAlign.left,
        textDirection: this.textDirection ?? TextDirection.ltr,
        textScaleFactor: this.textScaleFactor ?? 1.0,
        autofocus: autofocus ?? false,
        minLines: minLines,
        maxLines: maxLines,
        showCursor: showCursor ?? false,
        cursorWidth: cursorWidth ?? 2,
        cursorHeight: cursorHeight,
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        selectionHeightStyle: selectionHeightStyle ?? ui.BoxHeightStyle.tight,
        selectionWidthStyle: selectionWidthStyle ?? ui.BoxWidthStyle.tight,
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        selectionControls: selectionControls,
        dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        toolbarOptions: toolbarOptions,
        onTap: onTap,
        scrollPhysics: scrollPhysics,
        textWidthBasis: textWidthBasis ?? TextWidthBasis.parent,
        textHeightBehavior: textHeightBehavior,
        onSelectionChanged: onSelectionChanged,
      );
}
