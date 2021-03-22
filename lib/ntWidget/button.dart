// ignore_for_file: non_constant_identifier_names
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/rendering.dart';

import 'base.dart';

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
/// NTNikuButton(Text("Flat Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///   .build()
///
/// NTNikuButton(Text("Flat Button"))
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
class NTNikuButton extends StatelessWidget {
  Widget child;
  NTNikuButtonType _type;

  VoidCallback? _onPressed;
  VoidCallback? _onLongPressed;
  FocusNode? _focusNode;
  bool _autofocus = false;
  Clip _clipBehavior = Clip.none;

  NTNikuMaterialPropertyContainer<Color> _backgroundColor =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<Color> _foregroundColor =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<Color> _overlayColor =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<Color> _shadowColor =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<double> _elevation =
      NTNikuMaterialPropertyContainer();

  double _pt = 0;
  double _pb = 0;
  double _pl = 0;
  double _pr = 0;
  double _mt = 0;
  double _mb = 0;
  double _ml = 0;
  double _mr = 0;

  NTNikuMaterialPropertyContainer<Size> _minimumSize =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<BorderSide> _side =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<RoundedRectangleBorder> _shape =
      NTNikuMaterialPropertyContainer();
  NTNikuMaterialPropertyContainer<MouseCursor> _mouseCursor =
      NTNikuMaterialPropertyContainer();

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
  /// NTNikuButton(Text("Flat Button"))
  ///   .bg(Colors.blue)
  ///   .px(40)
  ///   .py(20)
  ///   .rounded(8)
  ///   .my(8)
  ///   .build()
  ///
  /// NTNikuButton(Text("Flat Button"))
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
  NTNikuButton(this.child, [this._type = NTNikuButtonType.Text]);

  factory NTNikuButton.icon(Widget child) {
    return NTNikuButton(child, NTNikuButtonType.TextIcon);
  }

  factory NTNikuButton.elevated(Widget child) {
    return NTNikuButton(child, NTNikuButtonType.Elevated);
  }

  factory NTNikuButton.elevatedIcon(Widget child) {
    return NTNikuButton(child, NTNikuButtonType.ElevatedIcon);
  }

  factory NTNikuButton.outlined(Widget child) {
    return NTNikuButton(child, NTNikuButtonType.Outlined);
  }

