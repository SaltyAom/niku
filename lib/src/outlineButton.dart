import 'package:flutter/material.dart';

import 'dart:ui';

import './base.dart';

/// Niku extension for Material Outline Button
///
/// Style property builder for building Outline Button
///
/// Example usage:
/// ```
/// NikuOutlineButton(Text("Outline Button"))
///   .color(Colors.blue)
///   .px(40)
///   .py(20)
///   .rounded(8)
///   .my(8)
///   .build()
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Apply styles and build OutlineButton as Widget
/// - base() - Apply styles and build only base of OutlineButton as Widget
/// - apply() - Apply existing NikuOutlineButton's property to current style
/// - style() - Apply existing NikuOutlineButton's property to current style and build
/// - styleBase() - Apply existing NikuOutlineButton's property to current style and build only base
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
/// - setColor - Apply color to all button property
///   - setColor - Apply all color property using named property
///   - bg, color - Apply color to button background
///   - disabled - Background color of button when disabled
///   - hover - Background color of button when hovered
///   - focus - Background color of button when focused
///   - highlight - Background color of button when highlighted
///   - splash - Splash/Ripple color of button
/// - textColor - Set text color of button, won't override existing color
/// - shape - Apply custom shape to button
/// - clip - Apply clip to button
/// - autofocus - Determine whether button should be auto focus
/// - theme - Apply style to button using existing theme
/// - rounded - Apply border radius to button, will override shape
/// - border, borderSide - Set border of button
///   - border, borderSide - Set border using [BorderSide]
///   - borderWidth - Set border width
///   - borderColor - Set border color
///   - borderStyle - Set border style
///  - setBorderColor - Set all border color
///   - color - Set border color
///   - highlightBorderColor - Set border color when highlighted
///   - disabledBorderColor - Set border color when disabled
class NikuOutlineButton {
  Widget child;
  VoidCallback _onPressed;
  VoidCallback _onLongPressed;

  double _pt;
  double _pb;
  double _pl;
  double _pr;
  double _mt = 0;
  double _mb = 0;
  double _ml = 0;
  double _mr = 0;
  Color _color;
  Color _focusColor;
  Color _hoverColor;
  Color _highlightColor;
  Color _splashColor;
  Color _textColor;
  BorderSide _borderSide;
  Color _disabledBorderColor;
  Color _highlightedBorderColor;
  ShapeBorder _shape;
  Clip _clipBehavior = Clip.none;
  bool _autofocus = false;
  ButtonTextTheme _buttonTextTheme;

  /// Niku extension for Material Outline Button
  ///
  /// Style property builder for building Outline Button
  ///
  /// Example usage:
  /// ```
  /// NikuOutlineButton(Text("Outline Button"))
  ///   .color(Colors.blue)
  ///   .px(40)
  ///   .py(20)
  ///   .rounded(8)
  ///   .my(8)
  ///   .build()
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build() - Apply styles and build OutlineButton as Widget
  /// - base() - Apply styles and build only base of OutlineButton as Widget
  /// - apply() - Apply existing NikuOutlineButton's property to current style
  /// - style() - Apply existing NikuOutlineButton's property to current style and build
  /// - styleBase() - Apply existing NikuOutlineButton's property to current style and build only base
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
  /// - setColor - Apply color to all button property
  ///   - setColor - Apply all color property using named property
  ///   - bg, color - Apply color to button background
  ///   - disabled - Background color of button when disabled
  ///   - hover - Background color of button when hovered
  ///   - focus - Background color of button when focused
  ///   - highlight - Background color of button when highlighted
  ///   - splash - Splash/Ripple color of button
  /// - textColor - Set text color of button, won't override existing color
  /// - shape - Apply custom shape to button
  /// - clip - Apply clip to button
  /// - autofocus - Determine whether button should be auto focus
  /// - theme - Apply style to button using existing theme
  /// - rounded - Apply border radius to button, will override shape
  /// - border, borderSide - Set border of button
  ///   - border, borderSide - Set border using [BorderSide]
  ///   - borderWidth - Set border width
  ///   - borderColor - Set border color
  ///   - borderStyle - Set border style
  ///  - setBorderColor - Set all border color
  ///   - color - Set border color
  ///   - highlightBorderColor - Set border color when highlighted
  ///   - disabledBorderColor - Set border color when disabled
  NikuOutlineButton(Widget child) {
    this.child = child;
  }

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuOutlineButton onPressed(VoidCallback callback) {
    this._onPressed = callback;

    return this;
  }

