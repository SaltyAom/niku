import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './base.dart';

/// Niku extension for Material Raised Button
///
/// Style property builder for building Raised Button
///
/// Example usage:
/// ```
/// NikuIconButton(Icon(Icons.edit))
///   .color(Colors.blue)
///   .p(40)
///   .build()
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Apply styles and build RaisedButton as Widget
/// - apply() - Apply existing NikuOutlineButton's property to current style
/// - style() - Apply existing NikuOutlineButton's property to current style and build
///
/// Style Property list:
/// - onPressed - Callback when button is pressed
/// - visualDensity - Defines the visual density of user interface components
/// - padding, p - Padding of container
///   - padding, p - apply padding to all side
///   - px - apply padding to x axis
///   - py - apply padding y axis
///   - pt - apply padding top side
///   - pl - apply padding left side
///   - pb - apply padding bottom side
///   - pl - apply padding right side
/// - alignment, align - Set self alignment
///   - align - Accept [Alignment] to align self
///   - topLeft - Apply widget to top-left
///   - topCenter - Apply widget to top-center
///   - topRight - Apply widget to top-right
///   - centerLeft - Apply widget to center-left
///   - center - Apply widget to center
///   - centerRight - Apply widget to center-right
///   - bottomLeft - Apply widget to bottom-left
///   - bottomCenter - Apply widget to bottom-center
///   - bottomRight - Apply widget to bottom-right
/// - splashRadius - The splash radius. If null, default splash radius of [Material.defaultSplashRadius] is used
/// - setColor - Apply color to all button property
///   - setColor - Apply all color property using named property
///   - bg, color - Apply color to button background
///   - disabled - Background color of button when disabled
///   - hover - Background color of button when hovered
///   - focus - Background color of button when focused
///   - highlight - Background color of button when highlighted
///   - splash - Splash/Ripple color of button
/// - mouseCursor - The cursor for a mouse pointer when it enters or is hovering over the button
/// - focusNode - An optional focus node to use as the focus node for this widget
/// - autofocus - Determine whether button should be auto focus
/// - tooltip - Explaination of the button
/// - enableFeedback - Whether detected gestures should provide acoustic and/or haptic feedback
/// - constraints - Whether detected gestures should provide acoustic and/or haptic feedback
class NikuIconButton {
  Widget _icon;

  VoidCallback _onPressed;

  double _iconSize = 24;
  VisualDensity _visualDensity;

  double _pt = 0;
  double _pl = 0;
  double _pb = 0;
  double _pr = 0;

  Alignment _alignment = Alignment.center;
  double _splashRadius;
  Color _color;
  Color _focusColor;
  Color _hoverColor;
  Color _highlightColor;
  Color _splashColor;
  Color _disabledColor;
  MouseCursor _mouseCursor = SystemMouseCursors.click;
  FocusNode _focusNode;
  bool _autofocus = false;
  String _tooltip;
  bool _enableFeedback = true;
  BoxConstraints _constraints;

  NikuIconButton(this._icon);

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuIconButton onPressed(VoidCallback callback) {
    this._onPressed = callback;

    return this;
  }

  /// Defines the visual density of user interface components
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   visualDensity: input
  /// )
  /// ```
  NikuIconButton visualDensity(VisualDensity visualDensity) {
    this._visualDensity = visualDensity;

    return this;
  }

  /// Apply padding using [EdgeInset]
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: input
  /// )
  /// ```
  NikuIconButton padding(EdgeInsets padding) {
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
  /// IconButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuIconButton p(double padding) {
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
  /// IconButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuIconButton px(double padding) {
    this._pl = padding;
    this._pr = padding;

    return this;
  }

  /// Apply padding to y axis
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: EdgeInsets.symmetric(vertical: input)
  /// )
  /// ```
  NikuIconButton py(double padding) {
    this._pt = padding;
    this._pb = padding;

    return this;
  }

  /// Apply padding to top
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: EdgeInsets.only(top: input)
  /// )
  /// ```
  NikuIconButton pt(double padding) {
    this._pt = padding;

    return this;
  }

  /// Apply padding to left side
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: EdgeInsets.only(left: input)
  /// )
  /// ```
  NikuIconButton pl(double padding) {
    this._pl = padding;

    return this;
  }

  /// Apply padding to bottom
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: EdgeInsets.only(bottom: input)
  /// )
  /// ```
  NikuIconButton pb(double padding) {
    this._pb = padding;

    return this;
  }