  factory NTNikuButton.outlinedIcon(Widget child) {
    return NTNikuButton(child, NTNikuButtonType.OutlinedIcon);
  }

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   onPressed: input
  /// )
  /// ```
  NTNikuButton onPressed(VoidCallback callback) {
    _onPressed = callback;

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
  NTNikuButton onLongPressed(VoidCallback callback) {
    _onLongPressed = callback;

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
  NTNikuButton padding(EdgeInsets padding) {
    _pt = padding.top;
    _pl = padding.left;
    _pb = padding.bottom;
    _pr = padding.right;

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
  NTNikuButton p(double padding) {
    _pt = padding;
    _pl = padding;
    _pb = padding;
    _pr = padding;

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
  NTNikuButton px(double padding) {
    _pl = padding;
    _pr = padding;

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
  NTNikuButton py(double padding) {
    _pt = padding;
    _pb = padding;

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
  NTNikuButton pt(double padding) {
    _pt = padding;

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
  NTNikuButton pl(double padding) {
    _pl = padding;

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
  NTNikuButton pb(double padding) {
    _pb = padding;

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
  NTNikuButton pr(double padding) {
    _pr = padding;

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
  NTNikuButton margin(EdgeInsets padding) {
    _pt = padding.top;
    _pl = padding.left;
    _pb = padding.bottom;
    _pr = padding.right;

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
  NTNikuButton m(double margin) {
    _mt = margin;
    _ml = margin;
    _mb = margin;
    _mr = margin;

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
  NTNikuButton mx(double margin) {
    _ml = margin;
    _mr = margin;

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
  NTNikuButton my(double margin) {
    _mt = margin;
    _mb = margin;

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
  NTNikuButton mt(double margin) {
    _mt = margin;

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
  NTNikuButton ml(double margin) {
    _ml = margin;

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
  NTNikuButton mb(double margin) {
    _mb = margin;

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
  NTNikuButton mr(double margin) {
    _mr = margin;

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
  NTNikuButton alignment(Alignment align) {
    _alignment = align;

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
  NTNikuButton align(Alignment align) {
    _alignment = align;

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
  NTNikuButton topLeft() {
    _alignment = Alignment.topLeft;

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
  NTNikuButton topCenter() {
    _alignment = Alignment.topCenter;

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
  NTNikuButton topRight() {
    _alignment = Alignment.topRight;

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
  NTNikuButton centerLeft() {
    _alignment = Alignment.centerLeft;

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
  NTNikuButton center() {
    _alignment = Alignment.center;

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
  NTNikuButton centerRight() {
    _alignment = Alignment.centerRight;

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
  NTNikuButton bottomLeft() {
    _alignment = Alignment.bottomLeft;

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
  NTNikuButton bottomCenter() {
    _alignment = Alignment.bottomCenter;

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
  NTNikuButton bottomRight() {
    _alignment = Alignment.bottomRight;

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
  NTNikuButton bg(Color color) {
    _backgroundColor.updateAll(color);

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
  NTNikuButton backgroundColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    _backgroundColor.update(
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
  NTNikuButton highlight(Color highlight) {
    _backgroundColor.update(
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
  NTNikuButton fg(Color base) {
    _foregroundColor.updateAll(base);

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
  NTNikuButton foregroundColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    _foregroundColor.update(
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
  NTNikuButton overlay(Color base) {
    _overlayColor.updateAll(base);

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
  NTNikuButton splash(Color base) {
    _overlayColor.updateAll(base);

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
  NTNikuButton overlayColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    _overlayColor.update(
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
  NTNikuButton shadow(Color base) {
    _shadowColor.updateAll(base);

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
  NTNikuButton shadowColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    _shadowColor.update(
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
  NTNikuButton elevation({
    double? base,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? selected,
  }) {
    _elevation.update(
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
  NTNikuButton b(BorderSide input) {
    _side.updateAll(input);

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
  NTNikuButton borderSide({
    BorderSide? base,
    BorderSide? disabled,
    BorderSide? dragged,
    BorderSide? error,
    BorderSide? focused,
    BorderSide? hovered,
    BorderSide? pressed,
    BorderSide? selected,
  }) {
    _side.update(
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
  NTNikuButton bw(double width) {
    _side.update(
      base: BorderSide(
        color: _side._base?.color ?? Colors.black12,
        width: width,
        style: _side._base?.style ?? BorderStyle.solid,
      ),
      disabled: BorderSide(
        color: _side._disabled?.color ?? Colors.black12,
        width: width,
        style: _side._disabled?.style ?? BorderStyle.solid,
      ),
      dragged: BorderSide(
        color: _side._dragged?.color ?? Colors.black12,
        width: width,
        style: _side._dragged?.style ?? BorderStyle.solid,
      ),
      error: BorderSide(
        color: _side._error?.color ?? Colors.black12,
        width: width,
        style: _side._error?.style ?? BorderStyle.solid,
      ),
      focused: BorderSide(
        color: _side._focused?.color ?? Colors.black12,
        width: width,
        style: _side._focused?.style ?? BorderStyle.solid,
      ),
      hovered: BorderSide(
        color: _side._hovered?.color ?? Colors.black12,
        width: width,
        style: _side._hovered?.style ?? BorderStyle.solid,
      ),
      pressed: BorderSide(
        color: _side._pressed?.color ?? Colors.black12,
        width: width,
        style: _side._pressed?.style ?? BorderStyle.solid,
      ),
      selected: BorderSide(
        color: _side._selected?.color ?? Colors.black12,
        width: width,
        style: _side._selected?.style ?? BorderStyle.solid,
      ),
    );

    return this;
  }

  /// Apply styling to border width
  NTNikuButton borderWidth({
    double base = 1,
    double disabled = 1,
    double dragged = 1,
    double error = 1,
    double focused = 1,
    double hovered = 1,
    double pressed = 1,
    double selected = 1,
  }) {
    _side.update(
      base: BorderSide(
        color: _side._base?.color ?? Colors.black12,
        width: base,
        style: _side._base?.style ?? BorderStyle.solid,
      ),
      disabled: BorderSide(
        color: _side._disabled?.color ?? Colors.black12,
        width: disabled,
        style: _side._disabled?.style ?? BorderStyle.solid,
      ),
      dragged: BorderSide(
        color: _side._dragged?.color ?? Colors.black12,
        width: dragged,
        style: _side._dragged?.style ?? BorderStyle.solid,
      ),
      error: BorderSide(
        color: _side._error?.color ?? Colors.black12,
        width: error,
        style: _side._error?.style ?? BorderStyle.solid,
      ),
      focused: BorderSide(
        color: _side._focused?.color ?? Colors.black12,
        width: focused,
        style: _side._focused?.style ?? BorderStyle.solid,
      ),
      hovered: BorderSide(
        color: _side._hovered?.color ?? Colors.black12,
        width: hovered,
        style: _side._hovered?.style ?? BorderStyle.solid,
      ),
      pressed: BorderSide(
        color: _side._pressed?.color ?? Colors.black12,
        width: pressed,
        style: _side._pressed?.style ?? BorderStyle.solid,
      ),
      selected: BorderSide(
        color: _side._selected?.color ?? Colors.black12,
        width: selected,
        style: _side._selected?.style ?? BorderStyle.solid,
      ),
    );

    return this;
  }

  /// Apply styling to border color
  NTNikuButton bc(Color color) {
    _side.update(
      base: BorderSide(
        width: _side._base?.width ?? 1,
        color: color,
        style: _side._base?.style ?? BorderStyle.solid,
      ),
      disabled: BorderSide(
        width: _side._disabled?.width ?? 1,
        color: color,
        style: _side._disabled?.style ?? BorderStyle.solid,
      ),
      dragged: BorderSide(
        width: _side._dragged?.width ?? 1,
        color: color,
        style: _side._dragged?.style ?? BorderStyle.solid,
      ),
      error: BorderSide(
        width: _side._error?.width ?? 1,
        color: color,
        style: _side._error?.style ?? BorderStyle.solid,
      ),
      focused: BorderSide(
        width: _side._focused?.width ?? 1,
        color: color,
        style: _side._focused?.style ?? BorderStyle.solid,
      ),
      hovered: BorderSide(
        width: _side._hovered?.width ?? 1,
        color: color,
        style: _side._hovered?.style ?? BorderStyle.solid,
      ),
      pressed: BorderSide(
        width: _side._pressed?.width ?? 1,
        color: color,
        style: _side._pressed?.style ?? BorderStyle.solid,
      ),
      selected: BorderSide(
        width: _side._selected?.width ?? 1,
        color: color,
        style: _side._selected?.style ?? BorderStyle.solid,
      ),
    );

    return this;
  }

  /// Apply styling to border color
  NTNikuButton borderColor({
    Color base = Colors.black12,
    Color disabled = Colors.black12,
    Color dragged = Colors.black12,
    Color error = Colors.black12,
    Color focused = Colors.black12,
    Color hovered = Colors.black12,
    Color pressed = Colors.black12,
    Color selected = Colors.black12,
  }) {
    _side.update(
      base: BorderSide(
        width: _side._base?.width ?? 1,
        color: base,
        style: _side._base?.style ?? BorderStyle.solid,
      ),
      disabled: BorderSide(
        width: _side._disabled?.width ?? 1,
        color: disabled,
        style: _side._disabled?.style ?? BorderStyle.solid,
      ),
      dragged: BorderSide(
        width: _side._dragged?.width ?? 1,
        color: dragged,
        style: _side._dragged?.style ?? BorderStyle.solid,
      ),
      error: BorderSide(
        width: _side._error?.width ?? 1,
        color: error,
        style: _side._error?.style ?? BorderStyle.solid,
      ),
      focused: BorderSide(
        width: _side._focused?.width ?? 1,
        color: focused,
        style: _side._focused?.style ?? BorderStyle.solid,
      ),
      hovered: BorderSide(
        width: _side._hovered?.width ?? 1,
        color: hovered,
        style: _side._hovered?.style ?? BorderStyle.solid,
      ),
      pressed: BorderSide(
        width: _side._pressed?.width ?? 1,
        color: pressed,
        style: _side._pressed?.style ?? BorderStyle.solid,
      ),
      selected: BorderSide(
        width: _side._selected?.width ?? 1,
        color: selected,
        style: _side._selected?.style ?? BorderStyle.solid,
      ),
    );

    return this;
  }

  /// Apply [BorderStyle] to border
  NTNikuButton bs(BorderStyle style) {
    _side.update(
      base: BorderSide(
        width: _side._base?.width ?? 1,
        style: style,
        color: _side._base?.color ?? Colors.black12,
      ),
      disabled: BorderSide(
        width: _side._disabled?.width ?? 1,
        style: style,
        color: _side._disabled?.color ?? Colors.black12,
      ),
      dragged: BorderSide(
        width: _side._dragged?.width ?? 1,
        style: style,
        color: _side._dragged?.color ?? Colors.black12,
      ),
      error: BorderSide(
        width: _side._error?.width ?? 1,
        style: style,
        color: _side._error?.color ?? Colors.black12,
      ),
      focused: BorderSide(
        width: _side._focused?.width ?? 1,
        style: style,
        color: _side._focused?.color ?? Colors.black12,
      ),
      hovered: BorderSide(
        width: _side._hovered?.width ?? 1,
        style: style,
        color: _side._hovered?.color ?? Colors.black12,
      ),
      pressed: BorderSide(
        width: _side._pressed?.width ?? 1,
        style: style,
        color: _side._pressed?.color ?? Colors.black12,
      ),
      selected: BorderSide(
        width: _side._selected?.width ?? 1,
        style: style,
        color: _side._selected?.color ?? Colors.black12,
      ),
    );

    return this;
  }

  /// Apply [BorderStyle] to border
  NTNikuButton borderStyle({
    BorderStyle base = BorderStyle.solid,
    BorderStyle disabled = BorderStyle.solid,
    BorderStyle dragged = BorderStyle.solid,
    BorderStyle error = BorderStyle.solid,
    BorderStyle focused = BorderStyle.solid,
    BorderStyle hovered = BorderStyle.solid,
    BorderStyle pressed = BorderStyle.solid,
    BorderStyle selected = BorderStyle.solid,
  }) {
    _side.update(
      base: BorderSide(
        width: _side._base?.width ?? 1,
        style: base,
        color: _side._base?.color ?? Colors.black12,
      ),
      disabled: BorderSide(
        width: _side._disabled?.width ?? 1,
        style: disabled,
        color: _side._disabled?.color ?? Colors.black12,
      ),
      dragged: BorderSide(
        width: _side._dragged?.width ?? 1,
        style: dragged,
        color: _side._dragged?.color ?? Colors.black12,
      ),
      error: BorderSide(
        width: _side._error?.width ?? 1,
        style: error,
        color: _side._error?.color ?? Colors.black12,
      ),
      focused: BorderSide(
        width: _side._focused?.width ?? 1,
        style: focused,
        color: _side._focused?.color ?? Colors.black12,
      ),
      hovered: BorderSide(
        width: _side._hovered?.width ?? 1,
        style: hovered,
        color: _side._hovered?.color ?? Colors.black12,
      ),
      pressed: BorderSide(
        width: _side._pressed?.width ?? 1,
        style: pressed,
        color: _side._pressed?.color ?? Colors.black12,
      ),
      selected: BorderSide(
        width: _side._selected?.width ?? 1,
        style: selected,
        color: _side._selected?.color ?? Colors.black12,
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
  NTNikuButton s(RoundedRectangleBorder input) {
    _shape.updateAll(input);

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
  NTNikuButton shape({
    RoundedRectangleBorder? base,
    RoundedRectangleBorder? disabled,
    RoundedRectangleBorder? dragged,
    RoundedRectangleBorder? error,
    RoundedRectangleBorder? focused,
    RoundedRectangleBorder? hovered,
    RoundedRectangleBorder? pressed,
    RoundedRectangleBorder? selected,
  }) {
    _shape.update(
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
  NTNikuButton cursor({
    MouseCursor? base,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? selected,
  }) {
    _mouseCursor.update(
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
  NTNikuButton mouseCursor({
    MouseCursor? base,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? selected,
  }) {
    _mouseCursor.update(
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
  NTNikuButton clip(Clip clip) {
    _clipBehavior = clip;

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
  NTNikuButton autofocus(bool autofocus) {
    _autofocus = autofocus;

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
  NTNikuButton minSize(Size input) {
    _minimumSize.updateAll(input);

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
  NTNikuButton minimumSize(
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? selected,
  ) {
    _minimumSize.update(
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
  NTNikuButton animationDuration(Duration duration) {
    _animationDuration = duration;

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
  NTNikuButton duration(Duration duration) {
    _animationDuration = duration;

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
  NTNikuButton immediate() {
    _animationDuration = Duration.zero;

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
  NTNikuButton focusNode(FocusNode focusNode) {
    _focusNode = focusNode;

    return this;
  }

  /// Defines the visual density of user interface components.
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   visualDensity: input
  /// )
  /// ```
  NTNikuButton visualDensity(FocusNode focusNode) {
    _focusNode = focusNode;

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
  NTNikuButton tapTargetSize(MaterialTapTargetSize tapTargetSize) {
    _tapTargetSize = tapTargetSize;

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
  NTNikuButton rounded([double radius = 999999]) {
    _shape.updateAll(
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
  NTNikuButton label(Widget label) {
    _label = label;

    return this;
  }

  /// Apply existing NTNikuButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final padding = NTNikuButton(null)
  ///   .px(40)
  ///   .py(20)
  ///
  /// final blueBackground = NTNikuButton(null)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NTNikuButton(Text("Applied Style"))
  ///       .apply(padding) // Will have padding
  ///       .apply(blueBackground) // Will have blue background
  ///       .rounded(8)
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  NTNikuButton apply(NTNikuButton instance) => set(
        onPressed: instance._onPressed ?? _onPressed,
        onLongPressed: instance._onLongPressed ?? _onLongPressed,
        focusNode: instance._focusNode ?? _focusNode,
        autofocus: instance._autofocus,
        clipBehavior: instance._clipBehavior,
        backgroundColor: instance._backgroundColor.init
            ? _backgroundColor
            : instance._backgroundColor,
        foregroundColor: instance._foregroundColor.init
            ? _foregroundColor
            : instance._foregroundColor,
        overlayColor: instance._overlayColor.init
            ? _overlayColor
            : instance._overlayColor,
        shadowColor:
            instance._shadowColor.init ? _shadowColor : instance._shadowColor,
        elevation: instance._elevation.init ? _elevation : instance._elevation,
        pt: instance._pt == 0 ? _pt : instance._pt,
        pb: instance._pb == 0 ? _pb : instance._pb,
        pl: instance._pl == 0 ? _pl : instance._pl,
        pr: instance._pr == 0 ? _pr : instance._pr,
        mt: instance._mt == 0 ? _mt : instance._mt,
        mb: instance._mb == 0 ? _mb : instance._mb,
        ml: instance._ml == 0 ? _ml : instance._ml,
        mr: instance._mr == 0 ? _mr : instance._mr,
        minimumSize:
            instance._minimumSize.init ? _minimumSize : instance._minimumSize,
        side: instance._side.init ? _side : instance._side,
        shape: instance._shape.init ? _shape : instance._shape,
        mouseCursor:
            instance._mouseCursor.init ? _mouseCursor : instance._mouseCursor,
        visualDensity: instance._visualDensity ?? _visualDensity,
        tapTargetSize: instance._tapTargetSize ?? _tapTargetSize,
        animationDuration: instance._animationDuration ?? _animationDuration,
        enableFeedback: instance._enableFeedback,
        alignment: instance._alignment ?? _alignment,
        label: instance._label ?? _label,
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
  ///     NTNikuButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .build() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget build(BuildContext context) {
    if (_type == NTNikuButtonType.Elevated)
      return Container(
        margin: EdgeInsets.only(
          top: _mt,
          left: _ml,
          bottom: _mb,
          right: _mr,
        ),
        child: ElevatedButton(
          child: child,
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: _pt,
                left: _pl,
                bottom: _pb,
                right: _pr,
              ),
            ),
            backgroundColor: _composeMaterialState<Color>(_backgroundColor),
            foregroundColor: _composeMaterialState<Color>(_foregroundColor),
            overlayColor: _composeMaterialState<Color>(_overlayColor),
            shadowColor: _composeMaterialState<Color>(_shadowColor),
            elevation: _composeMaterialState<double>(_elevation),
            minimumSize: _composeMaterialState<Size>(_minimumSize),
            side: _composeMaterialState<BorderSide>(_side),
            shape: _composeMaterialState<OutlinedBorder>(_shape),
            mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
            visualDensity: _visualDensity,
            tapTargetSize: _tapTargetSize,
            animationDuration: _animationDuration,
            enableFeedback: _enableFeedback,
            alignment: _alignment,
          ),
        ),
      );

    if (_type == NTNikuButtonType.Outlined)
      return Container(
        margin: EdgeInsets.only(
          top: _mt,
          left: _ml,
          bottom: _mb,
          right: _mr,
        ),
        child: OutlinedButton(
          child: child,
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: _pt,
                left: _pl,
                bottom: _pb,
                right: _pr,
              ),
            ),
            backgroundColor: _composeMaterialState<Color>(_backgroundColor),
            foregroundColor: _composeMaterialState<Color>(_foregroundColor),
            overlayColor: _composeMaterialState<Color>(_overlayColor),
            shadowColor: _composeMaterialState<Color>(_shadowColor),
            elevation: _composeMaterialState<double>(_elevation),
            minimumSize: _composeMaterialState<Size>(_minimumSize),
            side: _composeMaterialState<BorderSide>(_side),
            shape: _composeMaterialState<RoundedRectangleBorder>(_shape),
            mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
            visualDensity: _visualDensity,
            tapTargetSize: _tapTargetSize,
            animationDuration: _animationDuration,
            enableFeedback: _enableFeedback,
            alignment: _alignment,
          ),
        ),
      );

    if (_type == NTNikuButtonType.TextIcon)
      return Container(
        margin: EdgeInsets.only(
          top: _mt,
          left: _ml,
          bottom: _mb,
          right: _mr,
        ),
        child: TextButton.icon(
          icon: child,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: _pt,
                left: _pl,
                bottom: _pb,
                right: _pr,
              ),
            ),
            backgroundColor: _composeMaterialState<Color>(_backgroundColor),
            foregroundColor: _composeMaterialState<Color>(_foregroundColor),
            overlayColor: _composeMaterialState<Color>(_overlayColor),
            shadowColor: _composeMaterialState<Color>(_shadowColor),
            elevation: _composeMaterialState<double>(_elevation),
            minimumSize: _composeMaterialState<Size>(_minimumSize),
            side: _composeMaterialState<BorderSide>(_side),
            shape: _composeMaterialState<OutlinedBorder>(_shape),
            mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
            visualDensity: _visualDensity,
            tapTargetSize: _tapTargetSize,
            animationDuration: _animationDuration,
            enableFeedback: _enableFeedback,
            alignment: _alignment,
          ),
        ),
      );

    if (_type == NTNikuButtonType.ElevatedIcon)
      return Container(
        margin: EdgeInsets.only(
          top: _mt,
          left: _ml,
          bottom: _mb,
          right: _mr,
        ),
        child: ElevatedButton.icon(
          icon: child,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: _pt,
                left: _pl,
                bottom: _pb,
                right: _pr,
              ),
            ),
            backgroundColor: _composeMaterialState<Color>(_backgroundColor),
            foregroundColor: _composeMaterialState<Color>(_foregroundColor),
            overlayColor: _composeMaterialState<Color>(_overlayColor),
            shadowColor: _composeMaterialState<Color>(_shadowColor),
            elevation: _composeMaterialState<double>(_elevation),
            minimumSize: _composeMaterialState<Size>(_minimumSize),
            side: _composeMaterialState<BorderSide>(_side),
            shape: _composeMaterialState<OutlinedBorder>(_shape),
            mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
            visualDensity: _visualDensity,
            tapTargetSize: _tapTargetSize,
            animationDuration: _animationDuration,
            enableFeedback: _enableFeedback,
            alignment: _alignment,
          ),
        ),
      );

    if (_type == NTNikuButtonType.OutlinedIcon)
      return Container(
        margin: EdgeInsets.only(
          top: _mt,
          left: _ml,
          bottom: _mb,
          right: _mr,
        ),
        child: OutlinedButton.icon(
          icon: child,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (_) => EdgeInsets.only(
                top: _pt,
                left: _pl,
                bottom: _pb,
                right: _pr,
              ),
            ),
            backgroundColor: _composeMaterialState<Color>(_backgroundColor),
            foregroundColor: _composeMaterialState<Color>(_foregroundColor),
            overlayColor: _composeMaterialState<Color>(_overlayColor),
            shadowColor: _composeMaterialState<Color>(_shadowColor),
            elevation: _composeMaterialState<double>(_elevation),
            minimumSize: _composeMaterialState<Size>(_minimumSize),
            side: _composeMaterialState<BorderSide>(_side),
            shape: _composeMaterialState<OutlinedBorder>(_shape),
            mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
            visualDensity: _visualDensity,
            tapTargetSize: _tapTargetSize,
            animationDuration: _animationDuration,
            enableFeedback: _enableFeedback,
            alignment: _alignment,
          ),
        ),
      );

    return Container(
      margin: EdgeInsets.only(
        top: _mt,
        left: _ml,
        bottom: _mb,
        right: _mr,
      ),
      child: TextButton(
        child: child,
        onPressed: _onPressed,
        onLongPress: _onLongPressed,
        focusNode: _focusNode,
        autofocus: _autofocus,
        clipBehavior: _clipBehavior,
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
            (_) => EdgeInsets.only(
              top: _pt,
              left: _pl,
              bottom: _pb,
              right: _pr,
            ),
          ),
          backgroundColor: _composeMaterialState<Color>(_backgroundColor),
          foregroundColor: _composeMaterialState<Color>(_foregroundColor),
          overlayColor: _composeMaterialState<Color>(_overlayColor),
          shadowColor: _composeMaterialState<Color>(_shadowColor),
          elevation: _composeMaterialState<double>(_elevation),
          minimumSize: _composeMaterialState<Size>(_minimumSize),
          side: _composeMaterialState<BorderSide>(_side),
          shape: _composeMaterialState<OutlinedBorder>(_shape),
          mouseCursor: _composeMaterialState<MouseCursor>(_mouseCursor),
          visualDensity: _visualDensity,
          tapTargetSize: _tapTargetSize,
          animationDuration: _animationDuration,
          enableFeedback: _enableFeedback,
          alignment: _alignment,
        ),
      ),
    );
  }

  /// Switch to Niku() property as [TextButton]
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NTNikuButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .niku()
  ///   .build() // Collect all style and render
  /// ```
  NTNiku niku() => NTNiku(
        Builder(
          builder: (context) => build(context),
        ),
      );

  NTNikuButton set({
    VoidCallback? onPressed,
    VoidCallback? onLongPressed,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    NTNikuMaterialPropertyContainer<Color>? backgroundColor,
    NTNikuMaterialPropertyContainer<Color>? foregroundColor,
    NTNikuMaterialPropertyContainer<Color>? overlayColor,
    NTNikuMaterialPropertyContainer<Color>? shadowColor,
    NTNikuMaterialPropertyContainer<double>? elevation,
    double pt = 0,
    double pb = 0,
    double pl = 0,
    double pr = 0,
    double mt = 0,
    double mb = 0,
    double ml = 0,
    double mr = 0,
    NTNikuMaterialPropertyContainer<Size>? minimumSize,
    NTNikuMaterialPropertyContainer<BorderSide>? side,
    NTNikuMaterialPropertyContainer<RoundedRectangleBorder>? shape,
    NTNikuMaterialPropertyContainer<MouseCursor>? mouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool enableFeedback = false,
    AlignmentGeometry? alignment,
    Widget? label,
  }) {
    _onPressed = onPressed;
    _onLongPressed = onLongPressed;
    _focusNode = focusNode;
    _autofocus = autofocus;
    _clipBehavior = clipBehavior;
    _backgroundColor = backgroundColor ?? NTNikuMaterialPropertyContainer();
    _foregroundColor = foregroundColor ?? NTNikuMaterialPropertyContainer();
    _overlayColor = overlayColor ?? NTNikuMaterialPropertyContainer();
    _shadowColor = shadowColor ?? NTNikuMaterialPropertyContainer();
    _elevation = elevation ?? NTNikuMaterialPropertyContainer();
    _pt = pt;
    _pb = pb;
    _pl = pl;
    _pr = pr;
    _mt = mt;
    _mb = mb;
    _ml = ml;
    _mr = mr;
    _minimumSize = minimumSize ?? NTNikuMaterialPropertyContainer();
    _side = side ?? NTNikuMaterialPropertyContainer();
    _shape = shape ?? NTNikuMaterialPropertyContainer();
    _mouseCursor = mouseCursor ?? NTNikuMaterialPropertyContainer();
    _visualDensity = visualDensity;
    _tapTargetSize = tapTargetSize;
    _animationDuration = animationDuration;
    _enableFeedback = enableFeedback;
    _alignment = alignment;
    _label = label;

    return this;
  }

  static MaterialStateProperty<T?> _composeMaterialState<T>(
    NTNikuMaterialPropertyContainer<T>? property,
  ) =>
      MaterialStateProperty.resolveWith<T?>(
        (states) {
          if (states.contains(MaterialState.disabled))
            return property?._disabled;
          if (states.contains(MaterialState.dragged)) return property?._dragged;
          if (states.contains(MaterialState.error)) return property?._error;
          if (states.contains(MaterialState.focused)) return property?._focused;
          if (states.contains(MaterialState.hovered)) return property?._hovered;
          if (states.contains(MaterialState.pressed)) return property?._pressed;
          if (states.contains(MaterialState.selected))
            return property?._selected;

          return property?._base;
        },
      );
}

class NTNikuMaterialPropertyContainer<T> {
  T? _base;
  T? _disabled;
  T? _dragged;
  T? _error;
  T? _focused;
  T? _hovered;
  T? _pressed;
  T? _selected;

  bool init = true;

  get value => this;

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
    _base = _base ?? base;
    _disabled = _disabled ?? disabled;
    _dragged = _dragged ?? dragged;
    _error = _error ?? error;
    _focused = _focused ?? focused;
    _hovered = _hovered ?? hovered;
    _pressed = _selected ?? pressed;
    _selected = _selected ?? selected;

    init = false;
  }

  void updateAll(T input) {
    _base = input;
    _disabled = input;
    _dragged = input;
    _error = input;
    _focused = input;
    _hovered = input;
    _pressed = input;
    _selected = input;

    init = false;
  }
}

enum NTNikuButtonType {
  Text,
  TextIcon,
  Elevated,
  ElevatedIcon,
  Outlined,
  OutlinedIcon
}
