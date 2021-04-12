// ignore_for_file: non_constant_identifier_names
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:niku/widget/core.dart';

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
/// NikuButton(Text("Text Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///
/// NikuButton.elevated(Text("Elevated Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///
/// NikuButton.outlinedIcon(Text("Elevated Button"))
///   .bg(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Build as [TextButton]
/// - apply() - Apply existing NikuFlatButton's property to current style
///
/// Factory Method
/// - elevated() - Build as [ElevatedButton]
/// - outlined() - Build as [OutlinedButton]
/// - icon() - Build as [TextButton.icon]
/// - elevatedIcon() - Build as [ElevatedButton.icon]
/// - outlinedIcon() - Build as [OutlinedButton.icon]
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
///
///
/// - textColor - Color of text
/// - fontSize - Set text size
/// - fontWeight - Font weight
///   - fontWeight - Set font weight of text
///   - bold - Set font to bold, equivalent to w700()
///   - w100 - Use font weight of 100
///   - w200 - Use font weight of 200
///   - w300 - Use font weight of 300
///   - w400 - Use font weight of 400
///   - w500 - Use font weight of 500
///   - w600 - Use font weight of 600
///   - w700 - Use font weight of 700
///   - w800 - Use font weight of 800
///   - w900 - Use font weight of 900
/// - fontWeight - The thickness of the glyphs used to draw the text
/// - fontStyle - Whether to slant the glyphs in the font
///   - fontStyle - Use [FontStyle] to apply
///   - italic - Use italic style
/// - letterSpacing - Spacing for each letter
/// - wordSpacing - Spacing for each word
/// - textBaseline - A horizontal line used for aligning text
///   - alphabetic - Using [TextBaseline.alphabetic]
///   - ideographic - Using [TextBaseline.ideographic]
class NikuButton extends NikuCore {
  final Widget child;
  final NikuButtonType type;
  final Key? key;

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

  NikuMaterialPropertyContainer<Size> getMinimumSize =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<BorderSide> _side =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<RoundedRectangleBorder> _shape =
      NikuMaterialPropertyContainer();
  NikuMaterialPropertyContainer<MouseCursor> getMouseCursor =
      NikuMaterialPropertyContainer();

  VisualDensity? _visualDensity;
  MaterialTapTargetSize? _tapTargetSize;
  Duration? _animationDuration;
  bool _enableFeedback = false;
  AlignmentGeometry? _alignment;

  Widget? _label;

  // Input Label Style
  NikuMaterialPropertyContainer<Color> _text_color =
      NikuMaterialPropertyContainer();
  Color? _text_backgroundColor;
  double? _text_fontSize;
  FontWeight? _text_fontWeight;
  FontStyle? _text_fontStyle;
  double? _text_letterSpacing;
  double? _text_wordSpacing;
  double? _text_height;
  Paint? _text_foreground;
  Paint? _text_background;
  List<Shadow>? _text_shadows;
  List<FontFeature>? _text_fontFeatures;
  TextDecoration? _text_textDecoration;
  Color? _text_textDecorationColor;
  double? _text_textDecorationThickness;
  String? _text_fontFamily;
  List<String>? _text_fontFamilyFallback;
  TextBaseline? _text_textBaseline;

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
  ///
  /// NikuButton.elevated(Text("Flat Button"))
  ///   .bg(Colors.blue)
  ///   .px(40)
  ///   .py(20)
  ///   .rounded(8)
  ///   .my(8)
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build() - Build as [TextButton]
  /// - apply() - Apply existing NikuFlatButton's property to current style
  ///
  /// Factory Method
  /// - elevated() - Build as [ElevatedButton]
  /// - outlined() - Build as [OutlinedButton]
  /// - icon() - Build as [TextButton.icon]
  /// - elevatedIcon() - Build as [ElevatedButton.icon]
  /// - outlinedIcon() - Build as [OutlinedButton.icon]
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
  ///
  /// - textColor - Color of text
  /// - fontSize - Set text size
  /// - fontWeight - Font weight
  ///   - fontWeight - Set font weight of text
  ///   - bold - Set font to bold, equivalent to w700()
  ///   - w100 - Use font weight of 100
  ///   - w200 - Use font weight of 200
  ///   - w300 - Use font weight of 300
  ///   - w400 - Use font weight of 400
  ///   - w500 - Use font weight of 500
  ///   - w600 - Use font weight of 600
  ///   - w700 - Use font weight of 700
  ///   - w800 - Use font weight of 800
  ///   - w900 - Use font weight of 900
  /// - fontWeight - The thickness of the glyphs used to draw the text
  /// - fontStyle - Whether to slant the glyphs in the font
  ///   - fontStyle - Use [FontStyle] to apply
  ///   - italic - Use italic style
  /// - letterSpacing - Spacing for each letter
  /// - wordSpacing - Spacing for each word
  /// - textBaseline - A horizontal line used for aligning text
  ///   - alphabetic - Using [TextBaseline.alphabetic]
  ///   - ideographic - Using [TextBaseline.ideographic]
  NikuButton(
    this.child, {
    this.type = NikuButtonType.Text,
    this.key,
  });

