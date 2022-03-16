import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuCheckbox extends StatelessWidget
    with NikuBuildMacro<NikuCheckbox>, UseQueryMacro<NikuCheckbox> {
  bool? value;
  ValueChanged<bool?>? onChanged;
  MouseCursor? mouseCursor;
  Color? activeColor;
  NikuState<Color?>? fillColorState;
  Color? checkColor;
  bool? tristate;
  MaterialTapTargetSize? materialTapTargetSize;
  VisualDensity? visualDensity;
  Color? focusColor;
  Color? hoverColor;
  NikuState<Color?>? overlayColorState;
  double? splashRadius;
  FocusNode? focusNode;
  bool? autofocus;
  OutlinedBorder? shape;
  BorderSide? side;

  NikuCheckbox(
    this.value, {
    Key? key,
    this.onChanged,
    this.mouseCursor,
    this.activeColor,
    Color? fillColor,
    this.fillColorState,
    this.checkColor,
    this.tristate,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusColor,
    this.hoverColor,
    Color? overlayColor,
    this.overlayColorState,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
    this.shape,
    this.side,
  }) : super(key: key) {
    if (fillColor != null) fillColorState = NikuState.all(fillColor);
    if (overlayColor != null) fillColorState = NikuState.all(overlayColor);
  }

  set apply(NikuCheckbox? v) {
    if (v == null) return;

    onChanged = v.onChanged ?? onChanged;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    activeColor = v.activeColor ?? activeColor;
    fillColorState = v.fillColorState ?? fillColorState;
    checkColor = v.checkColor ?? checkColor;
    tristate = v.tristate ?? tristate;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    visualDensity = v.visualDensity ?? visualDensity;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    overlayColorState = v.overlayColorState ?? overlayColorState;
    splashRadius = v.splashRadius ?? splashRadius;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    shape = v.shape ?? shape;
    side = v.side ?? side;
    $internalParent..addAll(v.$internalParent);
  }

  NikuCheckbox get copied => NikuCheckbox(
        value,
        key: key,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        activeColor: activeColor,
        fillColorState: fillColorState,
        checkColor: checkColor,
        tristate: tristate,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColorState: overlayColorState,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
        shape: shape,
        side: side,
      )..$internalParent.addAll($internalParent);

  Checkbox get widget => Checkbox(
        value: value,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        activeColor: activeColor,
        fillColor: fillColorState?.value,
        checkColor: checkColor,
        tristate: tristate ?? false,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColorState?.value,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        shape: shape,
        side: side,
      );
}
