// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/rendering.dart';

import './base.dart';

/// Niku extension for Material various Button
/// Including:
/// - TextButton
/// - TextButton.icon
/// - Elevated
/// - Elevated.icon
/// - OutlinedButton
/// - OutlinedButton.icon
///
/// Style property builder for building Flat Button
///
/// Example usage:
/// ```
/// NikuButton(Text("Flat Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///   .build()
///
/// NikuButton(Text("Flat Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///   .elevated()
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build(), textButton() - Build as [TextButton]
/// - elevated() - Build as [ElevatedButton]
/// - outlined() - Build as [OutlinedButton]
/// - textButtonIcon() - Build as [TextButton.icon]
/// - elevatedIcon() - Build as [ElevatedButton.icon]
/// - outlinedIcon() - Build as [OutlinedButton.icon]
/// - apply() - Apply existing NikuFlatButton's property to current style
///
/// Style Property list:
/// - onPressed - Callback when button is pressed
/// - onLongPressed - Callback when button is long pressed
/// - padding, p - Padding of container
///   - padding, p - apply padding to all side
///   - px - apply padding to x axis
///   - py - apply padding y axis
///   - pt - apply padding top side
///   - pl - apply padding left side
///   - pb - apply padding bottom side
///   - pl - apply padding right side
/// - margin, m - Padding of container
///   - margin, m - apply margin to all side
///   - mx - apply margin to x axis
///   - my - apply margin y axis
///   - mt - apply margin top side
///   - ml - apply margin left side
///   - mb - apply margin bottom side
///   - ml - apply margin right side
/// - backgroundColor, bg - Apply color to background
///   - bg - Shorten form for applying to all button state
///   - highlight - Apply highlight color
///   - backgroundColor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - foregroundColor, fg - Apply color to foreground (ie. Text color)
///   - fg - Shorten form for applying to all button state
///   - foregroundColor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - overlay, splash, overlayColor - Apply color to splash (ripple effect)
///   - overlay, splash - Shorten form for applying to all button state
///   - overlayColor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - shadow, shadowColor - Apply color to shadow of [ElevatedButton]
///   - shadow - Shorten form for applying to all button state
///   - shadowColor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - elevation - Apply elevation to button
///   - base
///   - disabled
///   - dragged
///   - error
///   - hovered
///   - pressed
///   - selected
/// - borderSide, b - Apply styling to border
///   - b - Shorten form for applying to all button state
///   - border
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - borderWidth, bw - Apply width to border
///   - bw - Shorten form for applying to all button state
///   - borderWidth
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - borderColor, bc - Apply color to border
///   - bc - Shorten form for applying to all button state
///   - borderColor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - borderStyle, bs - Apply [BorderStyle] to border
///   - bs - Shorten form for applying to all button state
///   - borderStyle
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - shape, s - Apply shape to button
///   - s - Shorten form for applying to all button state
///   - shape
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - cursor, mouseCursor - Apply cursor to border
///   - cursor, mouseCursor
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - clip - Apply clip to button
/// - autofocus - Determine whether button should be auto focus
/// - cursor - Set cursor when hovered on widget
/// - minSize, minimumSize - Set minimum size of button
///   - minSize - Shorten form for applying to all button state
///   - minimumSize
///     - base
///     - disabled
///     - dragged
///     - error
///     - hovered
///     - pressed
///     - selected
/// - animationDuration, duration - Animaiton Duration of elevation effect
/// - focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
/// - visualDensity - Defines the visual density of user interface components
/// - tapTargetSize - Configures the tap target and layout size of certain Material widgets
/// - rounded - Apply border radius to button, will override shape
/// - label - Add label to [IconButton]
class NikuButton {
  Widget child;

  VoidCallback? _onPressed;
  VoidCallback? _onLongPressed;
  FocusNode? _focusNode;
  bool _autofocus = false;
  Clip _clipBehavior = Clip.none;

  NikuMaterialPropertyContainer<Color> _backgroundColor =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<Color> _foregroundColor =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<Color> _overlayColor =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<Color> _shadowColor =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<double> _elevation =
      NikuMaterialPropertyContainer();

  double _pt = 0;
  double _pb = 0;
  double _pl = 0;
  double _pr = 0;
  double _mt = 0;
  double _mb = 0;
  double _ml = 0;
  double _mr = 0;

  NikuMaterialPropertyContainer<Size> _minimumSize =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<BorderSide> _side =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<RoundedRectangleBorder> _shape =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<MouseCursor> _mouseCursor =
      NikuMaterialPropertyContainer();

  VisualDensity? _visualDensity;
  MaterialTapTargetSize? _tapTargetSize;
  Duration? _animationDuration;
  bool _enableFeedback = false;
  AlignmentGeometry? _alignment;

  Widget? _label;