  factory NikuButton.icon(Widget child, {Key? key}) {
    return NikuButton(
      child,
      type: NikuButtonType.TextIcon,
      key: key,
    );
  }

  factory NikuButton.elevated(Widget child, {Key? key}) {
    return NikuButton(
      child,
      type: NikuButtonType.Elevated,
      key: key,
    );
  }

  factory NikuButton.elevatedIcon(Widget child, {Key? key}) {
    return NikuButton(
      child,
      type: NikuButtonType.ElevatedIcon,
      key: key,
    );
  }

  factory NikuButton.outlined(Widget child, {Key? key}) {
    return NikuButton(
      child,
      type: NikuButtonType.Outlined,
      key: key,
    );
  }

  factory NikuButton.outlinedIcon(Widget child, {Key? key}) {
    return NikuButton(
      child,
      type: NikuButtonType.OutlinedIcon,
      key: key,
    );
  }

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuButton onPressed(VoidCallback callback) {
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
  NikuButton onLongPressed(VoidCallback callback) {
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
  NikuButton padding(EdgeInsets padding) {
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
  NikuButton p(double padding) {
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
  NikuButton px(double padding) {
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
  NikuButton py(double padding) {
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
  NikuButton pt(double padding) {
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
  NikuButton pl(double padding) {
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
  NikuButton pb(double padding) {
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
  NikuButton pr(double padding) {
    _pr = padding;

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// TextButton(
  ///   alignment: input
  /// )
  /// ```top
  NikuButton alignment(Alignment align) {
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
  NikuButton align(Alignment align) {
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
  NikuButton topLeft() {
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
  NikuButton topCenter() {
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
  NikuButton topRight() {
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
  NikuButton centerLeft() {
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
  NikuButton center() {
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
  NikuButton centerRight() {
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
  NikuButton bottomLeft() {
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
  NikuButton bottomCenter() {
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
  NikuButton bottomRight() {
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
  NikuButton bg(Color color) {
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
  ///     if (states.contains(MaterialState.focused)) return input;
  ///     if (states.contains(MaterialState.hovered)) return input;
  ///     if (states.contains(MaterialState.pressed)) return input;
  ///     if (states.contains(MaterialState.selected)) return input;
  ///
  ///     return null
  ///   })
  /// )
  /// ```
  NikuButton highlight(Color highlight) {
    _backgroundColor.update(
      hovered: highlight,
      focused: highlight,
      pressed: highlight,
      selected: highlight,
    );

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
  NikuButton overlay(Color base) {
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
  NikuButton splash(Color base) {
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
  NikuButton shadow(Color base) {
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
  NikuButton b(BorderSide input) {
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
  NikuButton bw(double width) {
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
  NikuButton bc(Color color) {
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
  NikuButton bs(BorderStyle style) {
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
  NikuButton s(RoundedRectangleBorder input) {
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
    getMouseCursor.update(
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
    getMouseCursor.update(
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
  NikuButton autofocus(bool autofocus) {
    _autofocus = autofocus;

    return this;
  }

  /// Set minimum size of button
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   minimumSize: MaterialStateProperty.resolveWith<T>((states) {
  ///     return base;
  ///   });
  /// )
  /// ```
  NikuButton minSize(Size input) {
    getMinimumSize.updateAll(input);

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
    getMinimumSize.update(
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
  NikuButton duration(Duration duration) {
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
  NikuButton immediate() {
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
  NikuButton focusNode(FocusNode focusNode) {
    _focusNode = focusNode;

    return this;
  }

  /// Defines the visual density of user interface components.
  ///
  /// Equivalent to
  /// ```
  /// TextButton(
  ///   visualDensity: input
  /// )
  /// ```
  NikuButton visualDensity(VisualDensity visualDensity) {
    _visualDensity = visualDensity;

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
  NikuButton rounded([double radius = 999999]) {
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
  NikuButton label(Widget label) {
    _label = label;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuButton textColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? selected,
  }) {
    _text_color.update(
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

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuButton textColors(Color color) {
    _text_color.update(
      base: color,
      disabled: color,
      dragged: color,
      error: color,
      focused: color,
      hovered: color,
      pressed: color,
      selected: color,
    );

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuButton textBackgroundColor(Color backgroundColor) {
    _text_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuButton textBg(Color backgroundColor) {
    _text_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuButton fontSize(double fontSize) {
    _text_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuButton fontWeight(FontWeight fontWeight) {
    _text_fontWeight = fontWeight;

    return this;
  }

  /// Set font to bold, using [FontWeight.bold]
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.bold)
  /// ```
  NikuButton bold() {
    _text_fontWeight = FontWeight.bold;

    return this;
  }

  /// Use font weight of 100
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.100)
  /// ```
  NikuButton w100() {
    _text_fontWeight = FontWeight.w100;

    return this;
  }

  /// Use font weight of 200
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.200)
  /// ```
  NikuButton w200() {
    _text_fontWeight = FontWeight.w200;

    return this;
  }

  /// Use font weight of 300
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.300)
  /// ```
  NikuButton w300() {
    _text_fontWeight = FontWeight.w300;

    return this;
  }

  /// Use font weight of 400
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.400)
  /// ```
  NikuButton w400() {
    _text_fontWeight = FontWeight.w400;

    return this;
  }

  /// Use font weight of 500
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.500)
  /// ```
  NikuButton w500() {
    _text_fontWeight = FontWeight.w500;

    return this;
  }

  /// Use font weight of 600
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.600)
  /// ```
  NikuButton w600() {
    _text_fontWeight = FontWeight.w600;

    return this;
  }

  /// Use font weight of 700
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.700)
  /// ```
  NikuButton w700() {
    _text_fontWeight = FontWeight.w700;

    return this;
  }

  /// Use font weight of 800
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.800)
  /// ```
  NikuButton w800() {
    _text_fontWeight = FontWeight.w800;

    return this;
  }

  /// Use font weight of 900
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontWeight: FontWeight.900)
  /// ```
  NikuButton w900() {
    _text_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuButton fontStyle(FontStyle fontStyle) {
    _text_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuButton italic() {
    _text_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuButton letterSpacing(double letterSpacing) {
    _text_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuButton wordSpacing(double wordSpacing) {
    _text_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuButton textHeight(double height) {
    _text_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuButton textForeground(Paint foreground) {
    _text_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuButton textBackground(Paint foreground) {
    _text_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuButton textShadows(List<Shadow> shadows) {
    _text_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuButton fontFeatures(List<FontFeature> fontFeatures) {
    _text_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuButton textDecoration(TextDecoration textDecoration) {
    _text_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuButton textDecorationColor(Color textDecorationColor) {
    _text_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuButton textDecorationThickness(double textDecorationThickness) {
    _text_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuButton fontFamily(String fontFamily) {
    _text_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuButton fontFamilyFallback(List<String> fontFamily) {
    _text_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuButton textBaseline(TextBaseline textBaseline) {
    _text_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuButton alphabetic() {
    _text_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuButton ideographic() {
    _text_textBaseline = TextBaseline.ideographic;

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
  ///       .rounded(8) // Will have border radius of 8px
  ///   )
  /// }
  /// ```
  NikuButton apply(NikuButton instance) => set(
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
        mt: instance.getMt == 0 ? getMt : instance.getMt,
        mb: instance.getMb == 0 ? getMb : instance.getMb,
        ml: instance.getMl == 0 ? getMl : instance.getMl,
        mr: instance.getMr == 0 ? getMr : instance.getMr,
        minimumSize: instance.getMinimumSize.init
            ? getMinimumSize
            : instance.getMinimumSize,
        side: instance._side.init ? _side : instance._side,
        shape: instance._shape.init ? _shape : instance._shape,
        mouseCursor: instance.getMouseCursor.init
            ? getMouseCursor
            : instance.getMouseCursor,
        visualDensity: instance._visualDensity ?? _visualDensity,
        tapTargetSize: instance._tapTargetSize ?? _tapTargetSize,
        animationDuration: instance._animationDuration ?? _animationDuration,
        enableFeedback: instance._enableFeedback,
        alignment: instance._alignment ?? _alignment,
        label: instance._label ?? _label,
        text_color:
            instance._text_color.init ? _text_color : instance._text_color,
        text_backgroundColor:
            instance._text_backgroundColor ?? instance._text_backgroundColor,
        text_fontSize: instance._text_fontSize ?? instance._text_fontSize,
        text_fontWeight: instance._text_fontWeight ?? instance._text_fontWeight,
        text_fontStyle: instance._text_fontStyle ?? instance._text_fontStyle,
        text_letterSpacing:
            instance._text_letterSpacing ?? instance._text_letterSpacing,
        text_wordSpacing:
            instance._text_wordSpacing ?? instance._text_wordSpacing,
        text_height: instance._text_height ?? instance._text_height,
        text_foreground: instance._text_foreground ?? instance._text_foreground,
        text_background: instance._text_background ?? instance._text_background,
        text_shadows: instance._text_shadows ?? instance._text_shadows,
        text_fontFeatures:
            instance._text_fontFeatures ?? instance._text_fontFeatures,
        text_textDecoration:
            instance._text_textDecoration ?? instance._text_textDecoration,
        text_textDecorationColor: instance._text_textDecorationColor ??
            instance._text_textDecorationColor,
        text_textDecorationThickness: instance._text_textDecorationThickness ??
            instance._text_textDecorationThickness,
        text_fontFamily: instance._text_fontFamily ?? instance._text_fontFamily,
        text_fontFamilyFallback: instance._text_fontFamilyFallback ??
            instance._text_fontFamilyFallback,
        text_textBaseline:
            instance._text_textBaseline ?? instance._text_textBaseline,
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
  ///   )
  /// }
  /// ```
  @override
  Widget build(BuildContext context) {
    final composeTextStyle = ({
      Color? color,
    }) =>
        TextStyle(
          color: color,
          backgroundColor: _text_backgroundColor,
          fontSize: _text_fontSize,
          fontWeight: _text_fontWeight,
          fontStyle: _text_fontStyle,
          letterSpacing: _text_letterSpacing,
          wordSpacing: _text_wordSpacing,
          height: _text_height,
          foreground: _text_foreground,
          background: _text_background,
          shadows: _text_shadows,
          fontFeatures: _text_fontFeatures,
          decoration: _text_textDecoration,
          decorationColor: _text_textDecorationColor,
          decorationThickness: _text_textDecorationThickness,
          fontFamily: _text_fontFamily,
          fontFamilyFallback: _text_fontFamilyFallback,
          textBaseline: _text_textBaseline,
        );

    final buttonStyle = ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(MaterialState.disabled))
          return composeTextStyle(color: _text_color._disabled);
        if (states.contains(MaterialState.dragged))
          return composeTextStyle(color: _text_color._dragged);
        if (states.contains(MaterialState.error))
          return composeTextStyle(color: _text_color._error);
        if (states.contains(MaterialState.focused))
          return composeTextStyle(color: _text_color._focused);
        if (states.contains(MaterialState.hovered))
          return composeTextStyle(color: _text_color._hovered);
        if (states.contains(MaterialState.pressed))
          return composeTextStyle(color: _text_color._pressed);
        if (states.contains(MaterialState.selected))
          return composeTextStyle(color: _text_color._selected);

        return composeTextStyle(color: _text_color._base);
      }),
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
      minimumSize: _composeMaterialState<Size>(getMinimumSize),
      side: _composeMaterialState<BorderSide>(_side),
      shape: _composeMaterialState<OutlinedBorder>(_shape),
      mouseCursor: _composeMaterialState<MouseCursor>(getMouseCursor),
      visualDensity: _visualDensity,
      tapTargetSize: _tapTargetSize,
      animationDuration: _animationDuration,
      enableFeedback: _enableFeedback,
      alignment: _alignment,
    );

    if (type == NikuButtonType.Elevated)
      return internalBuild(
        ElevatedButton(
          child: child,
          key: key,
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: buttonStyle,
        ),
      );

    if (type == NikuButtonType.Outlined)
      return internalBuild(
        OutlinedButton(
          child: child,
          key: key,
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: buttonStyle,
        ),
      );

    if (type == NikuButtonType.TextIcon)
      return internalBuild(
        TextButton.icon(
          icon: child,
          key: key,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: buttonStyle,
        ),
      );

    if (type == NikuButtonType.ElevatedIcon)
      return internalBuild(
        ElevatedButton.icon(
          icon: child,
          key: key,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: buttonStyle,
        ),
      );

    if (type == NikuButtonType.OutlinedIcon)
      return internalBuild(
        OutlinedButton.icon(
          icon: child,
          key: key,
          label: _label ?? Text("Icon Button"),
          onPressed: _onPressed,
          onLongPress: _onLongPressed,
          focusNode: _focusNode,
          autofocus: _autofocus,
          clipBehavior: _clipBehavior,
          style: buttonStyle,
        ),
      );

    return internalBuild(
      TextButton(
        child: child,
        key: key,
        onPressed: _onPressed,
        onLongPress: _onLongPressed,
        focusNode: _focusNode,
        autofocus: _autofocus,
        clipBehavior: _clipBehavior,
        style: buttonStyle,
      ),
    );
  }

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
  /// ```
  Niku niku() => Niku(
        Builder(
          builder: (context) => build(context),
        ),
        key,
      );

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
    NikuMaterialPropertyContainer<Color>? text_color,
    Color? text_backgroundColor,
    double? text_fontSize,
    FontWeight? text_fontWeight,
    FontStyle? text_fontStyle,
    double? text_letterSpacing,
    double? text_wordSpacing,
    double? text_height,
    Paint? text_foreground,
    Paint? text_background,
    List<Shadow>? text_shadows,
    List<FontFeature>? text_fontFeatures,
    TextDecoration? text_textDecoration,
    Color? text_textDecorationColor,
    double? text_textDecorationThickness,
    String? text_fontFamily,
    List<String>? text_fontFamilyFallback,
    TextBaseline? text_textBaseline,
  }) {
    _onPressed = onPressed;
    _onLongPressed = onLongPressed;
    _focusNode = focusNode;
    _autofocus = autofocus;
    _clipBehavior = clipBehavior;
    _backgroundColor.update(
      base: backgroundColor?._base,
      disabled: backgroundColor?._disabled,
      dragged: backgroundColor?._dragged,
      error: backgroundColor?._error,
      focused: backgroundColor?._focused,
      hovered: backgroundColor?._hovered,
      pressed: backgroundColor?._pressed,
    );
    _foregroundColor.update(
      base: foregroundColor?._base,
      disabled: foregroundColor?._disabled,
      dragged: foregroundColor?._dragged,
      error: foregroundColor?._error,
      focused: foregroundColor?._focused,
      hovered: foregroundColor?._hovered,
      pressed: foregroundColor?._pressed,
    );
    _overlayColor.update(
      base: overlayColor?._base,
      disabled: overlayColor?._disabled,
      dragged: overlayColor?._dragged,
      error: overlayColor?._error,
      focused: overlayColor?._focused,
      hovered: overlayColor?._hovered,
      pressed: overlayColor?._pressed,
    );
    _shadowColor.update(
      base: shadowColor?._base,
      disabled: shadowColor?._disabled,
      dragged: shadowColor?._dragged,
      error: shadowColor?._error,
      focused: shadowColor?._focused,
      hovered: shadowColor?._hovered,
      pressed: shadowColor?._pressed,
    );
    _elevation.update(
      base: elevation?._base,
      disabled: elevation?._disabled,
      dragged: elevation?._dragged,
      error: elevation?._error,
      focused: elevation?._focused,
      hovered: elevation?._hovered,
      pressed: elevation?._pressed,
    );
    _pt = pt;
    _pb = pb;
    _pl = pl;
    _pr = pr;
    super.mt(mt);
    super.mb(mb);
    super.ml(ml);
    super.mr(mr);
    getMinimumSize.update(
      base: minimumSize?._base,
      disabled: minimumSize?._disabled,
      dragged: minimumSize?._dragged,
      error: minimumSize?._error,
      focused: minimumSize?._focused,
      hovered: minimumSize?._hovered,
      pressed: minimumSize?._pressed,
    );
    _side.update(
      base: side?._base,
      disabled: side?._disabled,
      dragged: side?._dragged,
      error: side?._error,
      focused: side?._focused,
      hovered: side?._hovered,
      pressed: side?._pressed,
    );
    _shape.update(
      base: shape?._base,
      disabled: shape?._disabled,
      dragged: shape?._dragged,
      error: shape?._error,
      focused: shape?._focused,
      hovered: shape?._hovered,
      pressed: shape?._pressed,
    );
    getMouseCursor.update(
      base: mouseCursor?._base,
      disabled: mouseCursor?._disabled,
      dragged: mouseCursor?._dragged,
      error: mouseCursor?._error,
      focused: mouseCursor?._focused,
      hovered: mouseCursor?._hovered,
      pressed: mouseCursor?._pressed,
    );
    _visualDensity = visualDensity;
    _tapTargetSize = tapTargetSize;
    _animationDuration = animationDuration;
    _enableFeedback = enableFeedback;
    _alignment = alignment;
    _label = label;

    _text_color.update(
      base: text_color?._base,
      disabled: text_color?._disabled,
      dragged: text_color?._dragged,
      error: text_color?._error,
      focused: text_color?._focused,
      hovered: text_color?._hovered,
      pressed: text_color?._pressed,
    );
    _text_backgroundColor = text_backgroundColor;
    _text_fontSize = text_fontSize;
    _text_fontWeight = text_fontWeight;
    _text_fontStyle = text_fontStyle;
    _text_letterSpacing = text_letterSpacing;
    _text_wordSpacing = text_wordSpacing;
    _text_height = text_height;
    _text_foreground = text_foreground;
    _text_background = text_background;
    _text_shadows = text_shadows;
    _text_fontFeatures = text_fontFeatures;
    _text_textDecoration = text_textDecoration;
    _text_textDecorationColor = text_textDecorationColor;
    _text_textDecorationThickness = text_textDecorationThickness;
    _text_fontFamily = text_fontFamily;
    _text_fontFamilyFallback = text_fontFamilyFallback;
    _text_textBaseline = text_textBaseline;

    return this;
  }

  static MaterialStateProperty<T?> _composeMaterialState<T>(
    NikuMaterialPropertyContainer<T>? property,
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

class NikuMaterialPropertyContainer<T> {
  T? _base;
  T? _disabled;
  T? _dragged;
  T? _error;
  T? _focused;
  T? _hovered;
  T? _pressed;
  T? _selected;

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

enum NikuButtonType {
  Text,
  TextIcon,
  Elevated,
  ElevatedIcon,
  Outlined,
  OutlinedIcon
}
