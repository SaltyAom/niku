// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'dart:ui';

import 'base.dart';

/// Niku extension for Text
///
/// Style property builder for building Text
///
/// Example usage:
/// ```
/// NikuText("Text")
///   .color(Colors.blue)
///   .fontSize(21)
///   .build()
/// ```
///
/// Meta property list:
/// - niku() - Switch to Niku() property
/// - build() - Apply styles and build Text as Widget
/// - apply() - Apply existing NikuText's property to current style
///
/// Style Property list:
/// - text - Set text
/// - color - Color of text
/// - bg, background - Background color of text
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
/// - height - Fixed height for text
/// - forground - The paint drawn as a foreground for the text.
/// - background - The paint drawn as a background for the text.
/// - textShadows - Collection of text's shadow
/// - fontFeatures - A feature tag and value that affect the selection of glyphs in a font
/// - textDecoration - Text decoration
/// - textDecorationColor - Text decoration's color
/// - textDecorationThickness - Thickness of decoration
/// - fontFamily - Apply font to text
/// - fontFamilyFallback - Fallback for font family
/// - textAlign, align - Set alignment of text
///   - alignLeft, left - Set alignment to left
///   - alignCenter, center - Set alignment to center
///   - alignRight, right - Set alignment to right
///   - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
///   - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
///   - alignJustify, justify - Set alignment to justify
/// - textDirection - Set whether text is left-to-right or right-to-left direction.
///   - textDirection - Set textDirection by using [TextDirection]
///   - ltr - Use left-to-right direction
///   - rtl - Use right-to-left direction
/// - locale - Set locale languages of text
/// - softWrap - Whether the text should break at soft line breaks.
/// - overflow - How visual overflow should be handled
/// - textScaleFactor - The number of font pixels for each logical pixel
/// - maxLines - Max line for text
/// - semanticsLabel, label - Semantics label for text, good for screen reader
/// - textWidthBasis - Defines how to measure the width of the rendered text
/// - textHeightBehavior - Defines how the paragraph will apply [TextStyle.height] to the ascent of the first line and descent of the last line
class NTNTNikuText extends StatelessWidget {
  String _text;

  Color? _color;
  Color? _backgroundColor;
  double? _fontSize;
  FontWeight? _fontWeight;
  FontStyle? _fontStyle;
  double? _letterSpacing;
  double? _wordSpacing;
  TextAlign? _textAlign;
  double? _height;
  Paint? _foreground;
  Paint? _background;
  List<Shadow>? _shadows;
  List<FontFeature>? _fontFeatures;
  TextDecoration? _textDecoration;
  Color? _textDecorationColor;
  double? _textDecorationThickness;
  String? _fontFamily;
  List<String>? _fontFamilyFallback;
  TextBaseline? _textBaseline;

  TextDirection? _textDirection;
  Locale? _locale;
  bool? _softWrap;
  TextOverflow? _overflow;
  double? _textScaleFactor;
  int? _maxLines;
  String? _semanticsLabel;
  TextWidthBasis? _textWidthBasis;
  TextHeightBehavior? _textHeightBehavior;

  /// Niku extension for Text
  ///
  /// Style property builder for building Text
  ///
  /// Example usage:
  /// ```
  /// NikuText("Text")
  ///   .color(Colors.blue)
  ///   .fontSize(21)
  ///   .build()
  /// ```
  ///
  /// Meta property list:
  /// - niku() - Switch to Niku() property
  /// - build() - Apply styles and build Text as Widget
  /// - apply() - Apply existing NikuText's property to current style
  /// - style() - Apply existing NikuText's property to current style and build
  ///
  /// Style Property list:
  /// - color - Color of text
  /// - bg, background - Background color of text
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
  /// - textBaseline, baseline - A horizontal line used for aligning text
  ///   - alphabetic - Using [TextBaseline.alphabetic]
  ///   - ideographic - Using [TextBaseline.ideographic]
  /// - height - Fixed height for text
  /// - forground - The paint drawn as a foreground for the text
  /// - background - The paint drawn as a background for the text
  /// - textShadows - Collection of text's shadow
  /// - fontFeatures - A feature tag and value that affect the selection of glyphs in a font
  /// - textDecoration - Text decoration
  /// - textDecorationColor - Text decoration's color
  /// - textDecorationThickness - Thickness of decoration
  /// - fontFamily - Apply font to text
  /// - fontFamilyFallback - Fallback for font family
  /// - textAlign, align - Set alignment of text
  ///   - alignLeft, left - Set alignment to left
  ///   - alignCenter, center - Set alignment to center
  ///   - alignRight, right - Set alignment to right
  ///   - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
  ///   - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
  ///   - alignJustify, justify - Set alignment to justify
  /// - textDirection - Set whether text is left-to-right or right-to-left direction.
  ///   - textDirection - Set textDirection by using [TextDirection]
  ///   - ltr - Use left-to-right direction
  ///   - rtl - Use right-to-left direction
  /// - locale - Set locale languages of text
  /// - softWrap - Whether the text should break at soft line breaks.
  /// - overflow - How visual overflow should be handled
  /// - textScaleFactor - The number of font pixels for each logical pixel
  /// - maxLines - Max line for text
  /// - semanticsLabel, label - Semantics label for text, good for screen reader
  /// - textWidthBasis - Defines how to measure the width of the rendered text
  /// - textHeightBehavior - Defines how the paragraph will apply [TextStyle.height] to the ascent of the first line and descent of the last line
  /// - padding, p - Padding of container
  ///   - padding, p - apply padding to all side
  ///   - px - apply padding to x axis
  ///   - py - apply padding y axis
  ///   - pt - apply padding top side
  ///   - pl - apply padding left side
  ///   - pb - apply padding bottom side
  ///   - pl - apply padding right side
  NTNTNikuText([this._text = ""]);

