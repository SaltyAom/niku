import 'package:flutter/material.dart';
import 'package:niku/namespace.dart';

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

extension NikuStateCopied<T> on NikuState<T> {
  NikuState<T> get copied => NikuState(
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

extension NikuStateTextStyleCopiedDeep on NikuState<NikuTextStyle?> {
  NikuState<NikuTextStyle?> get copiedDeep {
    return NikuState(
      all: all?.copied,
      disabled: disabled?.copied,
      dragged: dragged?.copied,
      error: error?.copied,
      focused: focused?.copied,
      hovered: hovered?.copied,
      pressed: pressed?.copied,
      scrolledUnder: scrolledUnder?.copied,
      selected: selected?.copied,
      base: base?.copied,
    );
  }
}