  /// Niku extension for Material various Button
  /// Including:
  /// - TextButton
  /// - TextButton.icon
  /// - Elevated
  /// - Elevated.icon
  /// - OutlinedButton
  /// - OutlinedButton.icon
  ///
  /// Style property builder for building Flat Button
  ///
  /// Example usage:
  /// ```
  /// NikuButton(Text("Flat Button"))
  ///   .bg(Colors.blue)
  ///   .px(40)
  ///   .py(20)
  ///   .rounded(8)
  ///   .my(8)
  ///   .build()
  ///
  /// NikuButton(Text("Flat Button"))
  ///   .bg(Colors.blue)
  ///   .px(40)
  ///   .py(20)
  ///   .rounded(8)
  ///   .my(8)
  ///   .elevated()
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build(), textButton() - Build as [TextButton]
  /// - elevated() - Build as [ElevatedButton]
  /// - outlined() - Build as [OutlinedButton]
  /// - textButtonIcon() - Build as [TextButton.icon]
  /// - elevatedIcon() - Build as [ElevatedButton.icon]
  /// - outlinedIcon() - Build as [OutlinedButton.icon]
  /// - apply() - Apply existing NikuFlatButton's property to current style
  ///
  /// Style Property list:
  /// - onPressed - Callback when button is pressed
  /// - onLongPressed - Callback when button is long pressed
  /// - padding, p - Padding of container
  ///   - padding, p - apply padding to all side
  ///   - px - apply padding to x axis
  ///   - py - apply padding y axis
  ///   - pt - apply padding top side
  ///   - pl - apply padding left side
  ///   - pb - apply padding bottom side
  ///   - pl - apply padding right side
  /// - margin, m - Padding of container
  ///   - margin, m - apply margin to all side
  ///   - mx - apply margin to x axis
  ///   - my - apply margin y axis
  ///   - mt - apply margin top side
  ///   - ml - apply margin left side
  ///   - mb - apply margin bottom side
  ///   - ml - apply margin right side
  /// - backgroundColor, bg - Apply color to background
  ///   - bg - Shorten form for applying to all button state
  ///   - backgroundColor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - foregroundColor, fg - Apply color to foreground (ie. Text color)
  ///   - fg - Shorten form for applying to all button state
  ///   - foregroundColor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - overlay, splash, overlayColor - Apply color to splash (ripple effect)
  ///   - overlay, splash - Shorten form for applying to all button state
  ///   - overlayColor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - shadow, shadowColor - Apply color to shadow of [ElevatedButton]
  ///   - shadow - Shorten form for applying to all button state
  ///   - shadowColor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - elevation - Apply elevation to button
  ///   - base
  ///   - disabled
  ///   - dragged
  ///   - error
  ///   - hovered
  ///   - pressed
  ///   - selected
  /// - borderSide, b - Apply styling to border
  ///   - b - Shorten form for applying to all button state
  ///   - border
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - borderWidth, bw - Apply width to border
  ///   - bw - Shorten form for applying to all button state
  ///   - borderWidth
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - borderColor, bc - Apply color to border
  ///   - bc - Shorten form for applying to all button state
  ///   - borderColor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - borderStyle, bs - Apply [BorderStyle] to border
  ///   - bs - Shorten form for applying to all button state
  ///   - borderStyle
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - shape, s - Apply shape to button
  ///   - s - Shorten form for applying to all button state
  ///   - shape
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - cursor, mouseCursor - Apply cursor to border
  ///   - cursor, mouseCursor
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - clip - Apply clip to button
  /// - autofocus - Determine whether button should be auto focus
  /// - cursor - Set cursor when hovered on widget
  /// - minSize, minimumSize - Set minimum size of button
  ///   - minSize - Shorten form for applying to all button state
  ///   - minimumSize
  ///     - base
  ///     - disabled
  ///     - dragged
  ///     - error
  ///     - hovered
  ///     - pressed
  ///     - selected
  /// - animationDuration, duration - Animaiton Duration of elevation effect
  /// - focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
  /// - visualDensity - Defines the visual density of user interface components
  /// - tapTargetSize - Configures the tap target and layout size of certain Material widgets
  /// - rounded - Apply border radius to button, will override shape
  /// - label - Add label to [IconButton]
  NikuButton(this.child);

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuButton onPressed(VoidCallback callback) {
    this._onPressed = callback;

    return this;
  }

  /// Callback when button is long pressed
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   onLongPressed: input
  /// )
  /// ```
  NikuButton onLongPressed(VoidCallback callback) {
    this._onLongPressed = callback;

    return this;
  }

  /// Apply padding using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: input
  /// )
  /// ```
  NikuButton padding(EdgeInsets padding) {
    this._pt = padding.top;
    this._pl = padding.left;
    this._pb = padding.bottom;
    this._pr = padding.right;

    return this;
  }