  /// Callback when button is long pressed
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   onLongPressed: input
  /// )
  /// ```
  NikuOutlineButton onLongPressed(VoidCallback callback) {
    this._onLongPressed = callback;

    return this;
  }

  /// Apply padding using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: input
  /// )
  /// ```
  NikuOutlineButton padding(EdgeInsets padding) {
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
  /// OutlineButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuOutlineButton p(double padding) {
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
  /// OutlineButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuOutlineButton px(double padding) {
    this._pl = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuOutlineButton py(double padding) {
    this._pt = padding;
    this._pb = padding;

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuOutlineButton pt(double padding) {
    this._pt = padding;

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuOutlineButton pl(double padding) {
    this._pl = padding;

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuOutlineButton pb(double padding) {
    this._pb = padding;

    return this;
  }

  /// Apply padding to right
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   padding: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuOutlineButton pr(double padding) {
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
  NikuOutlineButton margin(EdgeInsets padding) {
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
  NikuOutlineButton m(double margin) {
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
  NikuOutlineButton mx(double margin) {
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
  NikuOutlineButton my(double margin) {
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
  NikuOutlineButton mt(double margin) {
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
  NikuOutlineButton ml(double margin) {
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
  NikuOutlineButton mb(double margin) {
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
  NikuOutlineButton mr(double margin) {
    this._mr = margin;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   color: input
  /// )
  /// ```
  NikuOutlineButton bg(Color color) {
    this._color = color;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   color: input
  /// )
  /// ```
  NikuOutlineButton color(Color color) {
    this._color = color;

    return this;
  }

  /// Background color of button when focused
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   focusColor: input
  /// )
  /// ```
  NikuOutlineButton focus(Color color) {
    this._focusColor = color;

    return this;
  }

  /// Background color of button when hovered
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   hoverColor: input
  /// )
  /// ```
  NikuOutlineButton hover(Color color) {
    this._hoverColor = color;

    return this;
  }

  /// Background color of button when highlighted
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   highlightColor: input
  /// )
  /// ```
  NikuOutlineButton highlight(Color color) {
    this._highlightColor = color;

    return this;
  }

  /// Splash/Ripple color of button
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuOutlineButton splash(Color color) {
    this._splashColor = color;

    return this;
  }

  /// Set text color of button, won't override existing color
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuOutlineButton textColor(Color color) {
    this._textColor = color;

    return this;
  }

  /// Apply all color property using named property
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   color: color
  ///   disabled: disabled,
  ///   focus: focus,
  ///   hover: hover,
  ///   highlight: highlight,
  ///   splash: splash
  /// )
  /// ```
  NikuOutlineButton setColor(
      {Color color, Color focus, Color hover, Color highlight, Color splash}) {
    this._color = color;
    this._focusColor = focus;
    this._hoverColor = hover;
    this._highlightColor = highlight;
    this._splashColor = highlight;

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   shape: input
  /// )
  /// ```
  NikuOutlineButton shape(ShapeBorder shape) {
    this._shape = shape;

    return this;
  }

  /// Apply clip to button
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuOutlineButton clip(Clip clip) {
    this._clipBehavior = clip;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   autofocus: input
  /// )
  /// ```
  NikuOutlineButton autofocus(bool autofocus) {
    this._autofocus = autofocus;

    return this;
  }

  /// Apply style to button using existing theme
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   textTheme: input
  /// )
  /// ```
  NikuOutlineButton theme(ButtonTextTheme theme) {
    this._buttonTextTheme = theme;

    return this;
  }

  /// Apply border radius to button, will override shape
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   shape: RoundedRectangleBorder(
  ///     borderRadius: BorderRadius.circular(input)
  ///   )
  /// );
  /// ```
  NikuOutlineButton rounded([double radius = 999999]) {
    this._shape =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

    return this;
  }

  /// Set border using [BorderSide]
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: input
  /// );
  /// ```
  NikuOutlineButton border(BorderSide borderSide) {
    this._borderSide = borderSide;

    return this;
  }

  /// Set border using [BorderSide]
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: input
  /// );
  /// ```
  NikuOutlineButton borderSide(BorderSide borderSide) {
    this._borderSide = borderSide;

    return this;
  }

  /// Set border width
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: BorderSide(
  ///     width: input
  ///   )
  /// );
  /// ```
  NikuOutlineButton borderWidth(double width) {
    this._borderSide = BorderSide(
        color: this._borderSide.color,
        width: width,
        style: this._borderSide.style);

    return this;
  }

  /// Set border color
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: BorderSide(
  ///     color: input
  ///   )
  /// );
  /// ```
  NikuOutlineButton borderColor(Color color) {
    this._borderSide = BorderSide(
        color: color,
        width: this._borderSide.width,
        style: this._borderSide.style);

    return this;
  }

  /// Set border style
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: BorderSide(
  ///     style: input
  ///   )
  /// );
  /// ```
  NikuOutlineButton borderStyle(BorderStyle style) {
    this._borderSide = BorderSide(
        color: this._borderSide.color,
        width: this._borderSide.width,
        style: style);

    return this;
  }

  /// Set Set border color when disabled
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   disabledBorderColor: input
  /// );
  /// ```
  NikuOutlineButton disabledBorderColor(Color color) {
    this._disabledBorderColor = color;

    return this;
  }

  /// Set Set border color when highlighted
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   highlightedBorderColor: input
  /// );
  /// ```
  NikuOutlineButton highlightedBorderColor(Color color) {
    this._highlightedBorderColor = color;

    return this;
  }

  /// Set Set border color when highlighted
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton(
  ///   borderSide: BorderSide(
  ///     color: input
  ///   ),
  ///   disabledBorderColor: disabled,
  ///   highlightedBorderColor: highlighted
  /// );
  /// ```
  NikuOutlineButton setBorderColor(
      {Color color, Color disabeld, Color highlighted}) {
    this._borderSide = BorderSide(
        color: color,
        width: this._borderSide.width,
        style: this._borderSide.style);
    this._disabledBorderColor = color;
    this._highlightedBorderColor = color;

    return this;
  }

  // NikuOutlineButton border(Border border) {
  //   this._border = border;

  //   return this;
  // }

  // NikuOutlineButton bt(BorderSide borderSide) {
  //   this._border = Border(
  //     top: borderSide,
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bl(BorderSide borderSide) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: borderSide,
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bb(BorderSide borderSide) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: borderSide,
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton br(BorderSide borderSide) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: borderSide,
  //   );

  //   return this;
  // }

  // NikuOutlineButton bx(BorderSide borderSide) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: borderSide,
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: borderSide,
  //   );

  //   return this;
  // }

  // NikuOutlineButton by(BorderSide borderSide) {
  //   this._border = Border(
  //     top: borderSide,
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: borderSide,
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bc(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bct(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bcl(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bcb(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bcr(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bcx(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bcy(Color color) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bw(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bwt(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bwl(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bwb(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bwr(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton bxw(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: this._border.top.width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: this._border.bottom.width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  // NikuOutlineButton byw(double width) {
  //   this._border = Border(
  //     top: BorderSide(
  //         color: this._border.top.color,
  //         width: width,
  //         style: this._border.top.style),
  //     left: BorderSide(
  //         color: this._border.left.color,
  //         width: this._border.left.width,
  //         style: this._border.left.style),
  //     bottom: BorderSide(
  //         color: this._border.bottom.color,
  //         width: width,
  //         style: this._border.bottom.style),
  //     right: BorderSide(
  //         color: this._border.right.color,
  //         width: this._border.right.width,
  //         style: this._border.right.style),
  //   );

  //   return this;
  // }

  /// Apply existing NikuOutlineButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final padding = NikuOutlineButton(null)
  ///   .px(40)
  ///   .py(20)
  ///
  /// final blueBackground = NikuOutlineButton(null)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuOutlineButton(Text("Applied Style"))
  ///       .apply(padding) // Will have padding
  ///       .apply(blueBackground) // Will have blue background
  ///       .rounded(8)
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  NikuOutlineButton apply(NikuOutlineButton instance) => this.set(
        onPressed: this._onPressed,
        onLongPressed: this._onLongPressed,
        pt: instance._pt,
        pl: instance._pl,
        pb: instance._pb,
        pr: instance._pr,
        color: instance._color,
        focusColor: instance._focusColor,
        hoverColor: instance._hoverColor,
        textColor: instance._textColor,
        highlightColor: instance._highlightColor,
        splashColor: instance._splashColor,
        clipBehavior: instance._clipBehavior,
        autofocus: instance._autofocus,
        shape: instance._shape,
        buttonTextTheme: instance._buttonTextTheme,
        borderSide: instance._borderSide,
        highlightedBorderColor: instance._highlightedBorderColor,
        disabledBorderColor: instance._disabledBorderColor,
        mt: instance._mt,
        ml: instance._ml,
        mb: instance._mb,
        mr: instance._mr,
      );

  /// Apply existing NikuOutlineButton's property to current style and build
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: OutlineButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuOutlineButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuOutlineButton(Text("Applied Style"))
  ///       .style(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget style(NikuOutlineButton instance) => this.apply(instance).build();

  /// Apply existing NikuOutlineButton's property to current style and build only base
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuOutlineButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuOutlineButton(Text("Applied Style"))
  ///       .styleBase(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget styleBase(NikuOutlineButton instance) => this.apply(instance).base();

  /// Apply styles and build OutlineButton as Widget
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: OutlineButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuOutlineButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .my(8)
  ///       .build() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget build({Key key}) => Container(
      key: key,
      margin: EdgeInsets.only(
          top: this._mt, left: this._ml, bottom: this._mb, right: this._mr),
      child: this.base());

  /// Apply styles and build only base of OutlineButton as Widget
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// OutlineButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuOutlineButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .base() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget base({Key key}) => OutlineButton(
      child: this.child,
      key: key,
      onPressed: this._onPressed,
      onLongPress: this._onLongPressed,
      padding: EdgeInsets.only(top: _pt, left: _pl, bottom: _pb, right: _pr),
      color: this._color,
      focusColor: this._focusColor,
      hoverColor: this._hoverColor,
      highlightColor: this._highlightColor,
      splashColor: this._splashColor,
      textColor: this._textColor,
      borderSide: this._borderSide,
      disabledBorderColor: this._disabledBorderColor,
      highlightedBorderColor: this._highlightedBorderColor,
      clipBehavior: this._clipBehavior,
      autofocus: this._autofocus,
      shape: this._shape,
      textTheme: this._buttonTextTheme);

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuOutlineButton property can't be applied anymore
  ///
  /// ```
  /// NikuOutlineButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .niku()
  ///   .tooltip("Button")
  ///   .build() // Collect all style and render
  /// ```
  Niku niku() => Niku(this.build());

  NikuOutlineButton set({
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    double pt,
    double pb,
    double pl,
    double pr,
    double mt,
    double mb,
    double ml,
    double mr,
    Color color,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Color textColor,
    BorderSide borderSide,
    Color disabledBorderColor,
    Color highlightedBorderColor,
    ShapeBorder shape,
    Clip clipBehavior,
    bool autofocus,
    ButtonTextTheme buttonTextTheme,
  }) {
    this._onPressed = onPressed;
    this._onLongPressed = onLongPressed;
    this._pt = pt;
    this._pb = pb;
    this._pl = pl;
    this._pr = pr;
    this._mt = mt;
    this._mb = mb;
    this._ml = ml;
    this._mr = mr;
    this._color = color;
    this._focusColor = focusColor;
    this._hoverColor = hoverColor;
    this._highlightColor = highlightColor;
    this._splashColor = splashColor;
    this._textColor = textColor;
    this._borderSide = borderSide;
    this._disabledBorderColor = disabledBorderColor;
    this._highlightedBorderColor = highlightedBorderColor;
    this._shape = shape;
    this._clipBehavior = clipBehavior;
    this._autofocus = autofocus;
    this._buttonTextTheme = buttonTextTheme;

    return this;
  }
}
