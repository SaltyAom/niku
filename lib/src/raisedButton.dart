import 'package:flutter/material.dart';

import 'dart:ui';

import './base.dart';

/// Niku extension for Material Raised Button
///
/// Style property builder for building Raised Button
///
/// Example usage:
/// ```
/// NikuRaisedButton(Text("Raised Button"))
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
/// - build() - Apply styles and build RaisedButton as Widget
/// - base() - Apply styles and build only base of RaisedButton as Widget
/// - apply() - Apply existing NikuOutlineButton's property to current style
/// - style() - Apply existing NikuOutlineButton's property to current style and build
/// - styleBase() - Apply existing NikuRaisedButton's property to current style and build only base
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
/// - elevation - Apply elevation to raised button
///   - setElevation - Set all elevation property
///   - elevation - Apply elevation to raised button
///   - focusElevation - Set elevation when focused
///   - hoverElevation - Set elevation when hovered
///   - highlightElevation - Set elevation when highlight
///   - disabledElevation - Set elevatino when disabled
class NikuRaisedButton {
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
  double _elevation;
  double _focusElevation;
  double _hoverElevation;
  double _highlightElevation;
  double _disabledElevation;
  ShapeBorder _shape;
  Clip _clipBehavior = Clip.none;
  bool _autofocus = false;
  ButtonTextTheme _buttonTextTheme;

  /// Niku extension for Material Raised Button
  ///
  /// Style property builder for building Raised Button
  ///
  /// Example usage:
  /// ```
  /// NikuRaisedButton(Text("Raised Button"))
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
  /// - build() - Apply styles and build RaisedButton as Widget
  /// - base() - Apply styles and build only base of RaisedButton as Widget
  /// - apply() - Apply existing NikuOutlineButton's property to current style
  /// - style() - Apply existing NikuOutlineButton's property to current style and build
  /// - styleBase() - Apply existing NikuRaisedButton's property to current style and build only base
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
  /// - elevation - Apply elevation to raised button
  ///   - setElevation - Set all elevation property
  ///   - elevation - Apply elevation to raised button
  ///   - focusElevation - Set elevation when focused
  ///   - hoverElevation - Set elevation when hovered
  ///   - highlightElevation - Set elevation when highlight
  ///   - disabledElevation - Set elevatino when disabled
  NikuRaisedButton(Widget child) {
    this.child = child;
  }

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuRaisedButton onPressed(VoidCallback callback) {
    this._onPressed = callback;

    return this;
  }

  /// Callback when button is long pressed
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   onLongPressed: input
  /// )
  /// ```
  NikuRaisedButton onLongPressed(VoidCallback callback) {
    this._onLongPressed = callback;

    return this;
  }

