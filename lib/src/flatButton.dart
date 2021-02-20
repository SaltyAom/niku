import 'package:flutter/material.dart';

import 'dart:ui';

import './base.dart';

/// Niku extension for Material Flat Button
///
/// Style property builder for building Flat Button
///
/// Example usage:
/// ```
/// NikuFlatButton(Text("Flat Button"))
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
/// - build() - Apply styles and build FlatButton as Widget
/// - base() - Apply styles and build only base of FlatButton as Widget
/// - apply() - Apply existing NikuFlatButton's property to current style
/// - style() - Apply existing NikuFlatButton's property to current style and build
/// - styleBase() - Apply existing NikuFlatButton's property to current style and build only base
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
/// - colorBrightness - Set brightness of background
/// - shape - Apply custom shape to button
/// - clip - Apply clip to button
/// - minWidth - Set min width of button
/// - height - Set height of button
/// - autofocus - Determine whether button should be auto focus
/// - theme - Apply style to button using existing theme
/// - rounded - Apply border radius to button, will override shape
class NikuFlatButton {
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
  Color _disabledColor;
  Color _focusColor;
  Color _hoverColor;
  Color _highlightColor;
  Color _splashColor;
  Color _textColor;
  Brightness _colorBrightness;
  ShapeBorder _shape;
  Clip _clipBehavior = Clip.none;
  double _minWidth;
  double _height;
  bool _autofocus = false;
  ButtonTextTheme _buttonTextTheme;

  /// Niku extension for Material Flat Button
  ///
  /// Style property builder for building Flat Button
  ///
  /// Example usage:
  /// ```
  /// NikuFlatButton(Text("Flat Button"))
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
  /// - build() - Apply styles and build FlatButton as Widget
  /// - base() - Apply styles and build only base of FlatButton as Widget
  /// - apply() - Apply existing NikuFlatButton's property to current style
  /// - style() - Apply existing NikuFlatButton's property to current style and build
  /// - styleBase() - Apply existing NikuFlatButton's property to current style and build only base
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
  /// - colorBrightness - Set brightness of background
  /// - shape - Apply custom shape to button
  /// - clip - Apply clip to button
  /// - minWidth - Set min width of button
  /// - height - Set height of button
  /// - autofocus - Determine whether button should be auto focus
  /// - theme - Apply style to button using existing theme
  /// - rounded - Apply border radius to button, will override shape
  NikuFlatButton(Widget child) {
    this.child = child;
  }

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuFlatButton onPressed(VoidCallback callback) {
    this._onPressed = callback;

    return this;
  }

  /// Callback when button is long pressed
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   onLongPressed: input
  /// )
  /// ```
  NikuFlatButton onLongPressed(VoidCallback callback) {
    this._onLongPressed = callback;

    return this;
  }

