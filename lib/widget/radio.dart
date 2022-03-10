import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuRadio<T> extends StatelessWidget
    with NikuBuildMacro<NikuRadio>, UseQueryMacro<NikuRadio> {
  NikuRadio({
    this.key,
    this.value,
    this.groupValue,
    this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.fillColor,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
  }) : super(key: key);

  Key? key;
  T? value;
  T? groupValue;
  ValueChanged<T?>? onChanged;
  MouseCursor? mouseCursor;
  bool? toggleable;
  Color? activeColor;
  MaterialStateProperty<Color?>? fillColor;
  MaterialTapTargetSize? materialTapTargetSize;
  VisualDensity? visualDensity;
  Color? focusColor;
  Color? hoverColor;
  MaterialStateProperty<Color?>? overlayColor;
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
    fillColor = v.fillColor ?? fillColor;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    visualDensity = v.visualDensity ?? visualDensity;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    overlayColor = v.overlayColor ?? overlayColor;
    splashRadius = v.splashRadius ?? splashRadius;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;

    $internalParent..addAll(v.$internalParent);
  }

  NikuRadio get copied => NikuRadio<T>(
        key: key,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable,
        activeColor: activeColor,
        fillColor: fillColor,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
      )..$internalParent.addAll($internalParent);

  get widget => Radio<T>(
        key: key,
        value: value!,
        groupValue: groupValue,
        onChanged: onChanged,
        mouseCursor: mouseCursor,
        toggleable: toggleable ?? false,
        activeColor: activeColor,
        fillColor: fillColor,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
      );
}
