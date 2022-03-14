import 'package:flutter/material.dart';

import 'package:niku/widget/radio.dart';
import 'package:niku/objects/objects.dart';

extension RadioProxyStyle on NikuRadio {
  void useFillColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) {
    fillColorState = NikuState(
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

  void useOverlayColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) {
    overlayColorState = NikuState(
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
}