  /// Apply padding to all side
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuButton p(double padding) {
    this._pt = padding;
    this._pl = padding;
    this._pb = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to x axis
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuButton px(double padding) {
    this._pl = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuButton py(double padding) {
    this._pt = padding;
    this._pb = padding;

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuButton pt(double padding) {
    this._pt = padding;

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuButton pl(double padding) {
    this._pl = padding;

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuButton pb(double padding) {
    this._pb = padding;

    return this;
  }

  /// Apply padding to right
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   padding: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuButton pr(double padding) {
    this._pr = padding;

    return this;
  }

  /// Apply margin using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: input
  /// )
  /// ```
  NikuButton margin(EdgeInsets padding) {
    this._pt = padding.top;
    this._pl = padding.left;
    this._pb = padding.bottom;
    this._pr = padding.right;

    return this;
  }

  /// Apply margin to top
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.all(input)
  /// )
  /// ```
  NikuButton m(double margin) {
    this._mt = margin;
    this._ml = margin;
    this._mb = margin;
    this._mr = margin;

    return this;
  }

  /// Apply margin to x axis
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuButton mx(double margin) {
    this._ml = margin;
    this._mr = margin;

    return this;
  }

  /// Apply margin to y axis
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuButton my(double margin) {
    this._mt = margin;
    this._mb = margin;

    return this;
  }

  /// Apply margin to top
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuButton mt(double margin) {
    this._mt = margin;

    return this;
  }

  /// Apply margin to left side
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuButton ml(double margin) {
    this._ml = margin;

    return this;
  }

  /// Apply margin to bottom
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuButton mb(double margin) {
    this._mb = margin;

    return this;
  }

  /// Apply margin to right side
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   margin: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuButton mr(double margin) {
    this._mr = margin;

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: input
  /// )
  /// ```
  NikuButton alignment(Alignment align) {
    this._alignment = align;

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: input
  /// )
  /// ```
  NikuButton align(Alignment align) {
    this._alignment = align;

    return this;
  }

  /// Apply widget to top left
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.topLeft
  /// )
  /// ```
  NikuButton topLeft() {
    this._alignment = Alignment.topLeft;

    return this;
  }

  /// Apply widget to top center
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.topCenter
  /// )
  /// ```
  NikuButton topCenter() {
    this._alignment = Alignment.topCenter;

    return this;
  }

  /// Apply widget to top right
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.topRight
  /// )
  /// ```
  NikuButton topRight() {
    this._alignment = Alignment.topRight;

    return this;
  }

  /// Apply widget to center left
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.centerLeft
  /// )
  /// ```
  NikuButton centerLeft() {
    this._alignment = Alignment.centerLeft;

    return this;
  }

  /// Apply widget to center
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.center
  /// )
  /// ```
  NikuButton center() {
    this._alignment = Alignment.center;

    return this;
  }

  /// Apply widget to center right
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.centerRight
  /// )
  /// ```
  NikuButton centerRight() {
    this._alignment = Alignment.centerRight;

    return this;
  }

  /// Apply widget to bottom left
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.bottomLeft
  /// )
  /// ```
  NikuButton bottomLeft() {
    this._alignment = Alignment.bottomLeft;

    return this;
  }

  /// Apply widget to bottom center
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.bottomCenter
  /// )
  /// ```
  NikuButton bottomCenter() {
    this._alignment = Alignment.bottomCenter;

    return this;
  }

  /// Apply widget to bottom right
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: Alignment.bottomRight
  /// )
  /// ```
  NikuButton bottomRight() {
    this._alignment = Alignment.bottomRight;

    return this;
  }

  /// Apply color to background
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   backgroundColor: MaterialStateProperty.resolveWith<T>((states) {
  ///      return input;
  ///    })
  /// )
  /// ```
  NikuButton bg(Color color) {
    this._backgroundColor.updateAll(color);

    return this;
  }

  /// Apply color to background
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   backgroundColor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton backgroundColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    this._backgroundColor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply highlight color
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   color: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return null
  ///   })
  /// )
  /// ```
  NikuButton highlight(Color highlight) {
    this._backgroundColor.update(
        hovered: highlight,
        focused: highlight,
        pressed: highlight,
        selected: highlight);

    return this;
  }

  /// Apply color to foreground (ie. Text color)
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   foregroundColor: MaterialStateProperty.resolveWith<T>((states) {
  ///      return input;
  ///    })
  /// )
  /// ```
  NikuButton fg(Color base) {
    this._foregroundColor.updateAll(base);

    return this;
  }

  /// Apply color to foreground (ie. Text color)
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   foregroundColor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton foregroundColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    this._foregroundColor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply color to splash (ripple effect)
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   overlayColor: MaterialStateProperty.resolveWith<T>((states) {
  ///      return input;
  ///   })
  /// )
  /// ```
  NikuButton overlay(Color base) {
    this._overlayColor.updateAll(base);

    return this;
  }

  /// Apply color to splash (ripple effect)
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   overlayColor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return input;
  ///   })
  /// )
  /// ```
  NikuButton splash(Color base) {
    this._overlayColor.updateAll(base);

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   backgroundColor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton overlayColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    this._overlayColor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply color to shadow of [ElevatedButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   shadowColor: MaterialStateProperty.resolveWith<T>((states) {
  ///      return input;
  ///    })
  /// )
  /// ```
  NikuButton shadow(Color base) {
    this._shadowColor.updateAll(base);

    return this;
  }

  /// Apply color to shadow of [ElevatedButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   shadowColor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///      return input;
  ///    })
  /// )
  /// ```
  NikuButton shadowColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    this._shadowColor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply elevation to button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   elevation: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton elevation({
    double? base,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? selected,
  }) {
    this._elevation.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply styling to border
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   border: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton b(BorderSide input) {
    this._side.updateAll(input);

    return this;
  }

  /// Apply styling to border
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   border: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton borderSide({
    BorderSide? base,
    BorderSide? disabled,
    BorderSide? dragged,
    BorderSide? error,
    BorderSide? focused,
    BorderSide? hovered,
    BorderSide? pressed,
    BorderSide? selected,
  }) {
    this._side.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply styling to border width
  NikuButton bw(double width) {
    this._side.update(
          base: BorderSide(
            color: this._side.base?.color ?? Colors.black12,
            width: width,
            style: this._side.base?.style ?? BorderStyle.solid,
          ),
          disabled: BorderSide(
            color: this._side.disabled?.color ?? Colors.black12,
            width: width,
            style: this._side.disabled?.style ?? BorderStyle.solid,
          ),
          dragged: BorderSide(
            color: this._side.dragged?.color ?? Colors.black12,
            width: width,
            style: this._side.dragged?.style ?? BorderStyle.solid,
          ),
          error: BorderSide(
            color: this._side.error?.color ?? Colors.black12,
            width: width,
            style: this._side.error?.style ?? BorderStyle.solid,
          ),
          focused: BorderSide(
            color: this._side.focused?.color ?? Colors.black12,
            width: width,
            style: this._side.focused?.style ?? BorderStyle.solid,
          ),
          hovered: BorderSide(
            color: this._side.hovered?.color ?? Colors.black12,
            width: width,
            style: this._side.hovered?.style ?? BorderStyle.solid,
          ),
          pressed: BorderSide(
            color: this._side.pressed?.color ?? Colors.black12,
            width: width,
            style: this._side.pressed?.style ?? BorderStyle.solid,
          ),
          selected: BorderSide(
            color: this._side.selected?.color ?? Colors.black12,
            width: width,
            style: this._side.selected?.style ?? BorderStyle.solid,
          ),
        );

    return this;
  }

  /// Apply styling to border width
  NikuButton borderWidth({
    double base = 1,
    double disabled = 1,
    double dragged = 1,
    double error = 1,
    double focused = 1,
    double hovered = 1,
    double pressed = 1,
    double selected = 1,
  }) {
    this._side.update(
          base: BorderSide(
            color: this._side.base?.color ?? Colors.black12,
            width: base,
            style: this._side.base?.style ?? BorderStyle.solid,
          ),
          disabled: BorderSide(
            color: this._side.disabled?.color ?? Colors.black12,
            width: disabled,
            style: this._side.disabled?.style ?? BorderStyle.solid,
          ),
          dragged: BorderSide(
            color: this._side.dragged?.color ?? Colors.black12,
            width: dragged,
            style: this._side.dragged?.style ?? BorderStyle.solid,
          ),
          error: BorderSide(
            color: this._side.error?.color ?? Colors.black12,
            width: error,
            style: this._side.error?.style ?? BorderStyle.solid,
          ),
          focused: BorderSide(
            color: this._side.focused?.color ?? Colors.black12,
            width: focused,
            style: this._side.focused?.style ?? BorderStyle.solid,
          ),
          hovered: BorderSide(
            color: this._side.hovered?.color ?? Colors.black12,
            width: hovered,
            style: this._side.hovered?.style ?? BorderStyle.solid,
          ),
          pressed: BorderSide(
            color: this._side.pressed?.color ?? Colors.black12,
            width: pressed,
            style: this._side.pressed?.style ?? BorderStyle.solid,
          ),
          selected: BorderSide(
            color: this._side.selected?.color ?? Colors.black12,
            width: selected,
            style: this._side.selected?.style ?? BorderStyle.solid,
          ),
        );

    return this;
  }

  /// Apply styling to border color
  NikuButton bc(Color color) {
    this._side.update(
          base: BorderSide(
            width: this._side.base?.width ?? 1,
            color: color,
            style: this._side.base?.style ?? BorderStyle.solid,
          ),
          disabled: BorderSide(
            width: this._side.disabled?.width ?? 1,
            color: color,
            style: this._side.disabled?.style ?? BorderStyle.solid,
          ),
          dragged: BorderSide(
            width: this._side.dragged?.width ?? 1,
            color: color,
            style: this._side.dragged?.style ?? BorderStyle.solid,
          ),
          error: BorderSide(
            width: this._side.error?.width ?? 1,
            color: color,
            style: this._side.error?.style ?? BorderStyle.solid,
          ),
          focused: BorderSide(
            width: this._side.focused?.width ?? 1,
            color: color,
            style: this._side.focused?.style ?? BorderStyle.solid,
          ),
          hovered: BorderSide(
            width: this._side.hovered?.width ?? 1,
            color: color,
            style: this._side.hovered?.style ?? BorderStyle.solid,
          ),
          pressed: BorderSide(
            width: this._side.pressed?.width ?? 1,
            color: color,
            style: this._side.pressed?.style ?? BorderStyle.solid,
          ),
          selected: BorderSide(
            width: this._side.selected?.width ?? 1,
            color: color,
            style: this._side.selected?.style ?? BorderStyle.solid,
          ),
        );

    return this;
  }

  /// Apply styling to border color
  NikuButton borderColor({
    Color base = Colors.black12,
    Color disabled = Colors.black12,
    Color dragged = Colors.black12,
    Color error = Colors.black12,
    Color focused = Colors.black12,
    Color hovered = Colors.black12,
    Color pressed = Colors.black12,
    Color selected = Colors.black12,
  }) {
    this._side.update(
          base: BorderSide(
            width: this._side.base?.width ?? 1,
            color: base,
            style: this._side.base?.style ?? BorderStyle.solid,
          ),
          disabled: BorderSide(
            width: this._side.disabled?.width ?? 1,
            color: disabled,
            style: this._side.disabled?.style ?? BorderStyle.solid,
          ),
          dragged: BorderSide(
            width: this._side.dragged?.width ?? 1,
            color: dragged,
            style: this._side.dragged?.style ?? BorderStyle.solid,
          ),
          error: BorderSide(
            width: this._side.error?.width ?? 1,
            color: error,
            style: this._side.error?.style ?? BorderStyle.solid,
          ),
          focused: BorderSide(
            width: this._side.focused?.width ?? 1,
            color: focused,
            style: this._side.focused?.style ?? BorderStyle.solid,
          ),
          hovered: BorderSide(
            width: this._side.hovered?.width ?? 1,
            color: hovered,
            style: this._side.hovered?.style ?? BorderStyle.solid,
          ),
          pressed: BorderSide(
            width: this._side.pressed?.width ?? 1,
            color: pressed,
            style: this._side.pressed?.style ?? BorderStyle.solid,
          ),
          selected: BorderSide(
            width: this._side.selected?.width ?? 1,
            color: selected,
            style: this._side.selected?.style ?? BorderStyle.solid,
          ),
        );

    return this;
  }

  /// Apply [BorderStyle] to border
  NikuButton bs(BorderStyle style) {
    this._side.update(
          base: BorderSide(
            width: this._side.base?.width ?? 1,
            style: style,
            color: this._side.base?.color ?? Colors.black12,
          ),
          disabled: BorderSide(
            width: this._side.disabled?.width ?? 1,
            style: style,
            color: this._side.disabled?.color ?? Colors.black12,
          ),
          dragged: BorderSide(
            width: this._side.dragged?.width ?? 1,
            style: style,
            color: this._side.dragged?.color ?? Colors.black12,
          ),
          error: BorderSide(
            width: this._side.error?.width ?? 1,
            style: style,
            color: this._side.error?.color ?? Colors.black12,
          ),
          focused: BorderSide(
            width: this._side.focused?.width ?? 1,
            style: style,
            color: this._side.focused?.color ?? Colors.black12,
          ),
          hovered: BorderSide(
            width: this._side.hovered?.width ?? 1,
            style: style,
            color: this._side.hovered?.color ?? Colors.black12,
          ),
          pressed: BorderSide(
            width: this._side.pressed?.width ?? 1,
            style: style,
            color: this._side.pressed?.color ?? Colors.black12,
          ),
          selected: BorderSide(
            width: this._side.selected?.width ?? 1,
            style: style,
            color: this._side.selected?.color ?? Colors.black12,
          ),
        );

    return this;
  }

  /// Apply [BorderStyle] to border
  NikuButton borderStyle({
    BorderStyle base = BorderStyle.solid,
    BorderStyle disabled = BorderStyle.solid,
    BorderStyle dragged = BorderStyle.solid,
    BorderStyle error = BorderStyle.solid,
    BorderStyle focused = BorderStyle.solid,
    BorderStyle hovered = BorderStyle.solid,
    BorderStyle pressed = BorderStyle.solid,
    BorderStyle selected = BorderStyle.solid,
  }) {
    this._side.update(
          base: BorderSide(
            width: this._side.base?.width ?? 1,
            style: base,
            color: this._side.base?.color ?? Colors.black12,
          ),
          disabled: BorderSide(
            width: this._side.disabled?.width ?? 1,
            style: disabled,
            color: this._side.disabled?.color ?? Colors.black12,
          ),
          dragged: BorderSide(
            width: this._side.dragged?.width ?? 1,
            style: dragged,
            color: this._side.dragged?.color ?? Colors.black12,
          ),
          error: BorderSide(
            width: this._side.error?.width ?? 1,
            style: error,
            color: this._side.error?.color ?? Colors.black12,
          ),
          focused: BorderSide(
            width: this._side.focused?.width ?? 1,
            style: focused,
            color: this._side.focused?.color ?? Colors.black12,
          ),
          hovered: BorderSide(
            width: this._side.hovered?.width ?? 1,
            style: hovered,
            color: this._side.hovered?.color ?? Colors.black12,
          ),
          pressed: BorderSide(
            width: this._side.pressed?.width ?? 1,
            style: pressed,
            color: this._side.pressed?.color ?? Colors.black12,
          ),
          selected: BorderSide(
            width: this._side.selected?.width ?? 1,
            style: selected,
            color: this._side.selected?.color ?? Colors.black12,
          ),
        );

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   shape: MaterialStateProperty.resolveWith<T>((states) {
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton s(RoundedRectangleBorder input) {
    this._shape.updateAll(input);

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   shape: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton shape({
    RoundedRectangleBorder? base,
    RoundedRectangleBorder? disabled,
    RoundedRectangleBorder? dragged,
    RoundedRectangleBorder? error,
    RoundedRectangleBorder? focused,
    RoundedRectangleBorder? hovered,
    RoundedRectangleBorder? pressed,
    RoundedRectangleBorder? selected,
  }) {
    this._shape.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Set cursor when hovered on widget
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   cursor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton cursor({
    MouseCursor? base,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? selected,
  }) {
    this._mouseCursor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Set cursor when hovered on widget
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   cursor: MaterialStateProperty.resolveWith<T>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton mouseCursor({
    MouseCursor? base,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? selected,
  }) {
    this._mouseCursor.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Apply clip to button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuButton clip(Clip clip) {
    this._clipBehavior = clip;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   autofocus: input
  /// )
  /// ```
  NikuButton autofocus(bool autofocus) {
    this._autofocus = autofocus;

    return this;
  }

  /// Set minimum size of button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   minimumSize: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton minSize(Size input) {
    this._minimumSize.updateAll(input);

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Set minimum size of button
  /// ```
  /// TextButton(
  ///   minimumSize: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
  ///     if (states.contains(MaterialState.disabled)) return disabled;
  ///     if (states.contains(MaterialState.dragged)) return dragged;
  ///     if (states.contains(MaterialState.error)) return error;
  ///     if (states.contains(MaterialState.focused)) return focused;
  ///     if (states.contains(MaterialState.hovered)) return hovered;
  ///     if (states.contains(MaterialState.pressed)) return pressed;
  ///     if (states.contains(MaterialState.selected)) return selected;
  ///
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton minimumSize(
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? selected,
  ) {
    this._minimumSize.update(
          base: base,
          disabled: disabled,
          dragged: dragged,
          error: error,
          focused: focused,
          hovered: hovered,
          pressed: pressed,
          selected: selected,
        );

    return this;
  }

  /// Animaiton Duration of elevation effect
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   animationDuration: input
  /// )
  /// ```
  NikuButton animationDuration(Duration duration) {
    this._animationDuration = duration;

    return this;
  }

  /// Animaiton Duration of elevation effect
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   animationDuration: input
  /// )
  /// ```
  NikuButton duration(Duration duration) {
    this._animationDuration = duration;

    return this;
  }

  /// Immediate animation
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   animationDuration: Duration.zero
  /// )
  /// ```
  NikuButton immediate() {
    this._animationDuration = Duration.zero;

    return this;
  }

  /// An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   focusNode: input
  /// )
  /// ```
  NikuButton focusNode(FocusNode focusNode) {
    this._focusNode = focusNode;

    return this;
  }

  /// Defines the visual density of user interface components.
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   visualDensity: input
  /// )
  /// ```
  NikuButton visualDensity(FocusNode focusNode) {
    this._focusNode = focusNode;

    return this;
  }

  /// Configures the tap target and layout size of certain Material widgets
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   tapTargetSize: input
  /// )
  /// ```
  NikuButton tapTargetSize(MaterialTapTargetSize tapTargetSize) {
    this._tapTargetSize = tapTargetSize;

    return this;
  }

  /// Apply border radius to button, will override shape
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   shape: RoundedRectangleBorder(
  ///     borderRadius: BorderRadius.circular(input)
  ///   )
  /// );
  /// ```
  NikuButton rounded([double radius = 999999]) {
    this._shape.updateAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        );

    return this;
  }

  /// Add label to [IconButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton.icon(
  ///   label: input
  /// );
  /// ```
  NikuButton label(Widget label) {
    this._label = label;

    return this;
  }

  /// Apply existing NikuButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final padding = NikuButton(null)
  ///   .px(40)
  ///   .py(20)
  ///
  /// final blueBackground = NikuButton(null)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .apply(padding) // Will have padding
  ///       .apply(blueBackground) // Will have blue background
  ///       .rounded(8)
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  NikuButton apply(NikuButton instance) => this.set(
        onPressed: instance._onPressed ?? this._onPressed,
        onLongPressed: instance._onLongPressed ?? this._onLongPressed,
        focusNode: instance._focusNode ?? this._focusNode,
        autofocus: instance._autofocus,
        clipBehavior: instance._clipBehavior,
        backgroundColor: instance._backgroundColor.init
            ? this._backgroundColor
            : instance._backgroundColor,
        foregroundColor: instance._foregroundColor.init
            ? this._foregroundColor
            : instance._foregroundColor,
        overlayColor: instance._overlayColor.init
            ? this._overlayColor
            : instance._overlayColor,
        shadowColor: instance._shadowColor.init
            ? this._shadowColor
            : instance._shadowColor,
        elevation:
            instance._elevation.init ? this._elevation : instance._elevation,
        pt: instance._pt == 0 ? this._pt : instance._pt,
        pb: instance._pb == 0 ? this._pb : instance._pb,
        pl: instance._pl == 0 ? this._pl : instance._pl,
        pr: instance._pr == 0 ? this._pr : instance._pr,
        mt: instance._mt == 0 ? this._mt : instance._mt,
        mb: instance._mb == 0 ? this._mb : instance._mb,
        ml: instance._ml == 0 ? this._ml : instance._ml,
        mr: instance._mr == 0 ? this._mr : instance._mr,
        minimumSize: instance._minimumSize.init
            ? this._minimumSize
            : instance._minimumSize,
        side: instance._side.init ? this._side : instance._side,
        shape: instance._shape.init ? this._shape : instance._shape,
        mouseCursor: instance._mouseCursor.init
            ? this._mouseCursor
            : instance._mouseCursor,
        visualDensity: instance._visualDensity ?? this._visualDensity,
        tapTargetSize: instance._tapTargetSize ?? this._tapTargetSize,
        animationDuration:
            instance._animationDuration ?? this._animationDuration,
        enableFeedback: instance._enableFeedback,
        alignment: instance._alignment ?? this._alignment,
        label: instance._label ?? this._label,
      );

  /// Apply styles and build as [TextButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .build() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget build({Key? key}) => this.textButton(key: key);

  /// Apply styles and build as [TextButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .textButton() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget textButton({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: TextButton(
          child: this.child,
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<OutlinedBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Apply styles and build as [ElevatedButton]
  ///
  /// Equivalent to
  /// ```
  /// ElevatedButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .elevated() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget elevated({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: ElevatedButton(
          child: this.child,
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<OutlinedBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Apply styles and build as [OutlinedButton]
  ///
  /// Equivalent to
  /// ```
  /// OutlinedButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .outlined() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget outlined({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: OutlinedButton(
          child: this.child,
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<RoundedRectangleBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Apply styles and build as [TextButton]
  ///
  /// Equivalent to
  /// ```
  /// TextButton.icon()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .textButtonIcon() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget textButtonIcon({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: TextButton.icon(
          icon: this.child,
          label: _label ?? Text("Icon Button"),
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<OutlinedBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Apply styles and build as [ElevatedButton]
  ///
  /// Equivalent to
  /// ```
  /// ElevatedButton.icon()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .elevatedIcon() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget elevatedIcon({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: ElevatedButton.icon(
          icon: this.child,
          label: _label ?? Text("Icon Button"),
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<OutlinedBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Apply styles and build as [OutlinedButton]
  ///
  /// Equivalent to
  /// ```
  /// OutlinedButton.icon()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// build(context) {
  ///   return (
  ///     NikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .outlinedIcon() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget outlinedIcon({Key? key}) => Container(
        margin: EdgeInsets.only(
          top: this._mt,
          left: this._ml,
          bottom: this._mb,
          right: this._mr,
        ),
        child: OutlinedButton.icon(
          icon: this.child,
          label: _label ?? Text("Icon Button"),
          onPressed: this._onPressed,
          onLongPress: this._onLongPressed,
          focusNode: this._focusNode,
          autofocus: this._autofocus,
          clipBehavior: this._clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: this._pt,
                left: this._pl,
                bottom: this._pb,
                right: this._pr,
              ),
            ),
            backgroundColor:
                _composeMaterialState<Color>(this._backgroundColor),
            foregroundColor:
                _composeMaterialState<Color>(this._foregroundColor),
            overlayColor: _composeMaterialState<Color>(this._overlayColor),
            shadowColor: _composeMaterialState<Color>(this._shadowColor),
            elevation: _composeMaterialState<double>(this._elevation),
            minimumSize: _composeMaterialState<Size>(this._minimumSize),
            side: _composeMaterialState<BorderSide>(this._side),
            shape: _composeMaterialState<OutlinedBorder>(this._shape),
            mouseCursor: _composeMaterialState<MouseCursor>(this._mouseCursor),
            visualDensity: this._visualDensity,
            tapTargetSize: this._tapTargetSize,
            animationDuration: this._animationDuration,
            enableFeedback: this._enableFeedback,
            alignment: this._alignment,
          ),
        ),
      );

  /// Switch to Niku() property as [TextButton]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .niku()
  ///   .build() // Collect all style and render
  /// ```
  Niku niku({Key? key}) => Niku(this.build(key: key));

  /// Switch to Niku() property as [TextButton]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuTextButton()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuTextButton({Key? key}) => Niku(this.textButton(key: key));

  /// Switch to Niku() property as [ElevatedButton]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuElevated()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuElevated({Key? key}) => Niku(this.elevated(key: key));

  /// Switch to Niku() property as [OutlinedButton]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuOutlined()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuOutlined({Key? key}) => Niku(this.outlined(key: key));

  /// Switch to Niku() property as [TextButton.icon]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuTextButtonIcon()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuTextButtonIcon({Key? key}) => Niku(this.textButtonIcon(key: key));

  /// Switch to Niku() property as [ElevatedButton.icon]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuElevatedIcon()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuElevatedIcon({Key? key}) => Niku(this.elevatedIcon(key: key));

  /// Switch to Niku() property as [OutlinedButton.icon]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .nikuOutlinedIcon()
  ///   .build() // Collect all style and render
  /// ```
  Niku nikuOutlinedIcon({Key? key}) => Niku(this.outlinedIcon(key: key));

  NikuButton set({
    VoidCallback? onPressed,
    VoidCallback? onLongPressed,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    NikuMaterialPropertyContainer<Color>? backgroundColor,
    NikuMaterialPropertyContainer<Color>? foregroundColor,
    NikuMaterialPropertyContainer<Color>? overlayColor,
    NikuMaterialPropertyContainer<Color>? shadowColor,
    NikuMaterialPropertyContainer<double>? elevation,
    double pt = 0,
    double pb = 0,
    double pl = 0,
    double pr = 0,
    double mt = 0,
    double mb = 0,
    double ml = 0,
    double mr = 0,
    NikuMaterialPropertyContainer<Size>? minimumSize,
    NikuMaterialPropertyContainer<BorderSide>? side,
    NikuMaterialPropertyContainer<RoundedRectangleBorder>? shape,
    NikuMaterialPropertyContainer<MouseCursor>? mouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool enableFeedback = false,
    AlignmentGeometry? alignment,
    Widget? label,
  }) {
    this._onPressed = onPressed;
    this._onLongPressed = onLongPressed;
    this._focusNode = focusNode;
    this._autofocus = autofocus;
    this._clipBehavior = clipBehavior;
    this._backgroundColor = backgroundColor ?? NikuMaterialPropertyContainer();
    this._foregroundColor = foregroundColor ?? NikuMaterialPropertyContainer();
    this._overlayColor = overlayColor ?? NikuMaterialPropertyContainer();
    this._shadowColor = shadowColor ?? NikuMaterialPropertyContainer();
    this._elevation = elevation ?? NikuMaterialPropertyContainer();
    this._pt = pt;
    this._pb = pb;
    this._pl = pl;
    this._pr = pr;
    this._mt = mt;
    this._mb = mb;
    this._ml = ml;
    this._mr = mr;
    this._minimumSize = minimumSize ?? NikuMaterialPropertyContainer();
    this._side = side ?? NikuMaterialPropertyContainer();
    this._shape = shape ?? NikuMaterialPropertyContainer();
    this._mouseCursor = mouseCursor ?? NikuMaterialPropertyContainer();
    this._visualDensity = visualDensity;
    this._tapTargetSize = tapTargetSize;
    this._animationDuration = animationDuration;
    this._enableFeedback = enableFeedback;
    this._alignment = alignment;
    this._label = label;

    return this;
  }

  static MaterialStateProperty<T?> _composeMaterialState<T>(
          NikuMaterialPropertyContainer<T>? property) =>
      MaterialStateProperty.resolveWith<T?>((states) {
        if (states.contains(MaterialState.disabled)) return property?.disabled;
        if (states.contains(MaterialState.dragged)) return property?.dragged;
        if (states.contains(MaterialState.error)) return property?.error;
        if (states.contains(MaterialState.focused)) return property?.focused;
        if (states.contains(MaterialState.hovered)) return property?.hovered;
        if (states.contains(MaterialState.pressed)) return property?.pressed;
        if (states.contains(MaterialState.selected)) return property?.selected;

        return property?.base;
      });
}

class NikuMaterialPropertyContainer<T> {
  T? base;
  T? disabled;
  T? dragged;
  T? error;
  T? focused;
  T? hovered;
  T? pressed;
  T? selected;

  bool init = true;

  void update({
    T? base,
    T? disabled,
    T? dragged,
    T? error,
    T? focused,
    T? hovered,
    T? pressed,
    T? selected,
  }) {
    this.base = base ?? this.base;
    this.disabled = disabled ?? this.disabled;
    this.dragged = dragged ?? this.dragged;
    this.error = error ?? this.error;
    this.focused = focused ?? this.focused;
    this.hovered = hovered ?? this.hovered;
    this.pressed = selected ?? this.pressed;
    this.selected = selected ?? this.selected;

    this.init = false;
  }

  void updateAll(T input) {
    this.base = input;
    this.disabled = input;
    this.dragged = input;
    this.error = input;
    this.focused = input;
    this.hovered = input;
    this.pressed = input;
    this.selected = input;

    this.init = false;
  }
}
