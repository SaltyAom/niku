import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';
import 'package:niku/objects/objects.dart';

// ignore: unused_field
enum _NikuSwitchListTileType { material, adaptive, cupertino }

// ignore: must_be_immutable
class NikuSwitchListTile extends StatelessWidget
    with
        NikuBuildMacro<NikuSwitchListTile>,
        ContentPaddingMacro,
        FocusNodeMacro {
  Key? key;
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
  NikuState<Color?>? thumbColorState;
  NikuState<Color?>? trackColorState;
  NikuState<Color?>? trackOutlineColorState;
  NikuState<Icon?>? thumbIconState;
  MaterialTapTargetSize? materialTapTargetSize;
  DragStartBehavior? dragStartBehavior;
  MouseCursor? mouseCursor;
  NikuState<Color?>? overlayColorState;
  double? splashRadius;
  FocusNode? focusNode;
  ValueChanged<bool>? onFocusChange;
  bool? autofocus;
  Color? tileColor;
  Widget? title;
  Widget? subtitle;
  Widget? secondary;
  bool? isThreeLine;
  bool? dense;
  NikuEdgeInsets? contentPadding;
  bool? selected;
  _NikuSwitchListTileType? _switchListTileType;
  ListTileControlAffinity? controlAffinity;
  ShapeBorder? shape;
  Color? selectedTileColor;
  VisualDensity? visualDensity;
  bool? enableFeedback;
  Color? hoverColor;
  bool? applyCupertinoTheme;

  NikuSwitchListTile(
    this.value, {
    this.key,
    this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.thumbColorState,
    this.trackColorState,
    this.trackOutlineColorState,
    this.thumbIconState,
    this.materialTapTargetSize,
    this.dragStartBehavior,
    this.mouseCursor,
    this.overlayColorState,
    this.splashRadius,
    this.focusNode,
    this.onFocusChange,
    this.autofocus,
    this.tileColor,
    this.title,
    this.subtitle,
    this.secondary,
    this.isThreeLine,
    this.dense,
    this.contentPadding,
    this.selected,
    this.controlAffinity,
    this.shape,
    this.selectedTileColor,
    this.visualDensity,
    this.enableFeedback,
    this.hoverColor,
    this.applyCupertinoTheme,
  }) : super(key: key);

  set thumbColor(Color color) {
    this.thumbColorState = NikuState.all(color);
  }

  void useThumbColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) {
    this.thumbColorState = NikuState(
      all: all,
      disabled: disabled,
      dragged: dragged,
      error: error,
      focused: focused,
      hovered: hovered,
      pressed: pressed,
      scrolledUnder: scrolledUnder,
      selected: selected,
      base: base,
    );
  }

  set trackColor(Color color) {
    this.thumbColorState = NikuState.all(color);
  }

  void useTrackColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) {
    this.thumbColorState = NikuState(
      all: all,
      disabled: disabled,
      dragged: dragged,
      error: error,
      focused: focused,
      hovered: hovered,
      pressed: pressed,
      scrolledUnder: scrolledUnder,
      selected: selected,
      base: base,
    );
  }

  set trackOutlineColor(Color color) {
    this.thumbColorState = NikuState.all(color);
  }

  void useTrackOutlineColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) {
    this.thumbColorState = NikuState(
      all: all,
      disabled: disabled,
      dragged: dragged,
      error: error,
      focused: focused,
      hovered: hovered,
      pressed: pressed,
      scrolledUnder: scrolledUnder,
      selected: selected,
      base: base,
    );
  }

  set thumbIcon(Icon icon) {
    this.thumbIconState = NikuState.all(icon);
  }

  void useThumbIcon({
    Icon? all,
    Icon? disabled,
    Icon? dragged,
    Icon? error,
    Icon? focused,
    Icon? hovered,
    Icon? pressed,
    Icon? scrolledUnder,
    Icon? selected,
    Icon? base,
  }) {
    this.thumbIconState = NikuState(
      all: all,
      disabled: disabled,
      dragged: dragged,
      error: error,
      focused: focused,
      hovered: hovered,
      pressed: pressed,
      scrolledUnder: scrolledUnder,
      selected: selected,
      base: base,
    );
  }

  set overlayColor(Color color) {
    this.thumbColorState = NikuState.all(color);
  }

  void useOverlayColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) {
    this.overlayColorState = NikuState(
      all: all,
      disabled: disabled,
      dragged: dragged,
      error: error,
      focused: focused,
      hovered: hovered,
      pressed: pressed,
      scrolledUnder: scrolledUnder,
      selected: selected,
      base: base,
    );
  }

  get isDense => dense = true;

  void useTitle(Widget Function() builder) => title = builder();
  void useSubtitle(Widget Function() builder) => subtitle = builder();
  void useSecondary(Widget Function() builder) => secondary = builder();

  NikuSwitchListTile get self => this;

  set apply(NikuSwitchListTile? v) {
    if (v == null) return;

    key = key;
    value = value;
    onChanged = onChanged;
    activeColor = activeColor;
    activeTrackColor = activeTrackColor;
    inactiveThumbColor = inactiveThumbColor;
    inactiveTrackColor = inactiveTrackColor;
    activeThumbImage = activeThumbImage;
    onActiveThumbImageError = onActiveThumbImageError;
    inactiveThumbImage = inactiveThumbImage;
    onInactiveThumbImageError = onInactiveThumbImageError;
    thumbColorState = thumbColorState;
    trackColorState = trackColorState;
    trackOutlineColorState = trackOutlineColorState;
    thumbIconState = thumbIconState;
    materialTapTargetSize = materialTapTargetSize;
    dragStartBehavior = dragStartBehavior;
    mouseCursor = mouseCursor;
    overlayColorState = overlayColorState;
    splashRadius = splashRadius;
    focusNode = focusNode;
    onFocusChange = onFocusChange;
    autofocus = autofocus;
    tileColor = tileColor;
    title = title;
    subtitle = subtitle;
    secondary = secondary;
    isThreeLine = isThreeLine;
    dense = dense;
    contentPadding = contentPadding;
    selected = selected;
    controlAffinity = controlAffinity;
    shape = shape;
    selectedTileColor = selectedTileColor;
    visualDensity = visualDensity;
    enableFeedback = enableFeedback;
    hoverColor = hoverColor;
    applyCupertinoTheme = applyCupertinoTheme;

    $parent..$merge(v.$parent);
  }

  NikuSwitchListTile get copied => NikuSwitchListTile(
        value,
        key: key,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        thumbColorState: thumbColorState,
        trackColorState: trackColorState,
        trackOutlineColorState: trackOutlineColorState,
        thumbIconState: thumbIconState,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        overlayColorState: overlayColorState,
        splashRadius: splashRadius,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        tileColor: tileColor,
        title: title,
        subtitle: subtitle,
        secondary: secondary,
        isThreeLine: isThreeLine,
        dense: dense,
        contentPadding: contentPadding,
        selected: selected,
        controlAffinity: controlAffinity,
        shape: shape,
        selectedTileColor: selectedTileColor,
        visualDensity: visualDensity,
        enableFeedback: enableFeedback,
        hoverColor: hoverColor,
        applyCupertinoTheme: applyCupertinoTheme,
      )..$parent.$merge($parent);

  widget(context) {
    switch (_switchListTileType) {
      case _NikuSwitchListTileType.adaptive:
        return SwitchListTile.adaptive(
          key: key,
          value: value ?? false,
          onChanged: onChanged,
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
          trackOutlineColor: trackOutlineColorState?.value,
          thumbIcon: thumbIconState?.value,
          materialTapTargetSize: materialTapTargetSize,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          mouseCursor: mouseCursor,
          overlayColor: overlayColorState?.value,
          splashRadius: splashRadius,
          focusNode: focusNode,
          onFocusChange: onFocusChange,
          autofocus: autofocus ?? false,
          tileColor: tileColor,
          title: title,
          subtitle: subtitle,
          secondary: secondary,
          isThreeLine: isThreeLine ?? false,
          dense: dense,
          contentPadding: contentPadding?.value,
          selected: selected ?? false,
          controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
          shape: shape,
          selectedTileColor: selectedTileColor,
          visualDensity: visualDensity,
          enableFeedback: enableFeedback,
          hoverColor: hoverColor,
          applyCupertinoTheme: applyCupertinoTheme,
        );

      case _NikuSwitchListTileType.cupertino:
        return CupertinoSwitch(
          key: key,
          value: value ?? false,
          onChanged: onChanged,
          activeColor: activeColor,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        );

      default:
        return SwitchListTile(
          key: key,
          value: value ?? false,
          onChanged: onChanged,
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
          trackOutlineColor: trackOutlineColorState?.value,
          thumbIcon: thumbIconState?.value,
          materialTapTargetSize: materialTapTargetSize,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          mouseCursor: mouseCursor,
          overlayColor: overlayColorState?.value,
          splashRadius: splashRadius,
          focusNode: focusNode,
          onFocusChange: onFocusChange,
          autofocus: autofocus ?? false,
          tileColor: tileColor,
          title: title,
          subtitle: subtitle,
          secondary: secondary,
          isThreeLine: isThreeLine ?? false,
          dense: dense,
          contentPadding: contentPadding?.value,
          selected: selected ?? false,
          controlAffinity: controlAffinity ?? ListTileControlAffinity.platform,
          shape: shape,
          selectedTileColor: selectedTileColor,
          visualDensity: visualDensity,
          enableFeedback: enableFeedback,
          hoverColor: hoverColor,
        );
    }
  }
}