  /// Set text content
  ///
  /// Equivalent to
  /// ```
  /// Text(input)
  /// ```
  void text(String text) {
    _text = text;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  void color(Color color) {
    _color = color;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  void backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  void bg(Color backgroundColor) {
    _backgroundColor = backgroundColor;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  void fontSize(double fontSize) {
    _fontSize = fontSize;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  void fontWeight(FontWeight fontWeight) {
    _fontWeight = fontWeight;
  }

  /// Set font to bold, using [FontWeight.bold]
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.bold)
  /// ```
  void bold() {
    _fontWeight = FontWeight.bold;
  }

  /// Use font weight of 100
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.100)
  /// ```
  void w100() {
    _fontWeight = FontWeight.w100;
  }

  /// Use font weight of 200
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.200)
  /// ```
  void w200() {
    _fontWeight = FontWeight.w200;
  }

  /// Use font weight of 300
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.300)
  /// ```
  void w300() {
    _fontWeight = FontWeight.w300;
  }

  /// Use font weight of 400
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.400)
  /// ```
  void w400() {
    _fontWeight = FontWeight.w400;
  }

  /// Use font weight of 500
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.500)
  /// ```
  void w500() {
    _fontWeight = FontWeight.w500;
  }

  /// Use font weight of 600
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.600)
  /// ```
  void w600() {
    _fontWeight = FontWeight.w600;
  }

  /// Use font weight of 700
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.700)
  /// ```
  void w700() {
    _fontWeight = FontWeight.w700;
  }

  /// Use font weight of 800
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(FontWeight: FontWeight.800)
  /// ```
  void w800() {
    _fontWeight = FontWeight.w800;
  }

  /// Use font weight of 900
  ///
  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontWeight: FontWeight.900)
  /// ```
  void w900() {
    _fontWeight = FontWeight.w900;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  void fontStyle(FontStyle fontStyle) {
    _fontStyle = fontStyle;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  void italic() {
    _fontStyle = FontStyle.italic;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  void letterSpacing(double letterSpacing) {
    _letterSpacing = letterSpacing;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  void wordSpacing(double wordSpacing) {
    _wordSpacing = wordSpacing;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  void height(double height) {
    _height = height;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  void foreground(Paint foreground) {
    _foreground = foreground;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  void background(Paint background) {
    _background = background;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  void textShadows(List<Shadow> shadows) {
    _shadows = shadows;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  void fontFeatures(List<FontFeature> fontFeatures) {
    _fontFeatures = fontFeatures;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  void decoration(TextDecoration textDecoration) {
    _textDecoration = textDecoration;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  void decorationColor(Color textDecorationColor) {
    _textDecorationColor = textDecorationColor;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  void decorationThickness(double textDecorationThickness) {
    _textDecorationThickness = textDecorationThickness;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  void fontFamily(String fontFamily) {
    _fontFamily = fontFamily;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  void fontFamilyFallback(List<String> fontFamily) {
    _fontFamilyFallback = fontFamily;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  void textBaseline(TextBaseline textBaseline) {
    _textBaseline = textBaseline;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  void alphabetic() {
    _textBaseline = TextBaseline.alphabetic;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  void ideographic() {
    _textBaseline = TextBaseline.ideographic;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: input)
  /// ```
  void textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
  }

  /// Set alignment to left
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.left)
  /// ```
  void alignLeft() {
    _textAlign = TextAlign.left;
  }

  /// Set alignment to left
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.left)
  /// ```
  void left() {
    _textAlign = TextAlign.left;
  }

  /// Set alignment to center
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.center)
  /// ```
  void alignCenter() {
    _textAlign = TextAlign.center;
  }

  /// Set alignment to center
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.center)
  /// ```
  void center() {
    _textAlign = TextAlign.center;
  }

  /// Set alignment to right
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.right)
  /// ```
  void alignRight() {
    _textAlign = TextAlign.right;
  }

  /// Set alignment to right
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.right)
  /// ```
  void right() {
    _textAlign = TextAlign.right;
  }

  /// Set alignment to start, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.start)
  /// ```
  void alignStart() {
    _textAlign = TextAlign.start;
  }

  /// Set alignment to start, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.start)
  /// ```
  void start() {
    _textAlign = TextAlign.start;
  }

  /// Set alignment to end, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.end)
  /// ```
  void alignEnd() {
    _textAlign = TextAlign.end;
  }

  /// Set alignment to end, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.end)
  /// ```
  void end() {
    _textAlign = TextAlign.end;
  }

  /// Set alignment to justify
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.justify)
  /// ```
  void alignJustify() {
    _textAlign = TextAlign.justify;
  }

  /// Set alignment to justify
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.justify)
  /// ```
  void justify() {
    _textAlign = TextAlign.justify;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: input)
  /// ```
  void textDirection(TextDirection textDirection) {
    _textDirection = textDirection;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: TextDirection.ltr)
  /// ```
  void ltr() {
    _textDirection = TextDirection.ltr;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: TextDirection.rtl)
  /// ```
  void rtl() {
    _textDirection = TextDirection.rtl;
  }

  /// Set locale languages of text
  ///
  /// Equivalnet to
  /// ```
  /// Text(locale: input)
  /// ```
  void locale(Locale locale) {
    _locale = locale;
  }

  /// Whether the text should break at soft line breaks.
  ///
  /// Equivalnet to
  /// ```
  /// Text(softWrap: input)
  /// ```
  void softWrap(bool softWrap) {
    _softWrap = softWrap;
  }

  /// How visual overflow should be handled
  ///
  /// Equivalnet to
  /// ```
  /// Text(overflow: input)
  /// ```
  void overflow(TextOverflow overflow) {
    _overflow = overflow;
  }

  /// The number of font pixels for each logical pixel
  ///
  /// Equivalnet to
  /// ```
  /// Text(textScaleFactor: input)
  /// ```
  void textScaleFactor(double textScaleFactor) {
    _textScaleFactor = textScaleFactor;
  }

  /// Max line for text
  ///
  /// Equivalent to
  /// ```
  /// Text(maxLines: input)
  /// ```
  void maxLines(int maxLines) {
    _maxLines = maxLines;
  }

  /// Semantics label for text, good for screen reader
  ///
  /// Equivalent:
  /// ```
  /// Text(semanticsLabel: input)
  /// ```
  void label(String semanticsLabel) {
    _semanticsLabel = semanticsLabel;
  }

  /// Semantics label for text, good for screen reader
  ///
  /// Equivalent:
  /// ```
  /// Text(semanticsLabel: input)
  /// ```
  void semanticsLabel(String semanticsLabel) {
    _semanticsLabel = semanticsLabel;
  }

  /// Defines how to measure the width of the rendered text
  ///
  /// Equivalent:
  /// ```
  /// Text(textWidthBasis: input)
  /// ```
  void textWidthBasis(TextWidthBasis textWidthBasis) {
    _textWidthBasis = textWidthBasis;
  }

  /// Defines how the paragraph will apply [TextStyle.height] to the ascent of the first line and descent of the last line
  ///
  /// Equivalent:
  /// ```
  /// Text(textHeightBehavior: input)
  /// ```
  void textHeightBehavior(TextHeightBehavior textHeightBehavior) {
    _textHeightBehavior = textHeightBehavior;
  }

  /// Apply existing NikuText's property to current style
  ///
  /// Example usage:
  /// ```
  /// final style = NikuText(null)
  ///   .color(Colors.blue)
  ///   .fontSize(21)
  ///
  /// final bold = NikuText(null)
  ///   .bold()
  ///
  /// build(context) {
  ///   return (
  ///     NikuText("Applied Style")
  ///       .apply(style) // Will have blue color and font size of 21
  ///       .apply(bold) // Will have bold style
  ///       .build() // Will combine all style
  ///   )
  /// }
  /// ```
  void apply(NTNTNikuText instance) {
    set(
      color: instance._color ?? _color,
      backgroundColor: instance._backgroundColor ?? _backgroundColor,
      fontSize: instance._fontSize ?? _fontSize,
      fontWeight: instance._fontWeight ?? _fontWeight,
      letterSpacing: instance._letterSpacing ?? _letterSpacing,
      wordSpacing: instance._wordSpacing ?? _wordSpacing,
      height: instance._height ?? _height,
      foreground: instance._foreground ?? _foreground,
      background: instance._background ?? _background,
      shadows: instance._shadows ?? _shadows,
      fontFeatures: instance._fontFeatures ?? _fontFeatures,
      textDecoration: instance._textDecoration ?? _textDecoration,
      textDecorationColor:
          instance._textDecorationColor ?? _textDecorationColor,
      textDecorationThickness:
          instance._textDecorationThickness ?? _textDecorationThickness,
      fontFamily: instance._fontFamily ?? _fontFamily,
      fontFamilyFallback: instance._fontFamilyFallback ?? _fontFamilyFallback,
      textBaseline: instance._textBaseline ?? _textBaseline,
      textDirection: instance._textDirection ?? _textDirection,
      textAlign: instance._textAlign ?? _textAlign,
      locale: instance._locale ?? _locale,
      softWrap: instance._softWrap ?? _softWrap,
      overflow: instance._overflow ?? _overflow,
      textScaleFactor: instance._textScaleFactor ?? _textScaleFactor,
      maxLines: instance._maxLines ?? _maxLines,
      semanticsLabel: instance._semanticsLabel ?? _semanticsLabel,
      textWidthBasis: instance._textWidthBasis ?? _textWidthBasis,
      textHeightBehavior: instance._textHeightBehavior ?? _textHeightBehavior,
    );
  }

  /// Switch to Niku() property
  ///
  /// After this method is called, property can't be applied anymore
  ///
  /// ```
  /// NikuText("Applied Style")
  ///   .color(Colors.blue)
  ///   .fontSize(21)
  ///   .bold()
  ///   .niku()
  ///   .my(20)
  ///   .build() // Collect all style and render
  /// ```
  NTNiku ntNiku() {
    return NTNiku(
      Builder(
        builder: (context) => build(context),
      ),
    );
  }

  void set({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextAlign? textAlign,
    double? height,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? textDecoration,
    Color? textDecorationColor,
    double? textDecorationThickness,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextBaseline? textBaseline,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) {
    _color = color;
    _backgroundColor = backgroundColor;
    _fontSize = fontSize;
    _fontWeight = fontWeight;
    _fontStyle = fontStyle;
    _letterSpacing = letterSpacing;
    _wordSpacing = wordSpacing;
    _textAlign = textAlign;
    _height = height;
    _foreground = foreground;
    _background = background;
    _shadows = shadows;
    _fontFeatures = fontFeatures;
    _textDecoration = textDecoration;
    _textDecorationColor = textDecorationColor;
    _textDecorationThickness = textDecorationThickness;
    _fontFamily = fontFamily;
    _fontFamilyFallback = fontFamilyFallback;
    _textBaseline = textBaseline;
    _textDirection = textDirection;
    _locale = locale;
    _softWrap = softWrap;
    _overflow = overflow;
    _textScaleFactor = textScaleFactor;
    _maxLines = maxLines;
    _semanticsLabel = semanticsLabel;
    _textWidthBasis = textWidthBasis;
    _textHeightBehavior = textHeightBehavior;
  }

  @override
  build(context) {
    return Text(
      _text,
      key: key,
      locale: _locale,
      softWrap: _softWrap,
      overflow: _overflow,
      textScaleFactor: _textScaleFactor,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
      textDirection: _textDirection,
      textAlign: _textAlign,
      style: TextStyle(
        color: _color,
        backgroundColor: _backgroundColor,
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        fontStyle: _fontStyle,
        letterSpacing: _letterSpacing,
        wordSpacing: _wordSpacing,
        textBaseline: _textBaseline,
        height: _height,
        fontFeatures: _fontFeatures,
        foreground: _foreground,
        background: _background,
        decoration: _textDecoration,
        decorationColor: _textDecorationColor,
        decorationThickness: _textDecorationThickness,
        shadows: _shadows,
        fontFamily: _fontFamily,
        fontFamilyFallback: _fontFamilyFallback,
      ),
    );
  }
}
