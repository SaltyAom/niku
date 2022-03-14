import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuRadio<T> extends StatelessWidget
    with NikuBuildMacro<NikuRadio>, UseQueryMacro<NikuRadio> {
  NikuRadio(
    this.value, {
    this.key,
    this.groupValue,
    this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.fillColorState,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusColor,
    this.hoverColor,
    this.overlayColorState,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
    Color? fillColor,
    Color? overlayColor,
  }) : super(key: key) {
    if (fillColor != null) fillColorState = NikuState.all(fillColor);
    if (overlayColor != null) overlayColorState = NikuState.all(fillColor);
  }

  Key? key;
  T value;
  T? groupValue;
  ValueChanged<T?>? onChanged;
  MouseCursor? mouseCursor;
  bool? toggleable;
  Color? activeColor;
  NikuState<Color?>? fillColorState;
  MaterialTapTargetSize? materialTapTargetSize;
  VisualDensity? visualDensity;
  Color? focusColor;
  Color? hoverColor;
  NikuState<Color?>? overlayColorState;
  double? splashRadius;
  FocusNode? focusNode;
  bool? autofocus;

  set apply(NikuRadio? v) {
    if (v == null) return;

    value = v.value ?? value;
    groupValue = v.groupValue ?? groupValue;
    onChanged = v.onChanged ?? onChanged;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    toggleable = v.toggleable ?? toggleable;
    activeColor = v.activeColor ?? activeColor;
    fillColorState = v.fillColorState ?? fillColorState;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    visualDensity = v.visualDensity ?? visualDensity;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    overlayColorState = v.overlayColorState ?? overlayColorState;
    splashRadius = v.splashRadius ?? splashRadius;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;

    $internalParent..addAll(v.$internalParent);
  }

  NikuRadio get copied => NikuRadio<T>(
        value,
        key: key,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable,
        activeColor: activeColor,
        fillColorState: fillColorState,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColorState: overlayColorState,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
      )..$internalParent.addAll($internalParent);

  Radio get widget => Radio<T>(
        key: key,
        value: value!,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        fillColor: fillColorState?.value,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColorState?.value,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
      );
}
