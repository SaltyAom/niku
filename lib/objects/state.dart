import 'package:flutter/material.dart';

class NikuState<T> {
  T? all;
  T? disabled;
  T? dragged;
  T? error;
  T? focused;
  T? hovered;
  T? pressed;
  T? scrolledUnder;
  T? selected;
  T? base;

  NikuState({
    this.all,
    this.disabled,
    this.dragged,
    this.error,
    this.focused,
    this.hovered,
    this.pressed,
    this.scrolledUnder,
    this.selected,
    this.base,
  });

  factory NikuState.all(T all) => NikuState(all: all);

  NikuState get copied => NikuState(
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

  MaterialStateProperty<T?> get value =>
      MaterialStateProperty.resolveWith((states) {
        if (all != null) return all;

        if (states.contains(MaterialState.disabled)) return disabled;
        if (states.contains(MaterialState.dragged)) return dragged;
        if (states.contains(MaterialState.error)) return error;
        if (states.contains(MaterialState.focused)) return focused;
        if (states.contains(MaterialState.hovered)) return hovered;
        if (states.contains(MaterialState.pressed)) return pressed;
        if (states.contains(MaterialState.scrolledUnder)) return scrolledUnder;
        if (states.contains(MaterialState.selected)) return selected;

        return base;
      });
}
