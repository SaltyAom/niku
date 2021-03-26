// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:niku/widget/core.dart';

import 'base.dart';

/// Niku extension for Material Raised Button
///
/// Style property builder for building Raised Button
///
/// Example usage:
/// ```
/// NikuIconButton(Icon(Icons.edit))
///   .color(Colors.blue)
///   .p(40)
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
class NikuIconButton extends NikuCore {
  Widget _icon;
  Key? key;

  VoidCallback? _onPressed;

  double _iconSize = 24;
  VisualDensity? _visualDensity;

  double _pt = 0;
  double _pl = 0;
  double _pb = 0;
  double _pr = 0;

  Alignment _alignment = Alignment.center;
  double? _splashRadius;
  Color? _color;
  Color? _focusColor;
  Color? _hoverColor;
  Color? _highlightColor;
  Color? _splashColor;
  Color? _disabledColor;
  MouseCursor getMouseCursor = SystemMouseCursors.click;
  FocusNode? _focusNode;
  bool _autofocus = false;
  String? _tooltip;
  bool _enableFeedback = true;
  BoxConstraints? _constraints;

  NikuIconButton(this._icon, {this.key});

  /// Callback when button is pressed
  ///
  /// Equivalent to
  /// ```
  /// IconButton(
  ///   onPressed: input
  /// )
  /// ```
  NikuIconButton onPressed(VoidCallback callback) {
    _onPressed = callback;

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
    _visualDensity = visualDensity;

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
  /// IconButton(
  ///   padding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuIconButton p(double padding) {
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
  /// IconButton(
  ///   padding: EdgeInsets.symmetric(horizontal: input)
  /// )
  /// ```
  NikuIconButton px(double padding) {
    _pl = padding;
    _pr = padding;

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
    _pt = padding;
    _pb = padding;

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
    _pt = padding;

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
    _pl = padding;

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
    _pb = padding;

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
    _pr = padding;

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
  NikuIconButton alignment(Alignment align) {
    _alignment = align;

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
  NikuIconButton align(Alignment align) {
    _alignment = align;

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
    _alignment = Alignment.topLeft;

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
    _alignment = Alignment.topCenter;

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
    _alignment = Alignment.topRight;

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
    _alignment = Alignment.centerLeft;

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
    _alignment = Alignment.center;

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
    _alignment = Alignment.centerRight;

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
    _alignment = Alignment.bottomLeft;

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
    _alignment = Alignment.bottomCenter;

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
    _alignment = Alignment.bottomRight;

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
    _splashRadius = radius;

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
    _color = color;

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
    _disabledColor = color;

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
    _focusColor = color;

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
    _hoverColor = color;

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
    _highlightColor = color;

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
    _splashColor = color;

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
  NikuIconButton setColor({
    Color? color,
    Color? disabled,
    Color? focus,
    Color? hover,
    Color? highlight,
    Color? splash,
  }) {
    _color = color;
    _disabledColor = disabled;
    _focusColor = focus;
    _hoverColor = hover;
    _highlightColor = highlight;
    _splashColor = highlight;

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
    getMouseCursor = click;

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
    _focusNode = focusNode;

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
    _autofocus = autofocus;

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
    _tooltip = tooltip;

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
    _enableFeedback = enableFeedback;

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
    _constraints = boxConstraints;

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
  ///   )
  /// }
  /// ```
  NikuIconButton apply(NikuIconButton instance) => set(
        iconSize: instance._iconSize != 24 ? _iconSize : instance._iconSize,
        visualDensity: instance._visualDensity ?? _visualDensity,
        pt: instance._pt != 0 ? instance._pt : _pt,
        pl: instance._pl != 0 ? instance._pl : _pl,
        pb: instance._pb != 0 ? instance._pb : _pb,
        pr: instance._pr != 0 ? instance._pr : _pr,
        mt: instance.getMt != 0 ? instance.getMt : getMt,
        mb: instance.getMb != 0 ? instance.getMb : getMb,
        ml: instance.getMl != 0 ? instance.getMl : getMl,
        mr: instance.getMr != 0 ? instance.getMr : getMr,
        alignment: instance._alignment != Alignment.center
            ? instance._alignment
            : _alignment,
        splashRadius: instance._splashRadius ?? _splashRadius,
        color: instance._color ?? _color,
        focusColor: instance._focusColor ?? _focusColor,
        hoverColor: instance._hoverColor ?? _hoverColor,
        highlightColor: instance._highlightColor ?? _highlightColor,
        splashColor: instance._splashColor ?? _splashColor,
        disabledColor: instance._disabledColor ?? _disabledColor,
        onPressed: instance._onPressed ?? _onPressed,
        mouseCursor: instance.getMouseCursor != SystemMouseCursors.click
            ? instance.getMouseCursor
            : getMouseCursor,
        focusNode: instance._focusNode ?? _focusNode,
        autofocus:
            instance._autofocus != false ? instance._autofocus : _autofocus,
        tooltip: instance._tooltip ?? _tooltip,
        enableFeedback: instance._enableFeedback != false
            ? instance._enableFeedback
            : _enableFeedback,
        constraints: instance._constraints ?? _constraints,
      );

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
  ///   )
  /// }
  /// ```
  @override
  build(context) => internalBuild(
        IconButton(
          key: key,
          icon: _icon,
          onPressed: _onPressed,
          iconSize: _iconSize,
          visualDensity: _visualDensity,
          padding: EdgeInsets.only(
            top: _pt,
            left: _pl,
            bottom: _pb,
            right: _pr,
          ),
          alignment: _alignment,
          splashRadius: _splashRadius,
          color: _color,
          focusColor: _focusColor,
          hoverColor: _hoverColor,
          highlightColor: _highlightColor,
          splashColor: _splashColor,
          disabledColor: _disabledColor,
          mouseCursor: getMouseCursor,
          focusNode: _focusNode,
          autofocus: _autofocus,
          tooltip: _tooltip,
          enableFeedback: _enableFeedback,
          constraints: _constraints,
        ),
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
  /// ```
  Niku niku() => Niku(
        Builder(
          builder: (context) => build(context),
        ),
        key,
      );

  @protected
  NikuIconButton set({
    double iconSize = 24,
    VisualDensity? visualDensity,
    double pt = 0,
    double pl = 0,
    double pb = 0,
    double pr = 0,
    double mt = 0,
    double ml = 0,
    double mb = 0,
    double mr = 0,
    Alignment alignment = Alignment.center,
    double? splashRadius,
    Color? color,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    Color? disabledColor,
    VoidCallback? onPressed,
    MouseCursor mouseCursor = SystemMouseCursors.click,
    FocusNode? focusNode,
    bool autofocus = false,
    String? tooltip,
    bool enableFeedback = true,
    BoxConstraints? constraints,
  }) {
    _iconSize = iconSize;
    _visualDensity = visualDensity;
    _pt = pt;
    _pl = pl;
    _pb = pb;
    _pr = pr;
    super.mt(mt);
    super.ml(ml);
    super.mb(mb);
    super.mr(mr);
    _alignment = alignment;
    _splashRadius = splashRadius;
    _color = color;
    _focusColor = focusColor;
    _hoverColor = hoverColor;
    _highlightColor = highlightColor;
    _splashColor = splashColor;
    _disabledColor = disabledColor;
    _onPressed = onPressed;
    getMouseCursor = mouseCursor;
    _focusNode = focusNode;
    _autofocus = autofocus;
    _tooltip = tooltip;
    _enableFeedback = enableFeedback;
    _constraints = constraints;

    return this;
  }
}