  /// Apply padding using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: input
  /// )
  /// ```
  NikuRaisedButton padding(EdgeInsets padding) {
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
  /// RaisedButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuRaisedButton p(double padding) {
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
  /// RaisedButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuRaisedButton px(double padding) {
    this._pl = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuRaisedButton py(double padding) {
    this._pt = padding;
    this._pb = padding;

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuRaisedButton pt(double padding) {
    this._pt = padding;

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuRaisedButton pl(double padding) {
    this._pl = padding;

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuRaisedButton pb(double padding) {
    this._pb = padding;

    return this;
  }

  /// Apply padding to right
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   padding: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuRaisedButton pr(double padding) {
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
  NikuRaisedButton margin(EdgeInsets padding) {
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
  NikuRaisedButton m(double margin) {
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
  NikuRaisedButton mx(double margin) {
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
  NikuRaisedButton my(double margin) {
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
  NikuRaisedButton mt(double margin) {
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
  NikuRaisedButton ml(double margin) {
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
  NikuRaisedButton mb(double margin) {
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
  NikuRaisedButton mr(double margin) {
    this._mr = margin;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   color: input
  /// )
  /// ```
  NikuRaisedButton bg(Color color) {
    this._color = color;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   color: input
  /// )
  /// ```
  NikuRaisedButton color(Color color) {
    this._color = color;

    return this;
  }

  /// Background color of button when disabled
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   disabledColor: input
  /// )
  /// ```
  NikuRaisedButton disabled(Color color) {
    this._disabledColor = color;

    return this;
  }

  /// Background color of button when focused
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   focusColor: input
  /// )
  /// ```
  NikuRaisedButton focus(Color color) {
    this._focusColor = color;

    return this;
  }

  /// Background color of button when hovered
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   hoverColor: input
  /// )
  /// ```
  NikuRaisedButton hover(Color color) {
    this._hoverColor = color;

    return this;
  }

  /// Background color of button when highlighted
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   highlightColor: input
  /// )
  /// ```
  NikuRaisedButton highlight(Color color) {
    this._highlightColor = color;

    return this;
  }

  /// Splash/Ripple color of button
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuRaisedButton splash(Color color) {
    this._splashColor = color;

    return this;
  }

  /// Set text color of button, won't override existing color
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuRaisedButton textColor(Color color) {
    this._textColor = color;

    return this;
  }

  /// Apply all color property using named property
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   color: color
  ///   disabled: disabled,
  ///   focus: focus,
  ///   hover: hover,
  ///   highlight: highlight,
  ///   splash: splash
  /// )
  /// ```
  NikuRaisedButton setColor(
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
  /// RaisedButton(
  ///   colorBrightness: input
  /// )
  /// ```
  NikuRaisedButton brightness(Brightness brightness) {
    this._colorBrightness = brightness;

    return this;
  }

  /// Apply custom shape to button
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   shape: input
  /// )
  /// ```
  NikuRaisedButton shape(ShapeBorder shape) {
    this._shape = shape;

    return this;
  }

  /// Apply clip to button
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   clipBehavior: input
  /// )
  /// ```
  NikuRaisedButton clip(Clip clip) {
    this._clipBehavior = clip;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   autofocus: input
  /// )
  /// ```
  NikuRaisedButton autofocus(bool autofocus) {
    this._autofocus = autofocus;

    return this;
  }

  /// Apply style to button using existing theme
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   textTheme: input
  /// )
  /// ```
  NikuRaisedButton theme(ButtonTextTheme theme) {
    this._buttonTextTheme = theme;

    return this;
  }

  /// Apply border radius to button, will override shape
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   shape: RoundedRectangleBorder(
  ///     borderRadius: BorderRadius.circular(input)
  ///   )
  /// );
  /// ```
  NikuRaisedButton rounded([double radius = 999999]) {
    this._shape =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

    return this;
  }

  /// Apply elevation to raised button
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   elevation: input
  /// );
  /// ```
  NikuRaisedButton elevation(double elevation) {
    this._elevation = elevation;

    return this;
  }

  /// Set elevation when focused
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   focusElevation: input
  /// );
  /// ```
  NikuRaisedButton focusElevation(double elevation) {
    this._focusElevation = elevation;

    return this;
  }

  /// Set elevation when highlighted
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   hoverElevation: input
  /// );
  /// ```
  NikuRaisedButton hoverElevation(double elevation) {
    this._elevation = elevation;

    return this;
  }

  /// Set elevation when highlighted
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   highlightElevation: input
  /// );
  /// ```
  NikuRaisedButton highlightElevation(double elevation) {
    this._highlightElevation = elevation;

    return this;
  }

  /// Set elevation when disabled
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   focusElevation: input
  /// );
  /// ```
  NikuRaisedButton disabledElevation(double elevation) {
    this._disabledElevation = elevation;

    return this;
  }

  /// Set all elevation property
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton(
  ///   elevation: elevation,
  ///   disabled: disabled,
  ///   focus: focus,
  ///   hover: hover,
  ///   highlight: highlight
  /// );
  /// ```
  NikuRaisedButton setElevation(
      {double elevation,
      double disabled,
      double focus,
      double hover,
      double highlight}) {
    this._elevation = elevation;
    this._disabledElevation = disabled;
    this._focusElevation = focus;
    this._hoverElevation = hover;
    this._highlightElevation = highlight;

    return this;
  }

  /// Apply existing NikuRaisedButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final padding = NikuRaisedButton(null)
  ///   .px(40)
  ///   .py(20)
  ///
  /// final blueBackground = NikuRaisedButton(null)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuRaisedButton(Text("Applied Style"))
  ///       .apply(padding) // Will have padding
  ///       .apply(blueBackground) // Will have blue background
  ///       .rounded(8)
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  NikuRaisedButton apply(NikuRaisedButton instance) => this.set(
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
        elevation: instance._elevation,
        focusElevation: instance._focusElevation,
        hoverElevation: instance._hoverElevation,
        disabledElevation: instance._disabledElevation,
        highlightElevation: instance._highlightElevation,
        clipBehavior: instance._clipBehavior,
        autofocus: instance._autofocus,
        shape: instance._shape,
        buttonTextTheme: instance._buttonTextTheme,
        mt: instance._mt,
        ml: instance._ml,
        mb: instance._mb,
        mr: instance._mr,
      );

  /// Apply existing NikuRaisedButton's property to current style and build
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: RaisedButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuRaisedButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuRaisedButton(Text("Applied Style"))
  ///       .style(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget style(NikuRaisedButton instance) => this.apply(instance).build();

  /// Apply existing NikuRaisedButton's property to current style and build only base
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  /// final style = NikuRaisedButton(null)
  ///   .px(40)
  ///   .py(20)
  ///   .bg(Colors.blue)
  ///
  /// build(context) {
  ///   return (
  ///     NikuRaisedButton(Text("Applied Style"))
  ///       .styleBase(style) // Will have style and built
  ///   )
  /// }
  /// ```
  Widget styleBase(NikuRaisedButton instance) => this.apply(instance).base();

  /// Apply styles and build only base of RaisedButton as Widget
  ///
  /// ? By using this method, margin won't be applied
  ///
  /// Equivalent to
  /// ```
  /// RaisedButton()
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuRaisedButton(Text("Applied Style"))
  ///       .px(40)
  ///       .py(20)
  ///       .bg(Colors.blue)
  ///       .base() // Colelct all style and build
  ///   )
  /// }
  /// ```
  RaisedButton base({Key key}) => RaisedButton(
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
      colorBrightness: this._colorBrightness,
      clipBehavior: this._clipBehavior,
      autofocus: this._autofocus,
      shape: this._shape,
      elevation: this._elevation,
      focusElevation: this._focusElevation,
      hoverElevation: this._hoverElevation,
      disabledElevation: this._disabledElevation,
      highlightElevation: this._highlightElevation,
      textColor: this._textColor,
      textTheme: this._buttonTextTheme);

  /// Apply styles and build RaisedButton as Widget
  ///
  /// Equivalent to
  /// ```
  /// Container(
  ///   child: RaisedButton()
  /// )
  /// ```
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuRaisedButton(Text("Applied Style"))
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

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuOutlineButton property can't be applied anymore
  ///
  /// ```
  /// NikuRaisedButton("Button")
  ///   .bg(Colors.blue)
  ///   .px(18)
  ///   .py(16)
  ///   .rounded(8)
  ///   .niku()
  ///   .tooltip("Button")
  ///   .build() // Collect all style and render
  /// ```
  Niku niku() => Niku(this.build());

  NikuRaisedButton set(
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
      double elevation,
      double focusElevation,
      double hoverElevation,
      double highlightElevation,
      double disabledElevation,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      bool autofocus = false,
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
    this._elevation = elevation;
    this._focusElevation = focusElevation;
    this._hoverElevation = hoverElevation;
    this._highlightElevation = highlightElevation;
    this._disabledElevation = disabledElevation;
    this._shape = shape;
    this._clipBehavior = clipBehavior;
    this._autofocus = autofocus;
    this._buttonTextTheme = buttonTextTheme;

    return this;
  }
}
