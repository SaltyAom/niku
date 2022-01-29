import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:niku/namespace.dart';

import '../macros/macros.dart';
import '../objects/state.dart';

// ignore: must_be_immutable
class NikuSwitch extends StatelessWidget
    with NikuBuildMacro, UseQueryMacro<NikuSwitch> {
  bool adaptive = false;

  bool? value;
  ValueChanged<bool>? onChanged;
  Color? activeColor;
  Color? activeTrackColor;
  Color? inactiveThumbColor;
  Color? inactiveTrackColor;
  ImageProvider? activeThumbImage;
  ImageErrorListener? onActiveThumbImageError;
  ImageProvider? inactiveThumbImage;
  ImageErrorListener? onInactiveThumbImageError;
  MaterialTapTargetSize? materialTapTargetSize;
  DragStartBehavior? dragStartBehavior;
  MouseCursor? mouseCursor;
  Color? focusColor;
  Color? hoverColor;
  double? splashRadius;
  FocusNode? focusNode;
  bool? autofocus;

  NikuState<Color?>? thumbColorState;
  NikuState<Color?>? trackColorState;
  NikuState<Color?>? overlayColorState;

  NikuSwitch({
    Key? key,
    this.thumbColorState,
    this.trackColorState,
    this.overlayColorState,
    this.value,
    this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    Color? thumbColor,
    Color? trackColor,
    this.materialTapTargetSize,
    this.dragStartBehavior,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    Color? overlayColor,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
  }) : super(key: key) {
    if (thumbColor != null) thumbColorState = NikuState.all(thumbColor);
    if (trackColor != null) trackColorState = NikuState.all(trackColor);
    if (overlayColor != null) overlayColorState = NikuState.all(overlayColor);
  }

  set thumbColor(Color? value) => thumbColorState = NikuState.all(value);
  set trackColor(Color? value) => trackColorState = NikuState.all(value);
  set overlayColor(Color? value) => overlayColorState = NikuState.all(value);

  NikuSwitch get copied => NikuSwitch(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
        thumbColorState: thumbColorState,
        trackColorState: trackColorState,
        overlayColorState: overlayColorState,
      );

  Widget get widget => adaptive
      ? Switch.adaptive(
          value: value ?? false,
          onChanged: onChanged ?? null,
          activeColor: activeColor,
          activeTrackColor: activeTrackColor,
          inactiveThumbColor: inactiveThumbColor,
          inactiveTrackColor: inactiveTrackColor,
          activeThumbImage: activeThumbImage,
          onActiveThumbImageError: onActiveThumbImageError,
          inactiveThumbImage: inactiveThumbImage,
          onInactiveThumbImageError: onInactiveThumbImageError,
          thumbColor: thumbColorState?.value,
          trackColor: trackColorState?.value,
          materialTapTargetSize: materialTapTargetSize,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          mouseCursor: mouseCursor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColorState?.value,
          splashRadius: splashRadius,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
        )
      : Switch(
          value: value ?? false,
          onChanged: onChanged ?? null,
          activeColor: activeColor,
          activeTrackColor: activeTrackColor,
          inactiveThumbColor: inactiveThumbColor,
          inactiveTrackColor: inactiveTrackColor,
          activeThumbImage: activeThumbImage,
          onActiveThumbImageError: onActiveThumbImageError,
          inactiveThumbImage: inactiveThumbImage,
          onInactiveThumbImageError: onInactiveThumbImageError,
          thumbColor: thumbColorState?.value,
          trackColor: trackColorState?.value,
          materialTapTargetSize: materialTapTargetSize,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          mouseCursor: mouseCursor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: overlayColorState?.value,
          splashRadius: splashRadius,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
        );
}