  /// Apply padding using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: input
  /// )
  /// ```
  NikuFlatButton padding(EdgeInsets padding) {
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
  /// FlatButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuFlatButton p(double padding) {
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
  /// FlatButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuFlatButton px(double padding) {
    this._pl = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuFlatButton py(double padding) {
    this._pt = padding;
    this._pb = padding;

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuFlatButton pt(double padding) {
    this._pt = padding;

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuFlatButton pl(double padding) {
    this._pl = padding;

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuFlatButton pb(double padding) {
    this._pb = padding;

    return this;
  }

  /// Apply padding to right
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   padding: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuFlatButton pr(double padding) {
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
  NikuFlatButton margin(EdgeInsets padding) {
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
  NikuFlatButton m(double margin) {
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
  NikuFlatButton mx(double margin) {
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
  NikuFlatButton my(double margin) {
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
  NikuFlatButton mt(double margin) {
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
  NikuFlatButton ml(double margin) {
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
  NikuFlatButton mb(double margin) {
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
  NikuFlatButton mr(double margin) {
    this._mr = margin;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   color: input
  /// )
  /// ```
  NikuFlatButton bg(Color color) {
    this._color = color;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   color: input
  /// )
  /// ```
  NikuFlatButton color(Color color) {
    this._color = color;

    return this;
  }

  /// Background color of button when disabled
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   disabledColor: input
  /// )
  /// ```
  NikuFlatButton disabled(Color color) {
    this._disabledColor = color;

    return this;
  }

  /// Background color of button when focused
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   focusColor: input
  /// )
  /// ```
  NikuFlatButton focus(Color color) {
    this._focusColor = color;

    return this;
  }

  /// Background color of button when hovered
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   hoverColor: input
  /// )
  /// ```
  NikuFlatButton hover(Color color) {
    this._hoverColor = color;

    return this;
  }

  /// Background color of button when highlighted
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   highlightColor: input
  /// )
  /// ```
  NikuFlatButton highlight(Color color) {
    this._highlightColor = color;

    return this;
  }

  /// Splash/Ripple color of button
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuFlatButton splash(Color color) {
    this._splashColor = color;

    return this;
  }

  /// Set text color of button, won't override existing color
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuFlatButton textColor(Color color) {
    this._textColor = color;

    return this;
  }

  /// Apply all color property using named property
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   color: color
  ///   disabled: disabled,
  ///   focus: focus,
  ///   hover: hover,
  ///   highlight: highlight,
  ///   splash: splash
  /// )
  /// ```
  NikuFlatButton setColor(
      {Color color,
      Color disabled,
      Color focus,
      Color hover,
      Color highlight,
      Color splash}) {
    this._color = color;
    this._disabledColor = disabled;
    this._focusColor = focus;
    this._hoverColor = hover;
    this._highlightColor = highlight;
    this._splashColor = highlight;

    return this;
  }

  /// Set brightness of background
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   colorBrightness: input
  /// )
  /// ```
  NikuFlatButton brightness(Brightness brightness) {
    this._colorBrightness = brightness;

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   shape: input
  /// )
  /// ```
  NikuFlatButton shape(ShapeBorder shape) {
    this._shape = shape;

    return this;
  }

  /// Apply clip to button
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuFlatButton clip(Clip clip) {
    this._clipBehavior = clip;

    return this;
  }

  /// Set min width of button
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   minWidth: input
  /// )
  /// ```
  NikuFlatButton minWidth(double minWidth) {
    this._minWidth = minWidth;

    return this;
  }

  /// Set height of button
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   height: input
  /// )
  /// ```
  NikuFlatButton height(double height) {
    this._height = height;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   autofocus: input
  /// )
  /// ```
  NikuFlatButton autofocus(bool autofocus) {
    this._autofocus = autofocus;

    return this;
  }

  /// Apply style to button using existing theme
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   textTheme: input
  /// )
  /// ```
  NikuFlatButton theme(ButtonTextTheme theme) {
    this._buttonTextTheme = theme;

    return this;
  }

  /// Apply border radius to button, will override shape
  ///
  /// Equivalent to
  /// ```
  /// FlatButton(
  ///   shape: RoundedRectangleBorder(
  ///     borderRadius: BorderRadius.circular(input)
  ///   )
  /// );
  /// ```
  NikuFlatButton rounded([double radius = 999999]) {
    this._shape =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

    return this;
  }

  /// Apply existing NikuFlatButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final padding = NikuFlatButton(null)
  ///   .px(40)
  ///   .py(20)
  ///
  /// final blueBackground = NikuFlatButton(null)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuFlatButton(Text("Applied Style"))
  ///       .apply(padding) // Will have padding
  ///       .apply(blueBackground) // Will have blue background
  ///       .rounded(8)
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  NikuFlatButton apply(NikuFlatButton instance) => this.set(
        onPressed: this._onPressed,
        onLongPressed: this._onLongPressed,
        pt: instance._pt,
        pl: instance._pl,
        pb: instance._pb,
        pr: instance._pr,
        color: instance._color,
        disabledColor: instance._disabledColor,
        focusColor: instance._focusColor,
        hoverColor: instance._hoverColor,
        highlightColor: instance._highlightColor,
        splashColor: instance._splashColor,
        textColor: instance._textColor,
        colorBrightness: instance._colorBrightness,
        clipBehavior: instance._clipBehavior,
        autofocus: instance._autofocus,
        minWidth: instance._minWidth,
        height: instance._height,
        shape: instance._shape,
        buttonTextTheme: instance._buttonTextTheme,
        mt: instance._mt,
        ml: instance._ml,
        mb: instance._mb,
        mr: instance._mr,
      );

  /// Apply existing NikuFlatButton's property to current style and build
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: FlatButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuFlatButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuFlatButton(Text("Applied Style"))
  ///       .style(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget style(NikuFlatButton instance) => this.apply(instance).build();

  /// Apply existing NikuFlatButton's property to current style and build only base
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// FlatButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuFlatButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuFlatButton(Text("Applied Style"))
  ///       .styleBase(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget styleBase(NikuFlatButton instance) => this.apply(instance).base();

  /// Apply styles and build FlatButton as Widget
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: FlatButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuFlatButton(Text("Applied Style"))
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

  /// Apply styles and build only base of FlatButton as Widget
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// FlatButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuFlatButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .base() // Colelct all style and build
  ///   )
  /// }
  /// ```
  Widget base({Key key}) => FlatButton(
      child: this.child,
      key: key,
      onPressed: this._onPressed,
      onLongPress: this._onLongPressed,
      padding: EdgeInsets.only(top: _pt, left: _pl, bottom: _pb, right: _pr),
      color: this._color,
      disabledColor: this._disabledColor,
      focusColor: this._focusColor,
      hoverColor: this._hoverColor,
      highlightColor: this._highlightColor,
      splashColor: this._splashColor,
      textColor: this._textColor,
      colorBrightness: this._colorBrightness,
      clipBehavior: this._clipBehavior,
      autofocus: this._autofocus,
      minWidth: this._minWidth,
      height: this._height,
      shape: this._shape,
      textTheme: this._buttonTextTheme);

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuFlatButton property can't be applied anymore
  ///
  /// ```
  /// NikuFlatButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .niku()
  ///   .tooltip("Button")
  ///   .build() // Collect all style and render
  /// ```
  Niku niku() => Niku(this.build());

  NikuFlatButton set(
      {VoidCallback onPressed,
      VoidCallback onLongPressed,
      double pt,
      double pb,
      double pl,
      double pr,
      double mt = 0,
      double mb = 0,
      double ml = 0,
      double mr = 0,
      Color color,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      Color textColor,
      Brightness colorBrightness,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      double height,
      bool autofocus = false,
      double minWidth,
      ButtonTextTheme buttonTextTheme}) {
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
    this._disabledColor = disabledColor;
    this._focusColor = focusColor;
    this._hoverColor = hoverColor;
    this._highlightColor = highlightColor;
    this._splashColor = splashColor;
    this._textColor = textColor;
    this._colorBrightness = colorBrightness;
    this._shape = shape;
    this._clipBehavior = clipBehavior;
    this._minWidth = minWidth;
    this._height = height;
    this._autofocus = autofocus;
    this._buttonTextTheme = buttonTextTheme;

    return this;
  }
}