  /// Apply padding to right
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   padding: EdgeInsets.only(right: input)
  /// )
  /// ```
  NikuIconButton pr(double padding) {
    this._pr = padding;

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: input
  /// )
  /// ```
  NikuIconButton alignment(AlignmentGeometry align) {
    this._alignment = align;

    return this;
  }

  /// Apply alignment to widget
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: input
  /// )
  /// ```
  NikuIconButton align(AlignmentGeometry align) {
    this._alignment = align;

    return this;
  }

  /// Apply widget to top left
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.topLeft
  /// )
  /// ```
  NikuIconButton topLeft() {
    this._alignment = Alignment.topLeft;

    return this;
  }

  /// Apply widget to top center
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.topCenter
  /// )
  /// ```
  NikuIconButton topCenter() {
    this._alignment = Alignment.topCenter;

    return this;
  }

  /// Apply widget to top right
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.topRight
  /// )
  /// ```
  NikuIconButton topRight() {
    this._alignment = Alignment.topRight;

    return this;
  }

  /// Apply widget to center left
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.centerLeft
  /// )
  /// ```
  NikuIconButton centerLeft() {
    this._alignment = Alignment.centerLeft;

    return this;
  }

  /// Apply widget to center
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.center
  /// )
  /// ```
  NikuIconButton center() {
    this._alignment = Alignment.center;

    return this;
  }

  /// Apply widget to center right
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.centerRight
  /// )
  /// ```
  NikuIconButton centerRight() {
    this._alignment = Alignment.centerRight;

    return this;
  }

  /// Apply widget to bottom left
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.bottomLeft
  /// )
  /// ```
  NikuIconButton bottomLeft() {
    this._alignment = Alignment.bottomLeft;

    return this;
  }

  /// Apply widget to bottom center
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.bottomCenter
  /// )
  /// ```
  NikuIconButton bottomCenter() {
    this._alignment = Alignment.bottomCenter;

    return this;
  }

  /// Apply widget to bottom right
  ///
  /// Equivalent to:
  /// ```
  /// IconButton(
  ///   alignment: Alignment.bottomRight
  /// )
  /// ```
  NikuIconButton bottomRight() {
    this._alignment = Alignment.bottomRight;

    return this;
  }

  /// The splash radius.
  /// If null, default splash radius of [Material.defaultSplashRadius] is used
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   splashRadius: input
  /// )
  /// ```
  NikuIconButton splashRadius(double radius) {
    this._splashRadius = radius;

    return this;
  }

  /// Apply color to button background
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   color: input
  /// )
  /// ```
  NikuIconButton color(Color color) {
    this._color = color;

    return this;
  }

  /// Background color of button when disabled
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   disabledColor: input
  /// )
  /// ```
  NikuIconButton disabled(Color color) {
    this._disabledColor = color;

    return this;
  }

  /// Background color of button when focused
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   focusColor: input
  /// )
  /// ```
  NikuIconButton focus(Color color) {
    this._focusColor = color;

    return this;
  }

  /// Background color of button when hovered
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   hoverColor: input
  /// )
  /// ```
  NikuIconButton hover(Color color) {
    this._hoverColor = color;

    return this;
  }

  /// Background color of button when highlighted
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   highlightColor: input
  /// )
  /// ```
  NikuIconButton highlight(Color color) {
    this._highlightColor = color;

    return this;
  }

  /// Splash/Ripple color of button
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   splashColor: input
  /// )
  /// ```
  NikuIconButton splash(Color color) {
    this._splashColor = color;

    return this;
  }

  /// Apply all color property using named property
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   color: color
  ///   disabled: disabled,
  ///   focus: focus,
  ///   hover: hover,
  ///   highlight: highlight,
  ///   splash: splash
  /// )
  /// ```
  NikuIconButton setColor(
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

  /// The cursor for a mouse pointer when it enters or is hovering over the button
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   mouseCursor: input
  /// )
  /// ```
  NikuIconButton mouseCursor(MouseCursor click) {
    this._mouseCursor = click;

    return this;
  }

  /// An optional focus node to use as the focus node for this widget
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   focusNode: input
  /// )
  /// ```
  NikuIconButton focusNode(FocusNode focusNode) {
    this._focusNode = focusNode;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   autofocus: input
  /// )
  /// ```
  NikuIconButton autofocus(bool autofocus) {
    this._autofocus = autofocus;

    return this;
  }

  /// Determine whether button should be auto focus
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   tooltip: Explaination of the button
  /// )
  /// ```
  NikuIconButton tooltip(String tooltip) {
    this._tooltip = tooltip;

    return this;
  }

  /// Whether detected gestures should provide acoustic and/or haptic feedback
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   enableFeedback: input
  /// )
  /// ```
  NikuIconButton enableFeedback(bool enableFeedback) {
    this._enableFeedback = enableFeedback;

    return this;
  }

  /// Whether detected gestures should provide acoustic and/or haptic feedback
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   constraints: input
  /// )
  /// ```
  NikuIconButton constraints(BoxConstraints boxConstraints) {
    this._constraints = boxConstraints;

    return this;
  }

  /// Apply existing NikuIconButton's property to current style
  ///
  /// Example usage:
  /// ```
  /// final iconSize = NikuIconButton()
  ///   .iconSize(24)
  ///
  /// final decoration = NikuIconButton()
  ///   .p(20)
  ///   .highlightColor(Colors.blue.withOpacity(.125))
  ///
  /// build(context) {
  ///   return (
  ///     NikuIconButton(Icons(Icon.edit))
  ///       .apply(iconSize) // Will have iconSize apply
  ///       .apply(decoration) // Will have decoration apply
  ///       .tooltip("Edit")
  ///       .build()
  ///   )
  /// }
  /// ```
  NikuIconButton apply(NikuIconButton instance) => this.set(
      icon: instance._icon,
      iconSize: instance._iconSize,
      visualDensity: instance._visualDensity,
      pt: instance._pt,
      pl: instance._pl,
      pb: instance._pb,
      pr: instance._pr,
      alignment: instance._alignment,
      splashRadius: instance._splashRadius,
      color: instance._color,
      focusColor: instance._focusColor,
      hoverColor: instance._hoverColor,
      highlightColor: instance._highlightColor,
      splashColor: instance._splashColor,
      disabledColor: instance._disabledColor,
      onPressed: instance._onPressed,
      mouseCursor: instance._mouseCursor,
      focusNode: instance._focusNode,
      autofocus: instance._autofocus,
      tooltip: instance._tooltip,
      enableFeedback: instance._enableFeedback,
      constraints: instance._constraints);

  /// Apply existing NikuIconButton's property to current style and build
  ///
  /// Example usage:
  /// ```
  /// final style = NikuIconButton()
  ///   .iconSize(24)
  ///   .p(20)
  ///   .highlightColor(Colors.blue.withOpacity(.125))
  ///
  /// build(context) {
  ///   return (
  ///     NikuIconButton(Icons(Icon.edit))
  ///       .style(style) // Will have iconSize apply and build
  ///   )
  /// }
  /// ```
  IconButton style(NikuIconButton instance) => this.apply(instance).build();

  /// Apply existing NikuIconButton's property to current style and build
  ///
  /// Example usage:
  /// ```
  ///
  /// build(context) {
  ///   return (
  ///     NikuIconButton(Icons(Icon.edit))
  ///       .iconSize(24)
  ///       .p(20)
  ///       .highlightColor(Colors.blue.withOpacity(.125))
  ///       .build()
  ///   )
  /// }
  /// ```
  IconButton build({Key key}) => IconButton(
        icon: this._icon,
        onPressed: this._onPressed,
        iconSize: this._iconSize,
        visualDensity: this._visualDensity,
        padding: EdgeInsets.only(
            top: this._pt, left: this._pl, bottom: this._pb, right: this._pr),
        alignment: this._alignment,
        splashRadius: this._splashRadius,
        color: this._color,
        focusColor: this._focusColor,
        hoverColor: this._hoverColor,
        highlightColor: this._highlightColor,
        splashColor: this._splashColor,
        disabledColor: this._disabledColor,
        mouseCursor: this._mouseCursor,
        focusNode: this._focusNode,
        autofocus: this._autofocus,
        tooltip: this._tooltip,
        enableFeedback: this._enableFeedback,
        constraints: this._constraints,
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuIconButton property can't be applied anymore
  ///
  /// ```
  /// NikuIconButton(Icon(Icons.edit))
  ///   .iconSize(24)
  ///   .p(20)
  ///   .highlightColor(Colors.blue.withOpacity(.125))
  ///   .niku()
  ///   .my(8)
  ///   .build() // Collect all style and render
  /// ```
  Niku niku() => Niku(this.build());

  NikuIconButton set({
    Widget icon,
    double iconSize = 24,
    VisualDensity visualDensity,
    double pt = 0,
    double pl = 0,
    double pb = 0,
    double pr = 0,
    Alignment alignment = Alignment.center,
    double splashRadius,
    Color color,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Color disabledColor,
    VoidCallback onPressed,
    MouseCursor mouseCursor = SystemMouseCursors.click,
    FocusNode focusNode,
    bool autofocus = false,
    String tooltip,
    bool enableFeedback = true,
    BoxConstraints constraints,
  }) {
    this._icon = icon;
    this._iconSize = iconSize;
    this._visualDensity = visualDensity;
    this._pt = pt;
    this._pl = pl;
    this._pb = pb;
    this._pr = pr;
    this._alignment = alignment;
    this._splashRadius = splashRadius;
    this._color = color;
    this._focusColor = focusColor;
    this._hoverColor = hoverColor;
    this._highlightColor = highlightColor;
    this._splashColor = splashColor;
    this._disabledColor = disabledColor;
    this._onPressed = onPressed;
    this._mouseCursor = mouseCursor;
    this._focusNode = focusNode;
    this._autofocus = autofocus;
    this._tooltip = tooltip;
    this._enableFeedback = enableFeedback;
    this._constraints = constraints;

    return this;
  }
}
