// ignore_for_file: non_constant_identifier_names
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:ui';

import 'base.dart';
import 'core.dart';

/// Niku extension for [TextFormField]
///
/// Style property builder for building TextFormField
///
/// Example usage:
/// ```
/// NikuTextField("Hello")
///   .border(
///     OutlineInputBorder(
///       borderSide: BorderSide(
///         width: 2
///       )
///     )
///   )
///   .focusedBorder(OutlineInputBorder(
///     borderSide: BorderSide(
///       color: Colors.blue,
///       width: 2)
///     )
///   )
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
/// - controller - Controller for editable text field
/// - initialValue - Initial value of text field
/// - focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
/// - keyboardType - The type of information for which to optimize the text input control
///   - keyboardType - Set keyboard type using [TextInputType]
///   - dateTimeKeyboard - Using [TextInputType.datetime]
///   - emailKeyboard - Using [TextInputType.email]
///   - multilineKeyboard - Using [TextInputType.multiline]
///   - nameKeyboard - Using [TextInputType.name]
///   - phoneKeyboard - Using [TextInputType.phone]
///   - addressKeyboard - Using [TextInputType.address]
///   - textKeyboard - Using [TextInputType.text]
///   - urlKeyboard - Using [TextInputType.url]
///   - visiblePasswordKeyboard - Using [TextInputType.visiblePassword]
/// - textCapitalization - Configures how the platform keyboard will select an uppercase or lowercase keyboard
///   - textCapitalization - Configure using [TextCapitalization]
///   - capitalizeCharacters - Using [TextCapitalization.characters]
///   - capitalizeNone - Using [TextCapitalization.none]
///   - capitalizeSentences - Using [TextCapitalization.sentences]
///   - capitalizeWords - Using [TextCapitalization.words]
/// - textDirection - Set whether text is left-to-right or right-to-left direction.
///   - textDirection - Set textDirection by using [TextDirection]
///   - ltr - Use left-to-right direction
///   - rtl - Use right-to-left direction
/// - textAlign, align - Set alignment of text
///   - alignLeft, left - Set alignment to left
///   - alignCenter, center - Set alignment to center
///   - alignRight, right - Set alignment to right
///   - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
///   - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
///   - alignJustify, justify - Set alignment to justify
/// - autofocus - Should textfield be autofocus
/// - readOnly - Should textfield be readonly
/// - toolbarOptions - Toolbar is a context menu that will show up when user right click or long press the [EditableText]. It includes several options: cut, copy, paste, and select all
///   - toolbarOptions - Using [ToolbarOptions]
///   - toolbar - Configure using shorten named property of [ToolbarOptions]
///   - allowCopy - Set [ToolbarOptions.copy]
///   - allowCut - Set [ToolbarOptions.paste]
///   - allowPaste - Set [ToolbarOptions.cut]
///   - allowSelectAll - Set [ToolbarOptions.selectAll]
/// - showCursor - Should textfield cursor be showned
/// - obscuringCharacter - Display of "hidden" character like password
/// - obscureText - Should text be obscure eg. password field
/// - autoCorrect - Should autocorrect apply to textfield
/// - smartDashesType - Indicates how to handle the intelligent replacement of dashes in text input
///   - enableSmartDashes - Using [SmartDashesType.enabled]
///   - disableSmartDashes - Using [SmartDashesType.disabled]
/// - smartQuotesType - Indicates how to handle the intelligent replacement of quotes in text input
///   - enableSmartQuotes - Using [SmartDashesType.enabled]
///   - disableSmartQuotes - Using [SmartDashesType.disabled]
/// - enableSuggestion - Should suggestion be used
/// - maxLines - The maximum number of lines for the text to span, wrapping if necessary
/// - minLines - The minimum number of lines to occupy when the content spans fewer lines
/// - expands - Whether this widget's height will be sized to fill its parent
/// - maxLength - The maximum number of characters (Unicode scalar values) to allow in the text field
/// - on - Listeners of [TextField]
///   - on - Set multiple listener of [TextField] at once
///   - onChanged - Called when the value of textfield is changed
///   - onTap - Called for each distinct tap except for every second tap of a double tap
///   - onEditingComplete - Called when the user submits editable content (e.g., user presses the "done" button on the keyboard)
///   - onSubmitted, onFieldSubmitted - Called when the user indicates that they are done editing the text in the field
///   - onSaved - call with the final value when the form is saved via [FormState.save]
/// - validator - An optional method that validates an input. Returns an error string to display if the input is invalid, or null otherwise
/// - inputFormmaters - Optional input validation and formatting overrides
/// - enabled - If false the text field is "disabled": it ignores taps and its [decoration] is rendered in grey
/// - cursor - Appearance of cursor
///   - cursor - Set property of cursor at once
///   - cursorWidth - How thick the cursor will be
///   - cursorHeight - How tall the cursor will be
///   - cursorRadius - How rounded the corners of the cursor should be
///     - cursorRounded - Shorten of [.cursorRadius], how rounded the corners of the cursor should be
///   - cursorColor - Color of cursor
/// - keyboardAppearance - The appearance of the keyboard, only honored on iOS devices
///   - lightKeyboard - Use light-theme keyboard
///   - darkKeyboard - Use dark-theme keyboard
/// - scrollPadding - Configures padding to edges surrounding a [Scrollable] when the Textfield scrolls into view
/// - scrollP - Shorten for [scrollPadding] accepting [shorten] padding applying to all side
/// - enableInteractiveSelection - Whether to enable user interface affordances for changing the text selection
/// - buildCounter - Callback that generates a custom [InputDecoration.counter] widget
/// - scrollPhysics - The [ScrollPhysics] to use when vertically scrolling the input
/// - autoFillHints - A list of strings that helps the autofill service identify the type of this text input
/// - autoValidateMode - Validation of value of field
///   - alwaysValidate - Using [AutovalidateMode.always]
///   - disabledValidate - Using [AutovalidateMode.disabled]
///   - validateOnUserInteraction - Using [AutovalidateMode.onUserInteraction]
///
/// [InputDecoration] property builder
/// - icon - An icon to show before the input field and outside of the decoration's container
///
/// - labelText - Label text
/// - labelStyle - Stying of label using [TextStyle]
///   - labelStyle - Set labelStyle using [TextStyle]
///   - labelColor - Color of text
///   - labelFontSize - Set text size
///   - labelFontWeight - Font weight
///     - labelFontWeight - Set font weight of text
///     - labelBold - Set font to bold, equivalent to w700()
///     - labelW100 - Use font weight of 100
///     - labelW200 - Use font weight of 200
///     - labelW300 - Use font weight of 300
///     - labelW400 - Use font weight of 400
///     - labelW500 - Use font weight of 500
///     - labelW600 - Use font weight of 600
///     - labelW700 - Use font weight of 700
///     - labelW800 - Use font weight of 800
///     - labelW900 - Use font weight of 900
///   - labelFontWeight - The thickness of the glyphs used to draw the text
///   - labelFontStyle - Whether to slant the glyphs in the font
///     - labelFontStyle - Use [FontStyle] to apply
///     - labelItalic - Use italic style
///   - labelLetterSpacing - Spacing for each letter
///   - labelWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - labelTextBaseline - A horizontal line used for aligning text
///     - labelAlphabetic - Using [TextBaseline.alphabetic]
///     - labelIdeographic - Using [TextBaseline.ideographic]
///
/// - hintText - Hint text
/// - hintMaxLines - Maximum line of hint text
/// - hintStyle - Stying of hint using [TextStyle]
///   - hintStyle - Set hintStyle using [TextStyle]
///   - hintColor - Color of text
///   - hintFontSize - Set text size
///   - hintFontWeight - Font weight
///     - hintFontWeight - Set font weight of text
///     - hintBold - Set font to bold, equivalent to w700()
///     - hintW100 - Use font weight of 100
///     - hintW200 - Use font weight of 200
///     - hintW300 - Use font weight of 300
///     - hintW400 - Use font weight of 400
///     - hintW500 - Use font weight of 500
///     - hintW600 - Use font weight of 600
///     - hintW700 - Use font weight of 700
///     - hintW800 - Use font weight of 800
///     - hintW900 - Use font weight of 900
///   - hintFontWeight - The thickness of the glyphs used to draw the text
///   - hintFontStyle - Whether to slant the glyphs in the font
///     - hintFontStyle - Use [FontStyle] to apply
///     - hintItalic - Use italic style
///   - hintLetterSpacing - Spacing for each letter
///   - hintWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - hintTextBaseline - A horizontal line used for aligning text
///     - hintAlphabetic - Using [TextBaseline.alphabetic]
///     - hintIdeographic - Using [TextBaseline.ideographic]
///
/// - helperText - Helper text
/// - helperMaxLines - Maximum line of helper text
/// - helperStyle - Stying of helper using [TextStyle]
///   - helperStyle - Set helperStyle using [TextStyle]
///   - helperColor - Color of text
///   - helperFontSize - Set text size
///   - helperFontWeight - Font weight
///     - helperFontWeight - Set font weight of text
///     - helperBold - Set font to bold, equivalent to w700()
///     - helperW100 - Use font weight of 100
///     - helperW200 - Use font weight of 200
///     - helperW300 - Use font weight of 300
///     - helperW400 - Use font weight of 400
///     - helperW500 - Use font weight of 500
///     - helperW600 - Use font weight of 600
///     - helperW700 - Use font weight of 700
///     - helperW800 - Use font weight of 800
///     - helperW900 - Use font weight of 900
///   - helperFontWeight - The thickness of the glyphs used to draw the text
///   - helperFontStyle - Whether to slant the glyphs in the font
///     - helperFontStyle - Use [FontStyle] to apply
///     - helperItalic - Use italic style
///   - helperLetterSpacing - Spacing for each letter
///   - helperWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - helperTextBaseline - A horizontal line used for aligning text
///     - helperAlphabetic - Using [TextBaseline.alphabetic]
///     - helperIdeographic - Using [TextBaseline.ideographic]
///
/// - errorText - Error text
/// - errorMaxLines - Maximum line of error text
/// - errorStyle - Stying of error using [TextStyle]
///   - errorStyle - Set errorStyle using [TextStyle]
///   - errorColor - Color of text
///   - errorFontSize - Set text size
///   - errorFontWeight - Font weight
///     - errorFontWeight - Set font weight of text
///     - errorBold - Set font to bold, equivalent to w700()
///     - errorW100 - Use font weight of 100
///     - errorW200 - Use font weight of 200
///     - errorW300 - Use font weight of 300
///     - errorW400 - Use font weight of 400
///     - errorW500 - Use font weight of 500
///     - errorW600 - Use font weight of 600
///     - errorW700 - Use font weight of 700
///     - errorW800 - Use font weight of 800
///     - errorW900 - Use font weight of 900
///   - errorFontWeight - The thickness of the glyphs used to draw the text
///   - errorFontStyle - Whether to slant the glyphs in the font
///     - errorFontStyle - Use [FontStyle] to apply
///     - errorItalic - Use italic style
///   - errorLetterSpacing - Spacing for each letter
///   - errorWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - errorTextBaseline - A horizontal line used for aligning text
///     - errorAlphabetic - Using [TextBaseline.alphabetic]
///     - errorIdeographic - Using [TextBaseline.ideographic]
///
/// - floatingLabelBehavior - Defines the behavior of the floating label
/// - isCollapsed - Whether the decoration is the same size as the input field
/// - isDense - Whether the [InputDecorator.child] is part of a dense form (i.e., uses less vertical space)
/// - contentPadding - The padding for the input decoration's container
///
/// - prefixIcon - An icon that appears before the [prefix] or [prefixText] and before the editable part of the text field, within the decoration's container
/// - prefixIconConstraints - The constraints for the prefix icon
/// - prefix - Optional widget to place on the line before the input
/// - prefixText - Optional text prefix to place on the line before the input
/// - prefixStyle - Stying of prefix using [TextStyle]
///   - prefixStyle - Set prefixStyle using [TextStyle]
///   - prefixColor - Color of text
///   - prefixFontSize - Set text size
///   - prefixFontWeight - Font weight
///     - prefixFontWeight - Set font weight of text
///     - prefixBold - Set font to bold, equivalent to w700()
///     - prefixW100 - Use font weight of 100
///     - prefixW200 - Use font weight of 200
///     - prefixW300 - Use font weight of 300
///     - prefixW400 - Use font weight of 400
///     - prefixW500 - Use font weight of 500
///     - prefixW600 - Use font weight of 600
///     - prefixW700 - Use font weight of 700
///     - prefixW800 - Use font weight of 800
///     - prefixW900 - Use font weight of 900
///   - prefixFontWeight - The thickness of the glyphs used to draw the text
///   - prefixFontStyle - Whether to slant the glyphs in the font
///     - prefixFontStyle - Use [FontStyle] to apply
///     - prefixItalic - Use italic style
///   - prefixLetterSpacing - Spacing for each letter
///   - prefixWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - prefixTextBaseline - A horizontal line used for aligning text
///     - prefixAlphabetic - Using [TextBaseline.alphabetic]
///     - prefixIdeographic - Using [TextBaseline.ideographic]
///
/// - suffixIcon - An icon that appears before the [suffix] or [suffixText] and before the editable part of the text field, within the decoration's container
/// - suffixIconConstraints - The constraints for the suffix icon
/// - suffix - Optional widget to place on the line before the input
/// - suffixText - Optional text suffix to place on the line before the input
/// - suffixStyle - Stying of suffix using [TextStyle]
///   - suffixStyle - Set suffixStyle using [TextStyle]
///   - suffixColor - Color of text
///   - suffixFontSize - Set text size
///   - suffixFontWeight - Font weight
///     - suffixFontWeight - Set font weight of text
///     - suffixBold - Set font to bold, equivalent to w700()
///     - suffixW100 - Use font weight of 100
///     - suffixW200 - Use font weight of 200
///     - suffixW300 - Use font weight of 300
///     - suffixW400 - Use font weight of 400
///     - suffixW500 - Use font weight of 500
///     - suffixW600 - Use font weight of 600
///     - suffixW700 - Use font weight of 700
///     - suffixW800 - Use font weight of 800
///     - suffixW900 - Use font weight of 900
///   - suffixFontWeight - The thickness of the glyphs used to draw the text
///   - suffixFontStyle - Whether to slant the glyphs in the font
///     - suffixFontStyle - Use [FontStyle] to apply
///     - suffixItalic - Use italic style
///   - suffixLetterSpacing - Spacing for each letter
///   - suffixWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - suffixTextBaseline - A horizontal line used for aligning text
///     - suffixAlphabetic - Using [TextBaseline.alphabetic]
///     - suffixIdeographic - Using [TextBaseline.ideographic]
///
/// - counter - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored.
/// - counterText - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored
/// - counterStyle - Stying of counter using [TextStyle]
///   - counterStyle - Set counterStyle using [TextStyle]
///   - counterColor - Color of text
///   - counterFontSize - Set text size
///   - counterFontWeight - Font weight
///     - counterFontWeight - Set font weight of text
///     - counterBold - Set font to bold, equivalent to w700()
///     - counterW100 - Use font weight of 100
///     - counterW200 - Use font weight of 200
///     - counterW300 - Use font weight of 300
///     - counterW400 - Use font weight of 400
///     - counterW500 - Use font weight of 500
///     - counterW600 - Use font weight of 600
///     - counterW700 - Use font weight of 700
///     - counterW800 - Use font weight of 800
///     - counterW900 - Use font weight of 900
///   - counterFontWeight - The thickness of the glyphs used to draw the text
///   - counterFontStyle - Whether to slant the glyphs in the font
///     - counterFontStyle - Use [FontStyle] to apply
///     - counterItalic - Use italic style
///   - counterLetterSpacing - Spacing for each letter
///   - counterWordSpacing - Spacing for each word
///   - hintHeight - Fixed height for text
///   - hintForeground - The paint drawn as a foreground for the text
///   - hintBackground - The paint drawn as a background for the text
///   - counterTextBaseline - A horizontal line used for aligning text
///     - counterAlphabetic - Using [TextBaseline.alphabetic]
///     - counterIdeographic - Using [TextBaseline.ideographic]
///
/// - filled - If true the decoration's container is filled with [fillColor]
/// - fillColor - The base fill color of the decoration's container color
///   - setFillColor - Set multiple [FillColor] at once
///   - fillColor - The base fill color of the decoration's container color
///   - hoverColor - The base fill color of the decoration's container color when hovered
///   - focusColor - The base fill color of the decoration's container color when focused
///
/// - border - The shape of the border to draw around the decoration's container
///   - setBorder - Set multiple [InputDecoration] at once
///   - border - The shape of the border to draw around the decoration's container
///   - enabledBorder - The border to display when the [InputDecorator] is enabled and is not showing an error
///   - disabledBorder - The border to display when the [InputDecorator] is disabled and is not showing an error
///   - focusedBorder - The border to display when the [InputDecorator] has the focus and is not showing an error
///   - errorBorder - The border to display when the [InputDecorator] does not have the focus and is showing an error
///
/// - inputDecorationEnable - If false [helperText], [errorText], and [counterText] are not displayed, and the opacity of the remaining visual elements is reduced
/// - semanticCounterText - A semantic label for the [counterText]
/// - alignLabelWithHint - Align label as same level as hint
///
/// - color - Color of text
/// - bg, backgroundColor - Background color of text
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
/// - height - Fixed height for text
/// - foreground - The paint drawn as a foreground for the text
/// - background - The paint drawn as a background for the text
/// - textBaseline - A horizontal line used for aligning text
///   - alphabetic - Using [TextBaseline.alphabetic]
///   - ideographic - Using [TextBaseline.ideographic]
class NikuTextField extends NikuCore {
  // Text Form Field
  TextEditingController? _controller;
  String _initialValue = '';
  FocusNode? _focusNode;
  TextInputType? _keyboardType;
  TextCapitalization _textCapitalization = TextCapitalization.none;
  TextInputAction? _textInputAction;
  TextDirection? _textDirection;
  TextAlign _textAlign = TextAlign.start;
  TextAlignVertical? _textAlignVertical;
  bool _autofocus = false;
  bool _readOnly = false;
  ToolbarOptions? _toolbarOptions =
      ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true);
  bool? _showCursor;
  String _obscuringCharacter = '•';
  bool _obscureText = false;
  bool _autocorrect = true;
  SmartDashesType? _smartDashesType;
  SmartQuotesType? _smartQuotesType;
  bool _enableSuggestions = true;
  int _maxLines = 1;
  int? _minLines;
  bool _expands = false;
  int? _maxLength;
  ValueChanged<String>? _onChanged;
  GestureTapCallback? _onTap;
  VoidCallback? _onEditingComplete;
  ValueChanged<String>? _onFieldSubmitted;
  FormFieldSetter<String>? _onSaved;
  FormFieldValidator<String>? _validator;
  List<TextInputFormatter>? _inputFormatters;
  bool? _enabled;
  double _cursorWidth = 2.0;
  double? _cursorHeight;
  Radius? _cursorRadius;
  Color? _cursorColor;
  Brightness? _keyboardAppearance;
  EdgeInsets _scrollPadding = const EdgeInsets.all(20.0);
  bool _enableInteractiveSelection = true;
  InputCounterWidgetBuilder? _buildCounter;
  ScrollPhysics? _scrollPhysics;
  Iterable<String>? _autofillHints;
  AutovalidateMode? _autovalidateMode;

  // Input Decoration
  Widget? _input_icon;
  String _input_labelText = "";
  String? _input_helperText;
  int? _input_helperMaxLines;
  String? _input_hintText;
  int? _input_hintMaxLines;
  String? _input_errorText;
  int? _input_errorMaxLines;
  FloatingLabelBehavior _input_floatingLabelBehavior =
      FloatingLabelBehavior.auto;
  bool _input_isCollapsed = false;
  bool? _input_isDense;
  EdgeInsetsGeometry? _input_contentPadding;
  Widget? _input_prefixIcon;
  BoxConstraints? _input_prefixIconConstraints;
  Widget? _input_prefix;
  String? _input_prefixText;
  Widget? _input_suffixIcon;
  Widget? _input_suffix;
  String? _input_suffixText;
  BoxConstraints? _input_suffixIconConstraints;
  Widget? _input_counter;
  String? _input_counterText;
  bool? _input_filled;
  Color? _input_fillColor;
  Color? _input_focusColor;
  Color? _input_hoverColor;
  InputBorder? _input_errorBorder;
  InputBorder? _input_focusedBorder;
  InputBorder? _input_focusedErrorBorder;
  InputBorder? _input_disabledBorder;
  InputBorder? _input_enabledBorder;
  InputBorder? _input_border;
  bool _input_decorationEnabled = true;
  String? _input_semanticCounterText;
  bool? _input_alignLabelWithHint;

  // Base Text Style
  Color? _base_color;
  Color? _base_backgroundColor;
  double? _base_fontSize;
  FontWeight? _base_fontWeight;
  FontStyle? _base_fontStyle;
  double? _base_letterSpacing;
  double? _base_wordSpacing;
  double? _base_height;
  Paint? _base_foreground;
  Paint? _base_background;
  List<Shadow>? _base_shadows;
  List<FontFeature>? _base_fontFeatures;
  TextDecoration? _base_textDecoration;
  Color? _base_textDecorationColor;
  double? _base_textDecorationThickness;
  String? _base_fontFamily;
  List<String>? _base_fontFamilyFallback;
  TextBaseline? _base_textBaseline;

  // Input Label Style
  Color? _label_color;
  Color? _label_backgroundColor;
  double? _label_fontSize;
  FontWeight? _label_fontWeight;
  FontStyle? _label_fontStyle;
  double? _label_letterSpacing;
  double? _label_wordSpacing;
  double? _label_height;
  Paint? _label_foreground;
  Paint? _label_background;
  List<Shadow>? _label_shadows;
  List<FontFeature>? _label_fontFeatures;
  TextDecoration? _label_textDecoration;
  Color? _label_textDecorationColor;
  double? _label_textDecorationThickness;
  String? _label_fontFamily;
  List<String>? _label_fontFamilyFallback;
  TextBaseline? _label_textBaseline;

  // Input Hint Style
  Color? _hint_color;
  Color? _hint_backgroundColor;
  double? _hint_fontSize;
  FontWeight? _hint_fontWeight;
  FontStyle? _hint_fontStyle;
  double? _hint_letterSpacing;
  double? _hint_wordSpacing;
  double? _hint_height;
  Paint? _hint_foreground;
  Paint? _hint_background;
  List<Shadow>? _hint_shadows;
  List<FontFeature>? _hint_fontFeatures;
  TextDecoration? _hint_textDecoration;
  Color? _hint_textDecorationColor;
  double? _hint_textDecorationThickness;
  String? _hint_fontFamily;
  List<String>? _hint_fontFamilyFallback;
  TextBaseline? _hint_textBaseline;

  // Input Helper Style
  Color? _helper_color;
  Color? _helper_backgroundColor;
  double? _helper_fontSize;
  FontWeight? _helper_fontWeight;
  FontStyle? _helper_fontStyle;
  double? _helper_letterSpacing;
  double? _helper_wordSpacing;
  double? _helper_height;
  Paint? _helper_foreground;
  Paint? _helper_background;
  List<Shadow>? _helper_shadows;
  List<FontFeature>? _helper_fontFeatures;
  TextDecoration? _helper_textDecoration;
  Color? _helper_textDecorationColor;
  double? _helper_textDecorationThickness;
  String? _helper_fontFamily;
  List<String>? _helper_fontFamilyFallback;
  TextBaseline? _helper_textBaseline;

  // Input Error Style
  Color? _error_color;
  Color? _error_backgroundColor;
  double? _error_fontSize;
  FontWeight? _error_fontWeight;
  FontStyle? _error_fontStyle;
  double? _error_letterSpacing;
  double? _error_wordSpacing;
  double? _error_height;
  Paint? _error_foreground;
  Paint? _error_background;
  List<Shadow>? _error_shadows;
  List<FontFeature>? _error_fontFeatures;
  TextDecoration? _error_textDecoration;
  Color? _error_textDecorationColor;
  double? _error_textDecorationThickness;
  String? _error_fontFamily;
  List<String>? _error_fontFamilyFallback;
  TextBaseline? _error_textBaseline;

  // Prefix Style
  Color? _prefix_color;
  Color? _prefix_backgroundColor;
  double? _prefix_fontSize;
  FontWeight? _prefix_fontWeight;
  FontStyle? _prefix_fontStyle;
  double? _prefix_letterSpacing;
  double? _prefix_wordSpacing;
  double? _prefix_height;
  Paint? _prefix_foreground;
  Paint? _prefix_background;
  List<Shadow>? _prefix_shadows;
  List<FontFeature>? _prefix_fontFeatures;
  TextDecoration? _prefix_textDecoration;
  Color? _prefix_textDecorationColor;
  double? _prefix_textDecorationThickness;
  String? _prefix_fontFamily;
  List<String>? _prefix_fontFamilyFallback;
  TextBaseline? _prefix_textBaseline;

  // Suffix Style
  Color? _suffix_color;
  Color? _suffix_backgroundColor;
  double? _suffix_fontSize;
  FontWeight? _suffix_fontWeight;
  FontStyle? _suffix_fontStyle;
  double? _suffix_letterSpacing;
  double? _suffix_wordSpacing;
  double? _suffix_height;
  Paint? _suffix_foreground;
  Paint? _suffix_background;
  List<Shadow>? _suffix_shadows;
  List<FontFeature>? _suffix_fontFeatures;
  TextDecoration? _suffix_textDecoration;
  Color? _suffix_textDecorationColor;
  double? _suffix_textDecorationThickness;
  String? _suffix_fontFamily;
  List<String>? _suffix_fontFamilyFallback;
  TextBaseline? _suffix_textBaseline;

  // Counter Style
  Color? _counter_color;
  Color? _counter_backgroundColor;
  double? _counter_fontSize;
  FontWeight? _counter_fontWeight;
  FontStyle? _counter_fontStyle;
  double? _counter_letterSpacing;
  double? _counter_wordSpacing;
  double? _counter_height;
  Paint? _counter_foreground;
  Paint? _counter_background;
  List<Shadow>? _counter_shadows;
  List<FontFeature>? _counter_fontFeatures;
  TextDecoration? _counter_textDecoration;
  Color? _counter_textDecorationColor;
  double? _counter_textDecorationThickness;
  String? _counter_fontFamily;
  List<String>? _counter_fontFamilyFallback;
  TextBaseline? _counter_textBaseline;

  /// Niku extension for [TextFormField]
  ///
  /// Style property builder for building TextFormField
  ///
  /// Example usage:
  /// ```
  /// NikuTextField("Hello")
  ///   .border(
  ///     OutlineInputBorder(
  ///       borderSide: BorderSide(
  ///         width: 2
  ///       )
  ///     )
  ///   )
  ///   .focusedBorder(OutlineInputBorder(
  ///     borderSide: BorderSide(
  ///       color: Colors.blue,
  ///       width: 2)
  ///     )
  ///   )
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
  /// - controller - Controller for editable text field
  /// - initialValue - Initial value of text field
  /// - focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
  /// - keyboardType - The type of information for which to optimize the text input control
  ///   - keyboardType - Set keyboard type using [TextInputType]
  ///   - dateTimeKeyboard - Using [TextInputType.datetime]
  ///   - emailKeyboard - Using [TextInputType.email]
  ///   - multilineKeyboard - Using [TextInputType.multiline]
  ///   - nameKeyboard - Using [TextInputType.name]
  ///   - phoneKeyboard - Using [TextInputType.phone]
  ///   - addressKeyboard - Using [TextInputType.address]
  ///   - textKeyboard - Using [TextInputType.text]
  ///   - urlKeyboard - Using [TextInputType.url]
  ///   - visiblePasswordKeyboard - Using [TextInputType.visiblePassword]
  /// - textCapitalization - Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///   - textCapitalization - Configure using [TextCapitalization]
  ///   - capitalizeCharacters - Using [TextCapitalization.characters]
  ///   - capitalizeNone - Using [TextCapitalization.none]
  ///   - capitalizeSentences - Using [TextCapitalization.sentences]
  ///   - capitalizeWords - Using [TextCapitalization.words]
  /// - textDirection - Set whether text is left-to-right or right-to-left direction.
  ///   - textDirection - Set textDirection by using [TextDirection]
  ///   - ltr - Use left-to-right direction
  ///   - rtl - Use right-to-left direction
  /// - textAlign, align - Set alignment of text
  ///   - alignLeft, left - Set alignment to left
  ///   - alignCenter, center - Set alignment to center
  ///   - alignRight, right - Set alignment to right
  ///   - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
  ///   - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
  ///   - alignJustify, justify - Set alignment to justify
  /// - autofocus - Should textfield be autofocus
  /// - readOnly - Should textfield be readonly
  /// - toolbarOptions - Toolbar is a context menu that will show up when user right click or long press the [EditableText]. It includes several options: cut, copy, paste, and select all
  ///   - toolbarOptions - Using [ToolbarOptions]
  ///   - toolbar - Configure using shorten named property of [ToolbarOptions]
  ///   - allowCopy - Set [ToolbarOptions.copy]
  ///   - allowCut - Set [ToolbarOptions.paste]
  ///   - allowPaste - Set [ToolbarOptions.cut]
  ///   - allowSelectAll - Set [ToolbarOptions.selectAll]
  /// - showCursor - Should textfield cursor be showned
  /// - obscuringCharacter - Display of "hidden" character like password
  /// - obscureText - Should text be obscure eg. password field
  /// - autoCorrect - Should autocorrect apply to textfield
  /// - smartDashesType - Indicates how to handle the intelligent replacement of dashes in text input
  ///   - enableSmartDashes - Using [SmartDashesType.enabled]
  ///   - disableSmartDashes - Using [SmartDashesType.disabled]
  /// - smartQuotesType - Indicates how to handle the intelligent replacement of quotes in text input
  ///   - enableSmartQuotes - Using [SmartDashesType.enabled]
  ///   - disableSmartQuotes - Using [SmartDashesType.disabled]
  /// - enableSuggestion - Should suggestion be used
  /// - maxLines - The maximum number of lines for the text to span, wrapping if necessary
  /// - minLines - The minimum number of lines to occupy when the content spans fewer lines
  /// - expands - Whether this widget's height will be sized to fill its parent
  /// - maxLength - The maximum number of characters (Unicode scalar values) to allow in the text field
  /// - on - Listeners of [TextField]
  ///   - on - Set multiple listener of [TextField] at once
  ///   - onChanged - Called when the value of textfield is changed
  ///   - onTap - Called for each distinct tap except for every second tap of a double tap
  ///   - onEditingComplete - Called when the user submits editable content (e.g., user presses the "done" button on the keyboard)
  ///   - onSubmitted, onFieldSubmitted - Called when the user indicates that they are done editing the text in the field
  ///   - onSaved - call with the final value when the form is saved via [FormState.save]
  /// - validator - An optional method that validates an input. Returns an error string to display if the input is invalid, or null otherwise
  /// - inputFormmaters - Optional input validation and formatting overrides
  /// - enabled - If false the text field is "disabled": it ignores taps and its [decoration] is rendered in grey
  /// - cursor - Appearance of cursor
  ///   - cursor - Set property of cursor at once
  ///   - cursorWidth - How thick the cursor will be
  ///   - cursorHeight - How tall the cursor will be
  ///   - cursorRadius - How rounded the corners of the cursor should be
  ///     - cursorRounded - Shorten of [.cursorRadius], how rounded the corners of the cursor should be
  ///   - cursorColor - Color of cursor
  /// - keyboardAppearance - The appearance of the keyboard, only honored on iOS devices
  ///   - lightKeyboard - Use light-theme keyboard
  ///   - darkKeyboard - Use dark-theme keyboard
  /// - scrollPadding - Configures padding to edges surrounding a [Scrollable] when the Textfield scrolls into view
  /// - scrollP - Shorten for [scrollPadding] accepting [shorten] padding applying to all side
  /// - enableInteractiveSelection - Whether to enable user interface affordances for changing the text selection
  /// - buildCounter - Callback that generates a custom [InputDecoration.counter] widget
  /// - scrollPhysics - The [ScrollPhysics] to use when vertically scrolling the input
  /// - autoFillHints - A list of strings that helps the autofill service identify the type of this text input
  /// - autoValidateMode - Validation of value of field
  ///   - alwaysValidate - Using [AutovalidateMode.always]
  ///   - disabledValidate - Using [AutovalidateMode.disabled]
  ///   - validateOnUserInteraction - Using [AutovalidateMode.onUserInteraction]
  ///
  /// [InputDecoration] property builder
  /// - icon - An icon to show before the input field and outside of the decoration's container
  ///
  /// - labelText - Label text
  /// - labelStyle - Stying of label using [TextStyle]
  ///   - labelStyle - Set labelStyle using [TextStyle]
  ///   - labelColor - Color of text
  ///   - labelFontSize - Set text size
  ///   - labelFontWeight - Font weight
  ///     - labelFontWeight - Set font weight of text
  ///     - labelBold - Set font to bold, equivalent to w700()
  ///     - labelW100 - Use font weight of 100
  ///     - labelW200 - Use font weight of 200
  ///     - labelW300 - Use font weight of 300
  ///     - labelW400 - Use font weight of 400
  ///     - labelW500 - Use font weight of 500
  ///     - labelW600 - Use font weight of 600
  ///     - labelW700 - Use font weight of 700
  ///     - labelW800 - Use font weight of 800
  ///     - labelW900 - Use font weight of 900
  ///   - labelFontWeight - The thickness of the glyphs used to draw the text
  ///   - labelFontStyle - Whether to slant the glyphs in the font
  ///     - labelFontStyle - Use [FontStyle] to apply
  ///     - labelItalic - Use italic style
  ///   - labelLetterSpacing - Spacing for each letter
  ///   - labelWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - labelTextBaseline - A horizontal line used for aligning text
  ///     - labelAlphabetic - Using [TextBaseline.alphabetic]
  ///     - labelIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - hintText - Hint text
  /// - hintMaxLines - Maximum line of hint text
  /// - hintStyle - Stying of hint using [TextStyle]
  ///   - hintStyle - Set hintStyle using [TextStyle]
  ///   - hintColor - Color of text
  ///   - hintFontSize - Set text size
  ///   - hintFontWeight - Font weight
  ///     - hintFontWeight - Set font weight of text
  ///     - hintBold - Set font to bold, equivalent to w700()
  ///     - hintW100 - Use font weight of 100
  ///     - hintW200 - Use font weight of 200
  ///     - hintW300 - Use font weight of 300
  ///     - hintW400 - Use font weight of 400
  ///     - hintW500 - Use font weight of 500
  ///     - hintW600 - Use font weight of 600
  ///     - hintW700 - Use font weight of 700
  ///     - hintW800 - Use font weight of 800
  ///     - hintW900 - Use font weight of 900
  ///   - hintFontWeight - The thickness of the glyphs used to draw the text
  ///   - hintFontStyle - Whether to slant the glyphs in the font
  ///     - hintFontStyle - Use [FontStyle] to apply
  ///     - hintItalic - Use italic style
  ///   - hintLetterSpacing - Spacing for each letter
  ///   - hintWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - hintTextBaseline - A horizontal line used for aligning text
  ///     - hintAlphabetic - Using [TextBaseline.alphabetic]
  ///     - hintIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - helperText - Helper text
  /// - helperMaxLines - Maximum line of helper text
  /// - helperStyle - Stying of helper using [TextStyle]
  ///   - helperStyle - Set helperStyle using [TextStyle]
  ///   - helperColor - Color of text
  ///   - helperFontSize - Set text size
  ///   - helperFontWeight - Font weight
  ///     - helperFontWeight - Set font weight of text
  ///     - helperBold - Set font to bold, equivalent to w700()
  ///     - helperW100 - Use font weight of 100
  ///     - helperW200 - Use font weight of 200
  ///     - helperW300 - Use font weight of 300
  ///     - helperW400 - Use font weight of 400
  ///     - helperW500 - Use font weight of 500
  ///     - helperW600 - Use font weight of 600
  ///     - helperW700 - Use font weight of 700
  ///     - helperW800 - Use font weight of 800
  ///     - helperW900 - Use font weight of 900
  ///   - helperFontWeight - The thickness of the glyphs used to draw the text
  ///   - helperFontStyle - Whether to slant the glyphs in the font
  ///     - helperFontStyle - Use [FontStyle] to apply
  ///     - helperItalic - Use italic style
  ///   - helperLetterSpacing - Spacing for each letter
  ///   - helperWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - helperTextBaseline - A horizontal line used for aligning text
  ///     - helperAlphabetic - Using [TextBaseline.alphabetic]
  ///     - helperIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - errorText - Error text
  /// - errorMaxLines - Maximum line of error text
  /// - errorStyle - Stying of error using [TextStyle]
  ///   - errorStyle - Set errorStyle using [TextStyle]
  ///   - errorColor - Color of text
  ///   - errorFontSize - Set text size
  ///   - errorFontWeight - Font weight
  ///     - errorFontWeight - Set font weight of text
  ///     - errorBold - Set font to bold, equivalent to w700()
  ///     - errorW100 - Use font weight of 100
  ///     - errorW200 - Use font weight of 200
  ///     - errorW300 - Use font weight of 300
  ///     - errorW400 - Use font weight of 400
  ///     - errorW500 - Use font weight of 500
  ///     - errorW600 - Use font weight of 600
  ///     - errorW700 - Use font weight of 700
  ///     - errorW800 - Use font weight of 800
  ///     - errorW900 - Use font weight of 900
  ///   - errorFontWeight - The thickness of the glyphs used to draw the text
  ///   - errorFontStyle - Whether to slant the glyphs in the font
  ///     - errorFontStyle - Use [FontStyle] to apply
  ///     - errorItalic - Use italic style
  ///   - errorLetterSpacing - Spacing for each letter
  ///   - errorWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - errorTextBaseline - A horizontal line used for aligning text
  ///     - errorAlphabetic - Using [TextBaseline.alphabetic]
  ///     - errorIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - floatingLabelBehavior - Defines the behavior of the floating label
  /// - isCollapsed - Whether the decoration is the same size as the input field
  /// - isDense - Whether the [InputDecorator.child] is part of a dense form (i.e., uses less vertical space)
  /// - contentPadding - The padding for the input decoration's container
  ///
  /// - prefixIcon - An icon that appears before the [prefix] or [prefixText] and before the editable part of the text field, within the decoration's container
  /// - prefixIconConstraints - The constraints for the prefix icon
  /// - prefix - Optional widget to place on the line before the input
  /// - prefixText - Optional text prefix to place on the line before the input
  /// - prefixStyle - Stying of prefix using [TextStyle]
  ///   - prefixStyle - Set prefixStyle using [TextStyle]
  ///   - prefixColor - Color of text
  ///   - prefixFontSize - Set text size
  ///   - prefixFontWeight - Font weight
  ///     - prefixFontWeight - Set font weight of text
  ///     - prefixBold - Set font to bold, equivalent to w700()
  ///     - prefixW100 - Use font weight of 100
  ///     - prefixW200 - Use font weight of 200
  ///     - prefixW300 - Use font weight of 300
  ///     - prefixW400 - Use font weight of 400
  ///     - prefixW500 - Use font weight of 500
  ///     - prefixW600 - Use font weight of 600
  ///     - prefixW700 - Use font weight of 700
  ///     - prefixW800 - Use font weight of 800
  ///     - prefixW900 - Use font weight of 900
  ///   - prefixFontWeight - The thickness of the glyphs used to draw the text
  ///   - prefixFontStyle - Whether to slant the glyphs in the font
  ///     - prefixFontStyle - Use [FontStyle] to apply
  ///     - prefixItalic - Use italic style
  ///   - prefixLetterSpacing - Spacing for each letter
  ///   - prefixWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - prefixTextBaseline - A horizontal line used for aligning text
  ///     - prefixAlphabetic - Using [TextBaseline.alphabetic]
  ///     - prefixIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - suffixIcon - An icon that appears before the [suffix] or [suffixText] and before the editable part of the text field, within the decoration's container
  /// - suffixIconConstraints - The constraints for the suffix icon
  /// - suffix - Optional widget to place on the line before the input
  /// - suffixText - Optional text suffix to place on the line before the input
  /// - suffixStyle - Stying of suffix using [TextStyle]
  ///   - suffixStyle - Set suffixStyle using [TextStyle]
  ///   - suffixColor - Color of text
  ///   - suffixFontSize - Set text size
  ///   - suffixFontWeight - Font weight
  ///     - suffixFontWeight - Set font weight of text
  ///     - suffixBold - Set font to bold, equivalent to w700()
  ///     - suffixW100 - Use font weight of 100
  ///     - suffixW200 - Use font weight of 200
  ///     - suffixW300 - Use font weight of 300
  ///     - suffixW400 - Use font weight of 400
  ///     - suffixW500 - Use font weight of 500
  ///     - suffixW600 - Use font weight of 600
  ///     - suffixW700 - Use font weight of 700
  ///     - suffixW800 - Use font weight of 800
  ///     - suffixW900 - Use font weight of 900
  ///   - suffixFontWeight - The thickness of the glyphs used to draw the text
  ///   - suffixFontStyle - Whether to slant the glyphs in the font
  ///     - suffixFontStyle - Use [FontStyle] to apply
  ///     - suffixItalic - Use italic style
  ///   - suffixLetterSpacing - Spacing for each letter
  ///   - suffixWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - suffixTextBaseline - A horizontal line used for aligning text
  ///     - suffixAlphabetic - Using [TextBaseline.alphabetic]
  ///     - suffixIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - counter - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored.
  /// - counterText - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored
  /// - counterStyle - Stying of counter using [TextStyle]
  ///   - counterStyle - Set counterStyle using [TextStyle]
  ///   - counterColor - Color of text
  ///   - counterFontSize - Set text size
  ///   - counterFontWeight - Font weight
  ///     - counterFontWeight - Set font weight of text
  ///     - counterBold - Set font to bold, equivalent to w700()
  ///     - counterW100 - Use font weight of 100
  ///     - counterW200 - Use font weight of 200
  ///     - counterW300 - Use font weight of 300
  ///     - counterW400 - Use font weight of 400
  ///     - counterW500 - Use font weight of 500
  ///     - counterW600 - Use font weight of 600
  ///     - counterW700 - Use font weight of 700
  ///     - counterW800 - Use font weight of 800
  ///     - counterW900 - Use font weight of 900
  ///   - counterFontWeight - The thickness of the glyphs used to draw the text
  ///   - counterFontStyle - Whether to slant the glyphs in the font
  ///     - counterFontStyle - Use [FontStyle] to apply
  ///     - counterItalic - Use italic style
  ///   - counterLetterSpacing - Spacing for each letter
  ///   - counterWordSpacing - Spacing for each word
  ///   - hintHeight - Fixed height for text
  ///   - hintForeground - The paint drawn as a foreground for the text
  ///   - hintBackground - The paint drawn as a background for the text
  ///   - counterTextBaseline - A horizontal line used for aligning text
  ///     - counterAlphabetic - Using [TextBaseline.alphabetic]
  ///     - counterIdeographic - Using [TextBaseline.ideographic]
  ///
  /// - filled - If true the decoration's container is filled with [fillColor]
  /// - fillColor - The base fill color of the decoration's container color
  ///   - setFillColor - Set multiple [FillColor] at once
  ///   - fillColor - The base fill color of the decoration's container color
  ///   - hoverColor - The base fill color of the decoration's container color when hovered
  ///   - focusColor - The base fill color of the decoration's container color when focused
  ///
  /// - border - The shape of the border to draw around the decoration's container
  ///   - setBorder - Set multiple [InputDecoration] at once
  ///   - border - The shape of the border to draw around the decoration's container
  ///   - enabledBorder - The border to display when the [InputDecorator] is enabled and is not showing an error
  ///   - disabledBorder - The border to display when the [InputDecorator] is disabled and is not showing an error
  ///   - focusedBorder - The border to display when the [InputDecorator] has the focus and is not showing an error
  ///   - errorBorder - The border to display when the [InputDecorator] does not have the focus and is showing an error
  ///
  /// - inputDecorationEnable - If false [helperText], [errorText], and [counterText] are not displayed, and the opacity of the remaining visual elements is reduced
  /// - semanticCounterText - A semantic label for the [counterText]
  /// - alignLabelWithHint - Align label as same level as hint
  ///
  /// - color - Color of text
  /// - bg, backgroundColor - Background color of text
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
  /// - height - Fixed height for text
  /// - foreground - The paint drawn as a foreground for the text
  /// - background - The paint drawn as a background for the text
  /// - textBaseline - A horizontal line used for aligning text
  ///   - alphabetic - Using [TextBaseline.alphabetic]
  ///   - ideographic - Using [TextBaseline.ideographic]
  NikuTextField(this._input_labelText);

  // * Text Form Field

  /// Controller for ediable text field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   controller: input
  /// )
  /// ```
  NikuTextField controller(TextEditingController controller) {
    _controller = controller;

    return this;
  }

  /// Controller for ediable text field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   controller: input
  /// )
  /// ```
  NikuTextField textEditingController(TextEditingController controller) {
    _controller = controller;

    return this;
  }

  /// Initial value of text field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///    initialValue: input
  /// )
  /// ```
  NikuTextField initialValue(String value) {
    _initialValue = value;

    return this;
  }

  /// Initial value of text field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   initialValue: input
  /// )
  /// ```
  NikuTextField initial(String value) {
    _initialValue = value;

    return this;
  }

  /// An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   focusNode: input
  /// )
  /// ```
  NikuTextField focusNode(FocusNode focusNode) {
    _focusNode = focusNode;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: input
  /// )
  /// ```
  NikuTextField keyboardType(TextInputType keyboardType) {
    _keyboardType = keyboardType;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.datetime]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.datetime
  /// )
  /// ```
  NikuTextField dateTimeKeyboard() {
    _keyboardType = TextInputType.datetime;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.email]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.email
  /// )
  /// ```
  NikuTextField emailKeyboard() {
    _keyboardType = TextInputType.emailAddress;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.multiline]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.multiline
  /// )
  /// ```
  NikuTextField multilineKeyboard() {
    _keyboardType = TextInputType.multiline;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.name]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.name
  /// )
  /// ```
  NikuTextField nameKeyboard() {
    _keyboardType = TextInputType.name;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.phone]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.phone
  /// )
  /// ```
  NikuTextField phoneKeyboard() {
    _keyboardType = TextInputType.phone;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.streetAddress]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.streetAddress
  /// )
  /// ```
  NikuTextField addressKeyboard() {
    _keyboardType = TextInputType.streetAddress;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.text]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.text
  /// )
  /// ```
  NikuTextField textKeyboard() {
    _keyboardType = TextInputType.text;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.url]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.url
  /// )
  /// ```
  NikuTextField urlKeyboard() {
    _keyboardType = TextInputType.url;

    return this;
  }

  /// The type of information for which to optimize the text input control
  ///
  /// Using [TextInputType.visiblePassword]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardType: TextInputType.visiblePassword
  /// )
  /// ```
  NikuTextField visiblePasswordKeyboard() {
    _keyboardType = TextInputType.visiblePassword;

    return this;
  }

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   textCapitalization: input
  /// )
  /// ```
  NikuTextField textCapitalization(TextCapitalization textCapitalization) {
    _textCapitalization = textCapitalization;

    return this;
  }

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///
  /// Using [TextCapitalization.characters]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   textCapitalization: TextCapitalization.characters
  /// )
  /// ```
  NikuTextField capitalizeCharacters() {
    _textCapitalization = TextCapitalization.characters;

    return this;
  }

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///
  /// Using [TextCapitalization.none]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   textCapitalization: TextCapitalization.none
  /// )
  /// ```
  NikuTextField capitalizeNone() {
    _textCapitalization = TextCapitalization.none;

    return this;
  }

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///
  /// Using [TextCapitalization.sentences]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   textCapitalization: TextCapitalization.sentences
  /// )
  /// ```
  NikuTextField capitalizeSentences() {
    _textCapitalization = TextCapitalization.sentences;

    return this;
  }

  /// Configures how the platform keyboard will select an uppercase or lowercase keyboard
  ///
  /// Using [TextCapitalization.words]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   textCapitalization: TextCapitalization.words
  /// )
  /// ```
  NikuTextField capitalizeWords() {
    _textCapitalization = TextCapitalization.words;

    return this;
  }

  /// Set whether text is left-to-right or right-to-left direction.
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: input)
  /// ```
  NikuTextField textDirection(TextDirection textDirection) {
    _textDirection = textDirection;

    return this;
  }

  /// Use left-to-right direction
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: TextDirection.ltr)
  /// ```
  NikuTextField ltr() {
    _textDirection = TextDirection.ltr;

    return this;
  }

  /// Use right-to-left direction
  ///
  /// Equivalent to
  /// ```
  /// Text(textDirection: TextDirection.rtl)
  /// ```
  NikuTextField rtl() {
    _textDirection = TextDirection.rtl;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: input)
  /// ```
  NikuTextField textAlign(TextAlign textAlign) {
    _textAlign = textAlign;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: input)
  /// ```
  NikuTextField align(TextAlign textAlign) {
    _textAlign = textAlign;

    return this;
  }

  /// Set alignment to left
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.left)
  /// ```
  NikuTextField alignLeft() {
    _textAlign = TextAlign.left;

    return this;
  }

  /// Set alignment to left
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.left)
  /// ```
  NikuTextField left() {
    _textAlign = TextAlign.left;

    return this;
  }

  /// Set alignment to center
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.center)
  /// ```
  NikuTextField alignCenter() {
    _textAlign = TextAlign.center;

    return this;
  }

  /// Set alignment to center
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.center)
  /// ```
  NikuTextField center() {
    _textAlign = TextAlign.center;

    return this;
  }

  /// Set alignment to right
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.right)
  /// ```
  NikuTextField alignRight() {
    _textAlign = TextAlign.right;

    return this;
  }

  /// Set alignment to right
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.right)
  /// ```
  NikuTextField right() {
    _textAlign = TextAlign.right;

    return this;
  }

  /// Set alignment to start, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.start)
  /// ```
  NikuTextField alignStart() {
    _textAlign = TextAlign.start;

    return this;
  }

  /// Set alignment to start, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.start)
  /// ```
  NikuTextField start() {
    _textAlign = TextAlign.start;

    return this;
  }

  /// Set alignment to end, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.end)
  /// ```
  NikuTextField alignEnd() {
    _textAlign = TextAlign.end;

    return this;
  }

  /// Set alignment to end, suitable for dynamic [TextDirection]
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.end)
  /// ```
  NikuTextField end() {
    _textAlign = TextAlign.end;

    return this;
  }

  /// Set alignment to justify
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.justify)
  /// ```
  NikuTextField alignJustify() {
    _textAlign = TextAlign.justify;

    return this;
  }

  /// Set alignment to justify
  ///
  /// Equivalent to
  /// ```
  /// Text(textAlign: TextAlign.justify)
  /// ```
  NikuTextField justify() {
    _textAlign = TextAlign.justify;

    return this;
  }

  /// Should textfield be autofocus
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autofocus: input
  /// )
  /// ```
  NikuTextField autofocus(bool autofocus) {
    _autofocus = autofocus;

    return this;
  }

  /// Should textfield be readonly
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   readonly: input
  /// )
  /// ```
  NikuTextField readOnly(bool readOnly) {
    _readOnly = readOnly;

    return this;
  }

  /// Toolbar is a context menu that will show up when user right click or long press the [EditableText]. It includes several options: cut, copy, paste, and select all
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: input
  /// )
  /// ```
  NikuTextField toolbarOptions(ToolbarOptions toolbarOptions) {
    _toolbarOptions = toolbarOptions;

    return this;
  }

  /// Configure using shorten named property of [ToolbarOptions]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: ToolbarOptions(
  ///     copy: copy,
  ///     cut: cut,
  ///     paste: paste,
  ///     selectAll: selectAll
  ///   )
  /// )
  /// ```
  NikuTextField toolbar(
      {bool copy = true,
      bool cut = true,
      bool paste = true,
      bool selectAll = true}) {
    _toolbarOptions = ToolbarOptions(
        copy: copy, cut: cut, paste: paste, selectAll: selectAll);

    return this;
  }

  /// Set [ToolbarOptions.copy]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: ToolbarOptions(
  ///     copy: input
  ///   )
  /// )
  /// ```
  NikuTextField allowCopy([bool value = false]) {
    _toolbarOptions = ToolbarOptions(
        copy: value,
        cut: _toolbarOptions?.cut ?? true,
        paste: _toolbarOptions?.paste ?? true,
        selectAll: _toolbarOptions?.selectAll ?? true);

    return this;
  }

  /// Set [ToolbarOptions.cut]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: ToolbarOptions(
  ///     cut: input
  ///   )
  /// )
  /// ```
  NikuTextField allowCut([bool value = false]) {
    _toolbarOptions = ToolbarOptions(
        copy: _toolbarOptions?.copy ?? true,
        cut: value,
        paste: _toolbarOptions?.paste ?? true,
        selectAll: _toolbarOptions?.selectAll ?? true);

    return this;
  }

  /// Set [ToolbarOptions.paste]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: ToolbarOptions(
  ///     paste: input
  ///   )
  /// )
  /// ```
  NikuTextField allowPaste([bool value = false]) {
    _toolbarOptions = ToolbarOptions(
        copy: _toolbarOptions?.copy ?? true,
        cut: _toolbarOptions?.cut ?? true,
        paste: value,
        selectAll: _toolbarOptions?.selectAll ?? true);

    return this;
  }

  /// Set [ToolbarOptions.selectAll]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   toolbarOptions: ToolbarOptions(
  ///     selectAll: input
  ///   )
  /// )
  /// ```
  NikuTextField allowSelectAll([bool value = false]) {
    _toolbarOptions = ToolbarOptions(
        copy: _toolbarOptions?.copy ?? true,
        cut: _toolbarOptions?.cut ?? true,
        paste: _toolbarOptions?.paste ?? true,
        selectAll: value);

    return this;
  }

  /// Should textfield cursor be showned
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   showCursor: input
  /// )
  /// ```
  NikuTextField showCursor(bool showCursor) {
    _showCursor = showCursor;

    return this;
  }

  /// Display of "hidden" character like password
  ///
  /// ```
  /// Equivalent to
  /// TextFormField(
  ///   obscuringCharacter: input
  /// )
  /// ```
  NikuTextField obscuringCharacter(String char) {
    _obscuringCharacter = char;

    return this;
  }

  /// Should text be obscure eg. password field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   obscuringCharacter: input
  /// )
  /// ```
  NikuTextField obscureText(bool obscureText) {
    _obscureText = obscureText;

    return this;
  }

  /// Should autocorrect apply to textfield
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autoCorrect: input
  /// )
  /// ```
  NikuTextField autoCorrect(bool autoCorrect) {
    _autocorrect = autoCorrect;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of dashes in text input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartDashesType: input
  /// )
  /// ```
  NikuTextField smartDashesType(SmartDashesType type) {
    _smartDashesType = type;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of dashes in text input
  ///
  /// Using [SmartDashesType.enabled]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartDashesType: SmartDashesType.enabled
  /// )
  /// ```
  NikuTextField enableSmartDashes() {
    _smartDashesType = SmartDashesType.enabled;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of dashes in text input
  ///
  /// Using [SmartDashesType.disabled]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartDashesType: SmartDashesType.disabled
  /// )
  /// ```
  NikuTextField disableSmartDashes() {
    _smartDashesType = SmartDashesType.disabled;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of quotes in text input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartQuotesType: input
  /// )
  /// ```
  NikuTextField smartQuotesType(SmartQuotesType type) {
    _smartQuotesType = type;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of quotes in text input
  ///
  /// Using [SmartQuotesType.enabled]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartQuotesType: SmartQuotesType.enabled
  /// )
  /// ```
  NikuTextField enableSmartQuotes() {
    _smartQuotesType = SmartQuotesType.enabled;

    return this;
  }

  /// Indicates how to handle the intelligent replacement of quotes in text input
  ///
  /// Using [SmartQuotesType.disabled]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   smartQuotesType: SmartQuotesType.disabled
  /// )
  /// ```
  NikuTextField disableSmartQuotes() {
    _smartQuotesType = SmartQuotesType.disabled;

    return this;
  }

  /// Should suggestion be used
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   enableSuggestions: input
  /// )
  /// ```
  NikuTextField enableSuggestions(bool suggestion) {
    _enableSuggestions = suggestion;

    return this;
  }

  /// The maximum number of lines for the text to span, wrapping if necessary
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   maxLines: input
  /// )
  /// ```
  NikuTextField maxLines(int maxLines) {
    _maxLines = maxLines;

    return this;
  }

  /// The minimum number of lines to occupy when the content spans fewer lines
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   maxLines: input
  /// )
  /// ```
  NikuTextField minLines(int minLines) {
    _minLines = minLines;

    return this;
  }

  /// Whether this widget's height will be sized to fill its parent
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   expands: input
  /// )
  /// ```
  NikuTextField expands(bool expands) {
    _expands = expands;

    return this;
  }

  /// The maximum number of characters (Unicode scalar values) to allow in the text field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   expands: input
  /// )
  /// ```
  NikuTextField maxLength(int maxLength) {
    _maxLength = maxLength;

    return this;
  }

  /// Called when the value of textfield is changed
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onChanged: input
  /// )
  /// ```
  NikuTextField onChanged(ValueChanged<String> onChanged) {
    _onChanged = onChanged;

    return this;
  }

  /// Called for each distinct tap except for every second tap of a double tap
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onTap: input
  /// )
  /// ```
  NikuTextField onTap(GestureTapCallback onTap) {
    _onTap = onTap;

    return this;
  }

  /// Called for each distinct tap except for every second tap of a double tap
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onTap: input
  /// )
  /// ```
  NikuTextField onEditingComplete(VoidCallback onEditingComplete) {
    _onEditingComplete = onEditingComplete;

    return this;
  }

  /// Called when the user indicates that they are done editing the text in the field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onFieldSubmitted: input
  /// )
  /// ```
  NikuTextField onSubmitted(ValueChanged<String> onFieldSubmitted) {
    _onFieldSubmitted = onFieldSubmitted;

    return this;
  }

  /// Called when the user indicates that they are done editing the text in the field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onFieldSubmitted: input
  /// )
  /// ```
  NikuTextField onFieldSubmitted(ValueChanged<String> onFieldSubmitted) {
    _onFieldSubmitted = onFieldSubmitted;

    return this;
  }

  /// call with the final value when the form is saved via [FormState.save]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onSaved: input
  /// )
  /// ```
  NikuTextField onSaved(FormFieldSetter<String> onSaved) {
    _onSaved = onSaved;

    return this;
  }

  /// call with the final value when the form is saved via [FormState.save]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   onChanged: changed,
  ///   onTap: tap,
  ///   onEditingComplete: editingComplete
  ///   onFieldSubmitted: submitted,
  ///   onSaved: saved
  /// )
  /// ```
  NikuTextField on(
      {ValueChanged<String>? changed,
      GestureTapCallback? tap,
      VoidCallback? editingComplete,
      ValueChanged<String>? submitted,
      FormFieldValidator<String>? saved}) {
    _onChanged = changed;
    _onTap = tap;
    _onEditingComplete = editingComplete;
    _onFieldSubmitted = submitted;
    _onSaved = saved;

    return this;
  }

  /// An optional method that validates an input. Returns an error string to display if the input is invalid, or null otherwise.
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   validator: input
  /// )
  /// ```
  NikuTextField validator(FormFieldValidator<String> validator) {
    _validator = validator;

    return this;
  }

  /// Optional input validation and formatting overrides
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   inputFormatters: input
  /// )
  /// ```
  NikuTextField inputFormatters(List<TextInputFormatter> inputFormatters) {
    _inputFormatters = inputFormatters;

    return this;
  }

  /// If false the text field is "disabled": it ignores taps and its [decoration] is rendered in grey
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   enabled: input
  /// )
  /// ```
  NikuTextField enabled(bool enabled) {
    _enabled = enabled;

    return this;
  }

  /// How thick the cursor will be
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorWidth: input
  /// )
  /// ```
  NikuTextField cursorWidth(double cursorWidth) {
    _cursorWidth = cursorWidth;

    return this;
  }

  /// How tall the cursor will be
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorHeight: input
  /// )
  /// ```
  NikuTextField cursorHeight(double cursorHeight) {
    _cursorHeight = cursorHeight;

    return this;
  }

  /// How rounded the corners of the cursor should be
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorRadius: input
  /// )
  /// ```
  NikuTextField cursorRadius(Radius cursorRadius) {
    _cursorRadius = cursorRadius;

    return this;
  }

  /// How rounded the corners of the cursor should be.
  /// Shorten of [.cursorRadius]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorWidth: Radius.circular(input)
  /// )
  /// ```
  NikuTextField cursorRounded(double radius) {
    _cursorRadius = Radius.circular(radius);

    return this;
  }

  /// Color of cursor
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorColor: input
  /// )
  /// ```
  NikuTextField cursorColor(Color color) {
    _cursorColor = color;

    return this;
  }

  /// Set property of cursor at once
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   cursorWidth: width,
  ///   cursorHeight: height,
  ///   cursorRadius: radius,
  ///   cursorColor: color
  /// )
  /// ```
  NikuTextField cursor(
      {double width = 2, double? height, Radius? radius, Color? color}) {
    _cursorWidth = width;
    _cursorHeight = height ?? _cursorHeight;
    _cursorRadius = radius ?? _cursorRadius;
    _cursorColor = color ?? _cursorColor;

    return this;
  }

  /// The appearance of the keyboard, only honored on iOS devices
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardAppearance: input
  /// )
  /// ```
  NikuTextField keyboardAppearance(Brightness brightness) {
    _keyboardAppearance = brightness;

    return this;
  }

  /// The appearance of the keyboard, only honored on iOS devices
  ///
  /// Using [Brightness.light]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardAppearance: Brightness.light
  /// )
  /// ```
  NikuTextField lightKeyboard() {
    _keyboardAppearance = Brightness.light;

    return this;
  }

  /// The appearance of the keyboard, only honored on iOS devices
  ///
  /// Using [Brightness.dark]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   keyboardAppearance: Brightness.dark
  /// )
  /// ```
  NikuTextField darkKeyboard() {
    _keyboardAppearance = Brightness.dark;

    return this;
  }

  /// Configures padding to edges surrounding a [Scrollable] when the Textfield scrolls into view
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   scrollPadding: input
  /// )
  /// ```
  NikuTextField scrollPadding(EdgeInsets padding) {
    _scrollPadding = padding;

    return this;
  }

  /// Configures padding to edges surrounding a [Scrollable] when the Textfield scrolls into view
  /// Shorten for [scrollPadding] accepting [shorten] padding applying to all side
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   scrollPadding: EdgeInsets.all(input)
  /// )
  /// ```
  NikuTextField scrollP(double padding) {
    _scrollPadding = EdgeInsets.all(padding);

    return this;
  }

  /// Whether to enable user interface affordances for changing the text selection
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   enableInteractiveSelection: input
  /// )
  /// ```
  NikuTextField enableInteractiveSelection(bool enabled) {
    _enableInteractiveSelection = enabled;

    return this;
  }

  /// Callback that generates a custom [InputDecoration.counter] widget
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   buildCounter: input
  /// )
  /// ```
  NikuTextField buildCounter(InputCounterWidgetBuilder builder) {
    _buildCounter = builder;

    return this;
  }

  /// The [ScrollPhysics] to use when vertically scrolling the input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   scrollPhysics: input
  /// )
  /// ```
  NikuTextField scrollPhysics(ScrollPhysics physics) {
    _scrollPhysics = physics;

    return this;
  }

  /// A list of strings that helps the autofill service identify the type of this text input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autoFillHints: input
  /// )
  /// ```
  NikuTextField autoFillHints(Iterable<String> autofillHints) {
    _autofillHints = autofillHints;

    return this;
  }

  /// Validation of value of field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autovalidateMode: input
  /// )
  /// ```
  NikuTextField autoValidateMode(AutovalidateMode autovalidateMode) {
    _autovalidateMode = autovalidateMode;

    return this;
  }

  /// Validation of value of field
  ///
  /// Using [AutovalidateMode.always]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autovalidateMode: AutovalidateMode.always
  /// )
  /// ```
  NikuTextField alwaysValidate() {
    _autovalidateMode = AutovalidateMode.always;

    return this;
  }

  /// Validation of value of field
  ///
  /// Using [AutovalidateMode.disabled]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autovalidateMode: AutovalidateMode.disabled
  /// )
  /// ```
  NikuTextField disabledValidate() {
    _autovalidateMode = AutovalidateMode.disabled;

    return this;
  }

  /// Validation of value of field
  ///
  /// Using [AutovalidateMode.onUserInteraction]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   autovalidateMode: AutovalidateMode.onUserInteraction
  /// )
  /// ```
  NikuTextField validateOnUserInteraction() {
    _autovalidateMode = AutovalidateMode.onUserInteraction;

    return this;
  }

  // * Input Decoration

  /// An icon to show before the input field and outside of the decoration's container
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     icon: input
  ///   )
  /// )
  /// ```
  NikuTextField icon(Widget icon) {
    _input_icon = icon;

    return this;
  }

  /// Label text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     labelText: input
  ///   )
  /// )
  /// ```
  NikuTextField labelText(String labelText) {
    _input_labelText = labelText;

    return this;
  }

  /// Label text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     labelText: input
  ///   )
  /// )
  /// ```
  NikuTextField label(String labelText) {
    _input_labelText = labelText;

    return this;
  }

  // * LabelStyle

  /// Stying of label using [TextStyle]
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     labelStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField labelStyle(TextStyle textStyle) {
    // Input Label Style
    _label_color = textStyle.color;
    _label_backgroundColor = textStyle.backgroundColor;
    _label_fontSize = textStyle.fontSize;
    _label_fontWeight = textStyle.fontWeight;
    _label_fontStyle = textStyle.fontStyle;
    _label_letterSpacing = textStyle.letterSpacing;
    _label_wordSpacing = textStyle.wordSpacing;
    _label_height = textStyle.height;
    _label_foreground = textStyle.foreground;
    _label_background = textStyle.background;
    _label_shadows = textStyle.shadows;
    _label_fontFeatures = textStyle.fontFeatures;
    _label_textDecoration = textStyle.decoration;
    _label_textDecorationColor = textStyle.decorationColor;
    _label_textDecorationThickness = textStyle.decorationThickness;
    _label_fontFamily = textStyle.fontFamily;
    _label_fontFamilyFallback = textStyle.fontFamilyFallback;
    _label_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField labelColor(Color color) {
    _label_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField labelBackgroundColor(Color backgroundColor) {
    _label_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField labelBg(Color backgroundColor) {
    _label_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField labelFontSize(double fontSize) {
    _label_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField labelFontWeight(FontWeight fontWeight) {
    _label_fontWeight = fontWeight;

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
  NikuTextField labelBold() {
    _label_fontWeight = FontWeight.bold;

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
  NikuTextField labelW100() {
    _label_fontWeight = FontWeight.w100;

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
  NikuTextField labelW200() {
    _label_fontWeight = FontWeight.w200;

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
  NikuTextField labelW300() {
    _label_fontWeight = FontWeight.w300;

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
  NikuTextField labelW400() {
    _label_fontWeight = FontWeight.w400;

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
  NikuTextField labelW500() {
    _label_fontWeight = FontWeight.w500;

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
  NikuTextField labelW600() {
    _label_fontWeight = FontWeight.w600;

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
  NikuTextField labelW700() {
    _label_fontWeight = FontWeight.w700;

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
  NikuTextField labelW800() {
    _label_fontWeight = FontWeight.w800;

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
  NikuTextField labelW900() {
    _label_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField labelFontStyle(FontStyle fontStyle) {
    _label_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField labelItalic() {
    _label_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField labelLetterSpacing(double letterSpacing) {
    _label_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField labelWordSpacing(double wordSpacing) {
    _label_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField labelHeight(double height) {
    _label_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField labelForeground(Paint foreground) {
    _label_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField labelBackground(Paint foreground) {
    _label_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField labelShadows(List<Shadow> shadows) {
    _label_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField labelFontFeatures(List<FontFeature> fontFeatures) {
    _label_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField labelTextDecoration(TextDecoration textDecoration) {
    _label_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField labelTextDecorationColor(Color textDecorationColor) {
    _label_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField labelTextDecorationThickness(double textDecorationThickness) {
    _label_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField labelFontFamily(String fontFamily) {
    _label_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField labelFontFamilyFallback(List<String> fontFamily) {
    _label_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField labelTextBaseline(TextBaseline textBaseline) {
    _label_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField labelAlphabetic() {
    _label_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField labelIdeographic() {
    _label_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Hint text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     hintText: input
  ///   )
  /// )
  /// ```
  NikuTextField hintText(String helperText) {
    _input_hintText = helperText;

    return this;
  }

  /// Maximum line of hint text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     hintMaxLinesText: input
  ///   )
  /// )
  /// ```
  NikuTextField hintMaxLines(int maxLines) {
    _input_hintMaxLines = maxLines;

    return this;
  }

  // * hintStyle

  /// Stying of label using [TextStyle]
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     hintStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField hintStyle(TextStyle textStyle) {
    // Input hint Style
    _hint_color = textStyle.color;
    _hint_backgroundColor = textStyle.backgroundColor;
    _hint_fontSize = textStyle.fontSize;
    _hint_fontWeight = textStyle.fontWeight;
    _hint_fontStyle = textStyle.fontStyle;
    _hint_letterSpacing = textStyle.letterSpacing;
    _hint_wordSpacing = textStyle.wordSpacing;
    _hint_height = textStyle.height;
    _hint_foreground = textStyle.foreground;
    _hint_background = textStyle.background;
    _hint_shadows = textStyle.shadows;
    _hint_fontFeatures = textStyle.fontFeatures;
    _hint_textDecoration = textStyle.decoration;
    _hint_textDecorationColor = textStyle.decorationColor;
    _hint_textDecorationThickness = textStyle.decorationThickness;
    _hint_fontFamily = textStyle.fontFamily;
    _hint_fontFamilyFallback = textStyle.fontFamilyFallback;
    _hint_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField hintColor(Color color) {
    _hint_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField hintBackgroundColor(Color backgroundColor) {
    _hint_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField hintBg(Color backgroundColor) {
    _hint_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField hintFontSize(double fontSize) {
    _hint_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField hintFontWeight(FontWeight fontWeight) {
    _hint_fontWeight = fontWeight;

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
  NikuTextField hintBold() {
    _hint_fontWeight = FontWeight.bold;

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
  NikuTextField hintW100() {
    _hint_fontWeight = FontWeight.w100;

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
  NikuTextField hintW200() {
    _hint_fontWeight = FontWeight.w200;

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
  NikuTextField hintW300() {
    _hint_fontWeight = FontWeight.w300;

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
  NikuTextField hintW400() {
    _hint_fontWeight = FontWeight.w400;

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
  NikuTextField hintW500() {
    _hint_fontWeight = FontWeight.w500;

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
  NikuTextField hintW600() {
    _hint_fontWeight = FontWeight.w600;

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
  NikuTextField hintW700() {
    _hint_fontWeight = FontWeight.w700;

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
  NikuTextField hintW800() {
    _hint_fontWeight = FontWeight.w800;

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
  NikuTextField hintW900() {
    _hint_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField hintFontStyle(FontStyle fontStyle) {
    _hint_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField hintItalic() {
    _hint_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField hintLetterSpacing(double letterSpacing) {
    _hint_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField hintWordSpacing(double wordSpacing) {
    _hint_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField hintHeight(double height) {
    _hint_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField hintForeground(Paint foreground) {
    _hint_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField hintBackground(Paint foreground) {
    _hint_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField hintShadows(List<Shadow> shadows) {
    _hint_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField hintFontFeatures(List<FontFeature> fontFeatures) {
    _hint_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField hintTextDecoration(TextDecoration textDecoration) {
    _hint_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField hintTextDecorationColor(Color textDecorationColor) {
    _hint_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField hintTextDecorationThickness(double textDecorationThickness) {
    _hint_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField hintFontFamily(String fontFamily) {
    _hint_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField hintFontFamilyFallback(List<String> fontFamily) {
    _hint_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField hintTextBaseline(TextBaseline textBaseline) {
    _hint_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField hintAlphabetic() {
    _hint_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField hintIdeographic() {
    _hint_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Helper text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     helperText: input
  ///   )
  /// )
  /// ```
  NikuTextField helperText(String helperText) {
    _input_helperText = helperText;

    return this;
  }

  /// Maximum line of helper text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     helperMaxLinesText: input
  ///   )
  /// )
  /// ```
  NikuTextField helperMaxLines(int maxLines) {
    _input_helperMaxLines = maxLines;

    return this;
  }

  // * LabelStyle

  /// Dtyling of hint using [TextStyle]
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     helperStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField helperStyle(TextStyle textStyle) {
    // Input Label Style
    _helper_color = textStyle.color;
    _helper_backgroundColor = textStyle.backgroundColor;
    _helper_fontSize = textStyle.fontSize;
    _helper_fontWeight = textStyle.fontWeight;
    _helper_fontStyle = textStyle.fontStyle;
    _helper_letterSpacing = textStyle.letterSpacing;
    _helper_wordSpacing = textStyle.wordSpacing;
    _helper_height = textStyle.height;
    _helper_foreground = textStyle.foreground;
    _helper_background = textStyle.background;
    _helper_shadows = textStyle.shadows;
    _helper_fontFeatures = textStyle.fontFeatures;
    _helper_textDecoration = textStyle.decoration;
    _helper_textDecorationColor = textStyle.decorationColor;
    _helper_textDecorationThickness = textStyle.decorationThickness;
    _helper_fontFamily = textStyle.fontFamily;
    _helper_fontFamilyFallback = textStyle.fontFamilyFallback;
    _helper_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField helperColor(Color color) {
    _helper_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField helperBackgroundColor(Color backgroundColor) {
    _helper_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField helperBg(Color backgroundColor) {
    _helper_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField helperFontSize(double fontSize) {
    _helper_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField helperFontWeight(FontWeight fontWeight) {
    _helper_fontWeight = fontWeight;

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
  NikuTextField helperBold() {
    _helper_fontWeight = FontWeight.bold;

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
  NikuTextField helperW100() {
    _helper_fontWeight = FontWeight.w100;

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
  NikuTextField helperW200() {
    _helper_fontWeight = FontWeight.w200;

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
  NikuTextField helperW300() {
    _helper_fontWeight = FontWeight.w300;

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
  NikuTextField helperW400() {
    _helper_fontWeight = FontWeight.w400;

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
  NikuTextField helperW500() {
    _helper_fontWeight = FontWeight.w500;

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
  NikuTextField helperW600() {
    _helper_fontWeight = FontWeight.w600;

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
  NikuTextField helperW700() {
    _helper_fontWeight = FontWeight.w700;

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
  NikuTextField helperW800() {
    _helper_fontWeight = FontWeight.w800;

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
  NikuTextField helperW900() {
    _helper_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField helperFontStyle(FontStyle fontStyle) {
    _helper_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField helperItalic() {
    _helper_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField helperLetterSpacing(double letterSpacing) {
    _helper_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField helperWordSpacing(double wordSpacing) {
    _helper_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField helperHeight(double height) {
    _helper_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField helperForeground(Paint foreground) {
    _helper_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField helperBackground(Paint foreground) {
    _helper_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField helperShadows(List<Shadow> shadows) {
    _helper_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField helperFontFeatures(List<FontFeature> fontFeatures) {
    _helper_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField helperTextDecoration(TextDecoration textDecoration) {
    _helper_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField helperTextDecorationColor(Color textDecorationColor) {
    _helper_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField helperTextDecorationThickness(double textDecorationThickness) {
    _helper_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField helperFontFamily(String fontFamily) {
    _helper_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField helperFontFamilyFallback(List<String> fontFamily) {
    _helper_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField helperTextBaseline(TextBaseline textBaseline) {
    _helper_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField helperAlphabetic() {
    _helper_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField helperIdeographic() {
    _helper_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Error text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     errorText: input
  ///   )
  /// )
  /// ```
  NikuTextField errorText(String errorText) {
    _input_errorText = errorText;

    return this;
  }

  /// Maximum line of helper text
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     errorMaxLines: input
  ///   )
  /// )
  /// ```
  NikuTextField errorMaxLines(int maxLines) {
    _input_errorMaxLines = maxLines;

    return this;
  }

  // * LabelStyle

  /// Stying of label using [TextStyle]
  ///
  /// Equivalent to
  /// ```
  /// TextFieldForm(
  ///   decoration: InputDecoration(
  ///     errorStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField errorStyle(TextStyle textStyle) {
    // Input Label Style
    _error_color = textStyle.color;
    _error_backgroundColor = textStyle.backgroundColor;
    _error_fontSize = textStyle.fontSize;
    _error_fontWeight = textStyle.fontWeight;
    _error_fontStyle = textStyle.fontStyle;
    _error_letterSpacing = textStyle.letterSpacing;
    _error_wordSpacing = textStyle.wordSpacing;
    _error_height = textStyle.height;
    _error_foreground = textStyle.foreground;
    _error_background = textStyle.background;
    _error_shadows = textStyle.shadows;
    _error_fontFeatures = textStyle.fontFeatures;
    _error_textDecoration = textStyle.decoration;
    _error_textDecorationColor = textStyle.decorationColor;
    _error_textDecorationThickness = textStyle.decorationThickness;
    _error_fontFamily = textStyle.fontFamily;
    _error_fontFamilyFallback = textStyle.fontFamilyFallback;
    _error_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField errorColor(Color color) {
    _error_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField errorBackgroundColor(Color backgroundColor) {
    _error_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField errorBg(Color backgroundColor) {
    _error_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField errorFontSize(double fontSize) {
    _error_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField errorFontWeight(FontWeight fontWeight) {
    _error_fontWeight = fontWeight;

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
  NikuTextField errorBold() {
    _error_fontWeight = FontWeight.bold;

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
  NikuTextField errorW100() {
    _error_fontWeight = FontWeight.w100;

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
  NikuTextField errorW200() {
    _error_fontWeight = FontWeight.w200;

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
  NikuTextField errorW300() {
    _error_fontWeight = FontWeight.w300;

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
  NikuTextField errorW400() {
    _error_fontWeight = FontWeight.w400;

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
  NikuTextField errorW500() {
    _error_fontWeight = FontWeight.w500;

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
  NikuTextField errorW600() {
    _error_fontWeight = FontWeight.w600;

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
  NikuTextField errorW700() {
    _error_fontWeight = FontWeight.w700;

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
  NikuTextField errorW800() {
    _error_fontWeight = FontWeight.w800;

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
  NikuTextField errorW900() {
    _error_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField errorFontStyle(FontStyle fontStyle) {
    _error_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField errorItalic() {
    _error_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField errorLetterSpacing(double letterSpacing) {
    _error_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField errorWordSpacing(double wordSpacing) {
    _error_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField errorHeight(double height) {
    _error_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField errorForeground(Paint foreground) {
    _error_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField errorBackground(Paint foreground) {
    _error_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField errorShadows(List<Shadow> shadows) {
    _error_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField errorFontFeatures(List<FontFeature> fontFeatures) {
    _error_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField errorTextDecoration(TextDecoration textDecoration) {
    _error_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField errorTextDecorationColor(Color textDecorationColor) {
    _error_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField errorTextDecorationThickness(double textDecorationThickness) {
    _error_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField errorFontFamily(String fontFamily) {
    _error_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField errorFontFamilyFallback(List<String> fontFamily) {
    _error_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField errorTextBaseline(TextBaseline textBaseline) {
    _error_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField errorAlphabetic() {
    _error_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField errorIdeographic() {
    _error_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Defines the behavior of the floating label
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     floatingLabelBehavior: input
  ///   )
  /// )
  /// ```
  NikuTextField floatingLabelBehavior(FloatingLabelBehavior behavior) {
    _input_floatingLabelBehavior = behavior;

    return this;
  }

  /// Whether the decoration is the same size as the input field
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     isCollapsed: bool
  ///   )
  /// )
  /// ```
  NikuTextField isCollapsed(bool isCollapsed) {
    _input_isCollapsed = isCollapsed;

    return this;
  }

  /// Whether the [InputDecorator.child] is part of a dense form (i.e., uses less vertical space)
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     isDense: input
  ///   )
  /// )
  /// ```
  NikuTextField isDense(bool isDense) {
    _input_isDense = isDense;

    return this;
  }

  /// The padding for the input decoration's container
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     contentPadding: input
  ///   )
  /// )
  /// ```
  NikuTextField contentPadding(EdgeInsetsGeometry padding) {
    _input_contentPadding = padding;

    return this;
  }

  /// An icon that appears before the [prefix] or [prefixText] and before the editable part of the text field, within the decoration's container
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixIcon: input
  ///   )
  /// )
  /// ```
  NikuTextField prefixIcon(Widget icon) {
    _input_prefixIcon = icon;

    return this;
  }

  /// The constraints for the prefix icon
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixIconConstraints: input
  ///   )
  /// )
  /// ```
  NikuTextField prefixIconConstraints(BoxConstraints constraints) {
    _input_prefixIconConstraints = constraints;

    return this;
  }

  /// Optional widget to place on the line before the input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefix: input
  ///   )
  /// )
  /// ```
  NikuTextField prefix(Widget widget) {
    _input_prefix = widget;

    return this;
  }

  /// Optional text prefix to place on the line before the input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixText: input
  ///   )
  /// )
  /// ```
  NikuTextField prefixText(String prefixText) {
    _input_prefixText = prefixText;

    return this;
  }

  /// The style to use for the [prefixText]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField prefixStyle(TextStyle textStyle) {
    // Input Label Style
    _prefix_color = textStyle.color;
    _prefix_backgroundColor = textStyle.backgroundColor;
    _prefix_fontSize = textStyle.fontSize;
    _prefix_fontWeight = textStyle.fontWeight;
    _prefix_fontStyle = textStyle.fontStyle;
    _prefix_letterSpacing = textStyle.letterSpacing;
    _prefix_wordSpacing = textStyle.wordSpacing;
    _prefix_height = textStyle.height;
    _prefix_foreground = textStyle.foreground;
    _prefix_background = textStyle.background;
    _prefix_shadows = textStyle.shadows;
    _prefix_fontFeatures = textStyle.fontFeatures;
    _prefix_textDecoration = textStyle.decoration;
    _prefix_textDecorationColor = textStyle.decorationColor;
    _prefix_textDecorationThickness = textStyle.decorationThickness;
    _prefix_fontFamily = textStyle.fontFamily;
    _prefix_fontFamilyFallback = textStyle.fontFamilyFallback;
    _prefix_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField prefixColor(Color color) {
    _prefix_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField prefixBackgroundColor(Color backgroundColor) {
    _prefix_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField prefixBg(Color backgroundColor) {
    _prefix_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField prefixFontSize(double fontSize) {
    _prefix_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField prefixFontWeight(FontWeight fontWeight) {
    _prefix_fontWeight = fontWeight;

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
  NikuTextField prefixBold() {
    _prefix_fontWeight = FontWeight.bold;

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
  NikuTextField prefixW100() {
    _prefix_fontWeight = FontWeight.w100;

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
  NikuTextField prefixW200() {
    _prefix_fontWeight = FontWeight.w200;

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
  NikuTextField prefixW300() {
    _prefix_fontWeight = FontWeight.w300;

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
  NikuTextField prefixW400() {
    _prefix_fontWeight = FontWeight.w400;

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
  NikuTextField prefixW500() {
    _prefix_fontWeight = FontWeight.w500;

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
  NikuTextField prefixW600() {
    _prefix_fontWeight = FontWeight.w600;

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
  NikuTextField prefixW700() {
    _prefix_fontWeight = FontWeight.w700;

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
  NikuTextField prefixW800() {
    _prefix_fontWeight = FontWeight.w800;

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
  NikuTextField prefixW900() {
    _prefix_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField prefixFontStyle(FontStyle fontStyle) {
    _prefix_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField prefixItalic() {
    _prefix_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField prefixLetterSpacing(double letterSpacing) {
    _prefix_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField prefixWordSpacing(double wordSpacing) {
    _prefix_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField prefixHeight(double height) {
    _prefix_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField prefixForeground(Paint foreground) {
    _prefix_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField prefixBackground(Paint foreground) {
    _prefix_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField prefixShadows(List<Shadow> shadows) {
    _prefix_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField prefixFontFeatures(List<FontFeature> fontFeatures) {
    _prefix_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField prefixTextDecoration(TextDecoration textDecoration) {
    _prefix_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField prefixTextDecorationColor(Color textDecorationColor) {
    _prefix_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField prefixTextDecorationThickness(double textDecorationThickness) {
    _prefix_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField prefixFontFamily(String fontFamily) {
    _prefix_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField prefixFontFamilyFallback(List<String> fontFamily) {
    _prefix_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField prefixTextBaseline(TextBaseline textBaseline) {
    _prefix_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField prefixAlphabetic() {
    _prefix_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField prefixIdeographic() {
    _prefix_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// An icon that appears before the [suffix] or [suffixText] and before the editable part of the text field, within the decoration's container
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     suffixIcon: input
  ///   )
  /// )
  /// ```
  NikuTextField suffixIcon(Widget widget) {
    _input_suffixIcon = widget;

    return this;
  }

  /// The constraints for the suffix icon
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     suffixIcon: input
  ///   )
  /// )
  /// ```
  NikuTextField suffixIconConstraints(BoxConstraints constraints) {
    _input_suffixIconConstraints = constraints;

    return this;
  }

  ///  Optional widget to place on the line before the input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     suffixIcon: input
  ///   )
  /// )
  /// ```
  NikuTextField suffix(Widget widget) {
    _input_suffix = widget;

    return this;
  }

  /// Optional widget to place on the line before the input
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     suffixIconConstraints: input
  ///   )
  /// )
  /// ```
  NikuTextField suffixText(String prefixText) {
    _input_suffixText = prefixText;

    return this;
  }

  /// The style to use for the [suffixText]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField suffixStyle(TextStyle textStyle) {
    // Input Label Style
    _suffix_color = textStyle.color;
    _suffix_backgroundColor = textStyle.backgroundColor;
    _suffix_fontSize = textStyle.fontSize;
    _suffix_fontWeight = textStyle.fontWeight;
    _suffix_fontStyle = textStyle.fontStyle;
    _suffix_letterSpacing = textStyle.letterSpacing;
    _suffix_wordSpacing = textStyle.wordSpacing;
    _suffix_height = textStyle.height;
    _suffix_foreground = textStyle.foreground;
    _suffix_background = textStyle.background;
    _suffix_shadows = textStyle.shadows;
    _suffix_fontFeatures = textStyle.fontFeatures;
    _suffix_textDecoration = textStyle.decoration;
    _suffix_textDecorationColor = textStyle.decorationColor;
    _suffix_textDecorationThickness = textStyle.decorationThickness;
    _suffix_fontFamily = textStyle.fontFamily;
    _suffix_fontFamilyFallback = textStyle.fontFamilyFallback;
    _suffix_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField suffixColor(Color color) {
    _suffix_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField suffixBackgroundColor(Color backgroundColor) {
    _suffix_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField suffixBg(Color backgroundColor) {
    _suffix_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField suffixFontSize(double fontSize) {
    _suffix_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField suffixFontWeight(FontWeight fontWeight) {
    _suffix_fontWeight = fontWeight;

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
  NikuTextField suffixBold() {
    _suffix_fontWeight = FontWeight.bold;

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
  NikuTextField suffixW100() {
    _suffix_fontWeight = FontWeight.w100;

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
  NikuTextField suffixW200() {
    _suffix_fontWeight = FontWeight.w200;

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
  NikuTextField suffixW300() {
    _suffix_fontWeight = FontWeight.w300;

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
  NikuTextField suffixW400() {
    _suffix_fontWeight = FontWeight.w400;

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
  NikuTextField suffixW500() {
    _suffix_fontWeight = FontWeight.w500;

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
  NikuTextField suffixW600() {
    _suffix_fontWeight = FontWeight.w600;

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
  NikuTextField suffixW700() {
    _suffix_fontWeight = FontWeight.w700;

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
  NikuTextField suffixW800() {
    _suffix_fontWeight = FontWeight.w800;

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
  NikuTextField suffixW900() {
    _suffix_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField suffixFontStyle(FontStyle fontStyle) {
    _suffix_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField suffixItalic() {
    _suffix_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField suffixLetterSpacing(double letterSpacing) {
    _suffix_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField suffixWordSpacing(double wordSpacing) {
    _suffix_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField suffixHeight(double height) {
    _suffix_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField suffixForeground(Paint foreground) {
    _suffix_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField suffixBackground(Paint foreground) {
    _suffix_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField suffixShadows(List<Shadow> shadows) {
    _suffix_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField suffixFontFeatures(List<FontFeature> fontFeatures) {
    _suffix_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField suffixTextDecoration(TextDecoration textDecoration) {
    _suffix_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField suffixTextDecorationColor(Color textDecorationColor) {
    _suffix_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField suffixTextDecorationThickness(double textDecorationThickness) {
    _suffix_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField suffixFontFamily(String fontFamily) {
    _suffix_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField suffixFontFamilyFallback(List<String> fontFamily) {
    _suffix_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField suffixTextBaseline(TextBaseline textBaseline) {
    _suffix_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField suffixAlphabetic() {
    _suffix_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField suffixIdeographic() {
    _suffix_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored.
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     counter: input
  ///   )
  /// )
  /// ```
  NikuTextField counter(Widget counter) {
    _input_counter = counter;

    return this;
  }

  /// Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     counterText: input
  ///   )
  /// )
  /// ```
  NikuTextField counterText(String counterText) {
    _input_counterText = counterText;

    return this;
  }

  /// The style to use for the [counterText]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     prefixStyle: input
  ///   )
  /// )
  /// ```
  NikuTextField counterStyle(TextStyle textStyle) {
    // Input Label Style
    _counter_color = textStyle.color;
    _counter_backgroundColor = textStyle.backgroundColor;
    _counter_fontSize = textStyle.fontSize;
    _counter_fontWeight = textStyle.fontWeight;
    _counter_fontStyle = textStyle.fontStyle;
    _counter_letterSpacing = textStyle.letterSpacing;
    _counter_wordSpacing = textStyle.wordSpacing;
    _counter_height = textStyle.height;
    _counter_foreground = textStyle.foreground;
    _counter_background = textStyle.background;
    _counter_shadows = textStyle.shadows;
    _counter_fontFeatures = textStyle.fontFeatures;
    _counter_textDecoration = textStyle.decoration;
    _counter_textDecorationColor = textStyle.decorationColor;
    _counter_textDecorationThickness = textStyle.decorationThickness;
    _counter_fontFamily = textStyle.fontFamily;
    _counter_fontFamilyFallback = textStyle.fontFamilyFallback;
    _counter_textBaseline = textStyle.textBaseline;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField counterColor(Color color) {
    _counter_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField counterBackgroundColor(Color backgroundColor) {
    _counter_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField counterBg(Color backgroundColor) {
    _counter_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField counterFontSize(double fontSize) {
    _counter_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField counterFontWeight(FontWeight fontWeight) {
    _counter_fontWeight = fontWeight;

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
  NikuTextField counterBold() {
    _counter_fontWeight = FontWeight.bold;

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
  NikuTextField counterW100() {
    _counter_fontWeight = FontWeight.w100;

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
  NikuTextField counterW200() {
    _counter_fontWeight = FontWeight.w200;

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
  NikuTextField counterW300() {
    _counter_fontWeight = FontWeight.w300;

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
  NikuTextField counterW400() {
    _counter_fontWeight = FontWeight.w400;

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
  NikuTextField counterW500() {
    _counter_fontWeight = FontWeight.w500;

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
  NikuTextField counterW600() {
    _counter_fontWeight = FontWeight.w600;

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
  NikuTextField counterW700() {
    _counter_fontWeight = FontWeight.w700;

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
  NikuTextField counterW800() {
    _counter_fontWeight = FontWeight.w800;

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
  NikuTextField counterW900() {
    _counter_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField counterFontStyle(FontStyle fontStyle) {
    _counter_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField counterItalic() {
    _counter_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField counterLetterSpacing(double letterSpacing) {
    _counter_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField counterWordSpacing(double wordSpacing) {
    _counter_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField counterHeight(double height) {
    _counter_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField counterForeground(Paint foreground) {
    _counter_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField counterBackground(Paint foreground) {
    _counter_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField counterShadows(List<Shadow> shadows) {
    _counter_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField counterFontFeatures(List<FontFeature> fontFeatures) {
    _counter_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField counterTextDecoration(TextDecoration textDecoration) {
    _counter_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField counterTextDecorationColor(Color textDecorationColor) {
    _counter_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField counterTextDecorationThickness(double textDecorationThickness) {
    _counter_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField counterFontFamily(String fontFamily) {
    _counter_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField counterFontFamilyFallback(List<String> fontFamily) {
    _counter_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField counterTextBaseline(TextBaseline textBaseline) {
    _counter_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField counterAlphabetic() {
    _counter_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField counterIdeographic() {
    _counter_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// If true the decoration's container is filled with [fillColor]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     filled: input
  ///   )
  /// )
  /// ```
  NikuTextField filled(bool filled) {
    _input_filled = filled;

    return this;
  }

  /// The base fill color of the decoration's container color
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     fillColor: input
  ///   )
  /// )
  /// ```
  NikuTextField fillColor(Color color) {
    _input_fillColor = color;

    return this;
  }

  /// The base fill color of the decoration's container color when hovered
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     hoverColor: input
  ///   )
  /// )
  /// ```
  NikuTextField hoverColor(Color color) {
    _input_hoverColor = color;

    return this;
  }

  /// The base fill color of the decoration's container color when focused
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     focusColor: input
  ///   )
  /// )
  /// ```
  NikuTextField focusColor(Color color) {
    _input_focusColor = color;

    return this;
  }

  /// Set multiple [FillColor] at once
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     filled: true,
  ///     fillColor: fill
  ///     hoverColor: hover,
  ///     focusColor: focus,
  ///   )
  /// )
  /// ```
  NikuTextField setFillColor({Color? fill, Color? hover, Color? focus}) {
    _input_filled = true;
    _input_fillColor = fill;
    _input_hoverColor = hover;
    _input_focusColor = focus;

    return this;
  }

  /// The shape of the border to draw aroudn the decorations' container
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     errorBorder: input
  ///   )
  /// )
  /// ```
  NikuTextField errorBorder(InputBorder border) {
    _input_errorBorder = border;

    return this;
  }

  /// The border to display when the [InputDecorator] has the focus and is not showing an error
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     focusedBorder: input
  ///   )
  /// )
  /// ```
  NikuTextField focusedBorder(InputBorder border) {
    _input_focusedBorder = border;

    return this;
  }

  /// The border to display when the [InputDecorator] is disabled and is not showing an error
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     disabledBorder: input
  ///   )
  /// )
  /// ```
  NikuTextField disabledBorder(InputBorder border) {
    _input_disabledBorder = border;

    return this;
  }

  /// The border to display when the [InputDecorator] is enabled and is not showing an error
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     enabledBorder: input
  ///   )
  /// )
  /// ```
  NikuTextField enabledBorder(InputBorder border) {
    _input_enabledBorder = border;

    return this;
  }

  /// The shape of the border to draw around the decoration's container
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     border: input
  ///   )
  /// )
  /// ```
  NikuTextField border(InputBorder border) {
    _input_border = border;

    return this;
  }

  /// Set multiple [InputDecoration] at once
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     border: border,
  ///     enabled: enabled,
  ///     disabled: disabled,
  ///     focused: focused,
  ///     error: error
  ///   )
  /// )
  /// ```
  NikuTextField setBorder(
      {InputBorder? border,
      InputBorder? enabled,
      InputBorder? disabled,
      InputBorder? focused,
      InputBorder? error}) {
    _input_border = border;
    _input_enabledBorder = border;
    _input_disabledBorder = border;
    _input_focusedBorder = border;
    _input_errorBorder = border;

    return this;
  }

  /// If false [helperText], [errorText], and [counterText] are not displayed, and the opacity of the remaining visual elements is reduced
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     enabled: input
  ///   )
  /// )
  /// ```
  NikuTextField inputDecorationEnable(bool enabled) {
    _input_decorationEnabled = enabled;

    return this;
  }

  /// A semantic label for the [counterText]
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     semanticCounterText: input
  ///   )
  /// )
  /// ```
  NikuTextField semanticCounterText(String semantic) {
    _input_semanticCounterText = semantic;

    return this;
  }

  /// Align label as same level as hint
  ///
  /// Equivalent to
  /// ```
  /// TextFormField(
  ///   decoration: InputDecoration(
  ///     alignLabelWithHint: input
  ///   )
  /// )
  /// ```
  NikuTextField alignLabelWithHint(bool enable) {
    _input_alignLabelWithHint = enable;

    return this;
  }

  /// Set color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(color: input)
  /// ```
  NikuTextField color(Color color) {
    _base_color = color;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField backgroundColor(Color backgroundColor) {
    _base_backgroundColor = backgroundColor;

    return this;
  }

  /// Set background color of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(backgroundColor: input)
  /// ```
  NikuTextField bg(Color backgroundColor) {
    _base_backgroundColor = backgroundColor;

    return this;
  }

  /// Set size of text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField fontSize(double fontSize) {
    _base_fontSize = fontSize;

    return this;
  }

  /// The thickness of the glyphs used to draw the text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontSize: input)
  /// ```
  NikuTextField fontWeight(FontWeight fontWeight) {
    _base_fontWeight = fontWeight;

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
  NikuTextField bold() {
    _base_fontWeight = FontWeight.bold;

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
  NikuTextField w100() {
    _base_fontWeight = FontWeight.w100;

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
  NikuTextField w200() {
    _base_fontWeight = FontWeight.w200;

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
  NikuTextField w300() {
    _base_fontWeight = FontWeight.w300;

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
  NikuTextField w400() {
    _base_fontWeight = FontWeight.w400;

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
  NikuTextField w500() {
    _base_fontWeight = FontWeight.w500;

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
  NikuTextField w600() {
    _base_fontWeight = FontWeight.w600;

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
  NikuTextField w700() {
    _base_fontWeight = FontWeight.w700;

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
  NikuTextField w800() {
    _base_fontWeight = FontWeight.w800;

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
  NikuTextField w900() {
    _base_fontWeight = FontWeight.w900;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: input)
  /// ```
  NikuTextField fontStyle(FontStyle fontStyle) {
    _base_fontStyle = fontStyle;

    return this;
  }

  /// Whether to slant the glyphs in the font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontStyle: FontStyle.italic)
  /// ```
  NikuTextField italic() {
    _base_fontStyle = FontStyle.italic;

    return this;
  }

  /// Spacing for each letter
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(letterSpacing: input)
  /// ```
  NikuTextField letterSpacing(double letterSpacing) {
    _base_letterSpacing = letterSpacing;

    return this;
  }

  /// Spacing for each word
  ///
  /// Equivalent to
  /// ```
  /// Text(wordSpacing: input)
  /// ```
  NikuTextField wordSpacing(double wordSpacing) {
    _base_wordSpacing = wordSpacing;

    return this;
  }

  /// Fixed height for text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(height: input)
  /// ```
  NikuTextField height(double height) {
    _base_height = height;

    return this;
  }

  /// - forground - The paint drawn as a foreground for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(foreground: input)
  /// ```
  NikuTextField foreground(Paint foreground) {
    _base_foreground = foreground;

    return this;
  }

  /// - background - The paint drawn as a background for the text.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(background: input)
  /// ```
  NikuTextField background(Paint foreground) {
    _base_foreground = foreground;

    return this;
  }

  /// Collection of text's shadow
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(shadows: input)
  /// ```
  NikuTextField shadows(List<Shadow> shadows) {
    _base_shadows = shadows;

    return this;
  }

  /// A feature tag and value that affect the selection of glyphs in a font
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFeatures: input)
  /// ```
  NikuTextField fontFeatures(List<FontFeature> fontFeatures) {
    _base_fontFeatures = fontFeatures;

    return this;
  }

  /// Text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decoration: input)
  /// ```
  NikuTextField textDecoration(TextDecoration textDecoration) {
    _base_textDecoration = textDecoration;

    return this;
  }

  /// Color of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationColor: input)
  /// ```
  NikuTextField textDecorationColor(Color textDecorationColor) {
    _base_textDecorationColor = textDecorationColor;

    return this;
  }

  /// Thickness of text decoration
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(decorationThickness: input)
  /// ```
  NikuTextField textDecorationThickness(double textDecorationThickness) {
    _base_textDecorationThickness = textDecorationThickness;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamily: input)
  /// ```
  NikuTextField fontFamily(String fontFamily) {
    _base_fontFamily = fontFamily;

    return this;
  }

  /// Apply font to text
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(fontFamilyFallback: input)
  /// ```
  NikuTextField fontFamilyFallback(List<String> fontFamily) {
    _base_fontFamilyFallback = fontFamily;

    return this;
  }

  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: input)
  /// ```
  NikuTextField textBaseline(TextBaseline textBaseline) {
    _base_textBaseline = textBaseline;

    return this;
  }

  /// Using [TextBaseline.alphabetic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.alphabetic)
  /// ```
  NikuTextField alphabetic() {
    _base_textBaseline = TextBaseline.alphabetic;

    return this;
  }

  /// Using [TextBaseline.ideographic]
  ///
  /// Equivalent to
  /// ```
  /// TextStyle(textBaseline: Textbaseline.ideographic)
  /// ```
  NikuTextField ideographic() {
    _base_textBaseline = TextBaseline.ideographic;

    return this;
  }

  /// Apply existing NikuTextField's property to current style
  ///
  /// Example usage:
  /// ```
  /// final border = NikuTextField("")
  ///   .border(
  ///     OutlineInputBorder(
  ///       borderSide: BorderSide(
  ///         width: 2
  ///       )
  ///     )
  ///   )
  ///   .focusedBorder(OutlineInputBorder(
  ///     borderSide: BorderSide(
  ///       color: Colors.blue,
  ///       width: 2)
  ///     )
  ///   );
  ///
  /// return (
  ///   NikuTextField("Bordered Filled")
  ///     .apply(border)
  ///     .color(Colors.blue)
  ///     .build();
  /// );
  /// ```
  NikuTextField apply(NikuTextField instance) => set(
        controller: instance._controller ?? instance._controller,
        initialValue: instance._initialValue != ""
            ? instance._initialValue
            : _initialValue,
        focusNode: instance._focusNode ?? instance._focusNode,
        keyboardType: instance._keyboardType ?? instance._keyboardType,
        textCapitalization:
            instance._textCapitalization != TextCapitalization.none
                ? instance._textCapitalization
                : _textCapitalization,
        textInputAction: instance._textInputAction ?? instance._textInputAction,
        textDirection: instance._textDirection ?? instance._textDirection,
        textAlign: instance._textAlign != TextAlign.start
            ? instance._textAlign
            : _textAlign,
        textAlignVertical:
            instance._textAlignVertical ?? instance._textAlignVertical,
        autofocus:
            instance._autofocus != false ? instance._autofocus : _autofocus,
        readOnly: instance._readOnly != false ? instance._readOnly : _readOnly,
        toolbarOptions: instance._toolbarOptions ?? instance._toolbarOptions,
        showCursor: instance._showCursor ?? instance._showCursor,
        obscuringCharacter: instance._obscuringCharacter != '•'
            ? instance._obscuringCharacter
            : _obscuringCharacter,
        obscureText: instance._obscureText != false
            ? instance._obscureText
            : _obscureText,
        autocorrect: instance._autocorrect != true
            ? instance._autocorrect
            : _autocorrect,
        smartDashesType: instance._smartDashesType ?? instance._smartDashesType,
        smartQuotesType: instance._smartQuotesType ?? instance._smartQuotesType,
        enableSuggestions: instance._enableSuggestions != true
            ? instance._enableSuggestions
            : _enableSuggestions,
        maxLines: instance._maxLines != 1 ? instance._maxLines : _maxLines,
        minLines: instance._minLines ?? instance._minLines,
        expands: instance._expands != false ? instance._expands : _expands,
        maxLength: instance._maxLength ?? instance._maxLength,
        onChanged: instance._onChanged ?? instance._onChanged,
        onTap: instance._onTap ?? instance._onTap,
        onEditingComplete:
            instance._onEditingComplete ?? instance._onEditingComplete,
        onFieldSubmitted:
            instance._onFieldSubmitted ?? instance._onFieldSubmitted,
        onSaved: instance._onSaved ?? instance._onSaved,
        validator: instance._validator ?? instance._validator,
        inputFormatters: instance._inputFormatters ?? instance._inputFormatters,
        enabled: instance._enabled ?? instance._enabled,
        cursorWidth:
            instance._cursorWidth != 2.0 ? instance._cursorWidth : _cursorWidth,
        cursorHeight: instance._cursorHeight ?? instance._cursorHeight,
        cursorRadius: instance._cursorRadius ?? instance._cursorRadius,
        cursorColor: instance._cursorColor ?? instance._cursorColor,
        keyboardAppearance:
            instance._keyboardAppearance ?? instance._keyboardAppearance,
        scrollPadding: instance._scrollPadding != EdgeInsets.all(20)
            ? instance._scrollPadding
            : _scrollPadding,
        enableInteractiveSelection: instance._enableInteractiveSelection != true
            ? instance._enableInteractiveSelection
            : _enableInteractiveSelection,
        buildCounter: instance._buildCounter ?? instance._buildCounter,
        scrollPhysics: instance._scrollPhysics ?? instance._scrollPhysics,
        autofillHints: instance._autofillHints ?? instance._autofillHints,
        autovalidateMode:
            instance._autovalidateMode ?? instance._autovalidateMode,
        input_icon: instance._input_icon ?? instance._input_icon,
        input_helperText:
            instance._input_helperText ?? instance._input_helperText,
        input_helperMaxLines:
            instance._input_helperMaxLines ?? instance._input_helperMaxLines,
        input_hintText: instance._input_hintText ?? instance._input_hintText,
        input_hintMaxLines:
            instance._input_hintMaxLines ?? instance._input_hintMaxLines,
        input_errorText: instance._input_errorText ?? instance._input_errorText,
        input_errorMaxLines:
            instance._input_errorMaxLines ?? instance._input_errorMaxLines,
        input_floatingLabelBehavior:
            instance._input_floatingLabelBehavior != FloatingLabelBehavior.auto
                ? instance._input_floatingLabelBehavior
                : _input_floatingLabelBehavior,
        input_isCollapsed: instance._input_isCollapsed != false
            ? instance._input_isCollapsed
            : _input_isCollapsed,
        input_isDense: instance._input_isDense ?? instance._input_isDense,
        input_contentPadding:
            instance._input_contentPadding ?? instance._input_contentPadding,
        input_prefixIcon:
            instance._input_prefixIcon ?? instance._input_prefixIcon,
        input_prefixIconConstraints: instance._input_prefixIconConstraints ??
            instance._input_prefixIconConstraints,
        input_prefix: instance._input_prefix ?? instance._input_prefix,
        input_prefixText:
            instance._input_prefixText ?? instance._input_prefixText,
        input_suffixIcon:
            instance._input_suffixIcon ?? instance._input_suffixIcon,
        input_suffix: instance._input_suffix ?? instance._input_suffix,
        input_suffixText:
            instance._input_suffixText ?? instance._input_suffixText,
        input_suffixIconConstraints: instance._input_suffixIconConstraints ??
            instance._input_suffixIconConstraints,
        input_counter: instance._input_counter ?? instance._input_counter,
        input_counterText:
            instance._input_counterText ?? instance._input_counterText,
        input_filled: instance._input_filled ?? instance._input_filled,
        input_fillColor: instance._input_fillColor ?? instance._input_fillColor,
        input_focusColor:
            instance._input_focusColor ?? instance._input_focusColor,
        input_hoverColor:
            instance._input_hoverColor ?? instance._input_hoverColor,
        input_errorBorder:
            instance._input_errorBorder ?? instance._input_errorBorder,
        input_focusedBorder:
            instance._input_focusedBorder ?? instance._input_focusedBorder,
        input_focusedErrorBorder: instance._input_focusedErrorBorder ??
            instance._input_focusedErrorBorder,
        input_disabledBorder:
            instance._input_disabledBorder ?? instance._input_disabledBorder,
        input_enabledBorder:
            instance._input_enabledBorder ?? instance._input_enabledBorder,
        input_border: instance._input_border ?? instance._input_border,
        input_decorationEnabled: instance._input_decorationEnabled != true
            ? instance._input_decorationEnabled
            : _input_decorationEnabled,
        input_semanticCounterText: instance._input_semanticCounterText ??
            instance._input_semanticCounterText,
        input_alignLabelWithHint: instance._input_alignLabelWithHint ??
            instance._input_alignLabelWithHint,
        base_color: instance._base_color ?? instance._base_color,
        base_backgroundColor:
            instance._base_backgroundColor ?? instance._base_backgroundColor,
        base_fontSize: instance._base_fontSize ?? instance._base_fontSize,
        base_fontWeight: instance._base_fontWeight ?? instance._base_fontWeight,
        base_fontStyle: instance._base_fontStyle ?? instance._base_fontStyle,
        base_letterSpacing:
            instance._base_letterSpacing ?? instance._base_letterSpacing,
        base_wordSpacing:
            instance._base_wordSpacing ?? instance._base_wordSpacing,
        base_height: instance._base_height ?? instance._base_height,
        base_foreground: instance._base_foreground ?? instance._base_foreground,
        base_background: instance._base_background ?? instance._base_background,
        base_shadows: instance._base_shadows ?? instance._base_shadows,
        base_fontFeatures:
            instance._base_fontFeatures ?? instance._base_fontFeatures,
        base_textDecoration:
            instance._base_textDecoration ?? instance._base_textDecoration,
        base_textDecorationColor: instance._base_textDecorationColor ??
            instance._base_textDecorationColor,
        base_textDecorationThickness: instance._base_textDecorationThickness ??
            instance._base_textDecorationThickness,
        base_fontFamily: instance._base_fontFamily ?? instance._base_fontFamily,
        base_fontFamilyFallback: instance._base_fontFamilyFallback ??
            instance._base_fontFamilyFallback,
        base_textBaseline:
            instance._base_textBaseline ?? instance._base_textBaseline,
        label_color: instance._label_color ?? instance._label_color,
        label_backgroundColor:
            instance._label_backgroundColor ?? instance._label_backgroundColor,
        label_fontSize: instance._label_fontSize ?? instance._label_fontSize,
        label_fontWeight:
            instance._label_fontWeight ?? instance._label_fontWeight,
        label_fontStyle: instance._label_fontStyle ?? instance._label_fontStyle,
        label_letterSpacing:
            instance._label_letterSpacing ?? instance._label_letterSpacing,
        label_wordSpacing:
            instance._label_wordSpacing ?? instance._label_wordSpacing,
        label_height: instance._label_height ?? instance._label_height,
        label_foreground:
            instance._label_foreground ?? instance._label_foreground,
        label_background:
            instance._label_background ?? instance._label_background,
        label_shadows: instance._label_shadows ?? instance._label_shadows,
        label_fontFeatures:
            instance._label_fontFeatures ?? instance._label_fontFeatures,
        label_textDecoration:
            instance._label_textDecoration ?? instance._label_textDecoration,
        label_textDecorationColor: instance._label_textDecorationColor ??
            instance._label_textDecorationColor,
        label_textDecorationThickness:
            instance._label_textDecorationThickness ??
                instance._label_textDecorationThickness,
        label_fontFamily:
            instance._label_fontFamily ?? instance._label_fontFamily,
        label_fontFamilyFallback: instance._label_fontFamilyFallback ??
            instance._label_fontFamilyFallback,
        label_textBaseline:
            instance._label_textBaseline ?? instance._label_textBaseline,
        hint_color: instance._hint_color ?? instance._hint_color,
        hint_backgroundColor:
            instance._hint_backgroundColor ?? instance._hint_backgroundColor,
        hint_fontSize: instance._hint_fontSize ?? instance._hint_fontSize,
        hint_fontWeight: instance._hint_fontWeight ?? instance._hint_fontWeight,
        hint_fontStyle: instance._hint_fontStyle ?? instance._hint_fontStyle,
        hint_letterSpacing:
            instance._hint_letterSpacing ?? instance._hint_letterSpacing,
        hint_wordSpacing:
            instance._hint_wordSpacing ?? instance._hint_wordSpacing,
        hint_height: instance._hint_height ?? instance._hint_height,
        hint_foreground: instance._hint_foreground ?? instance._hint_foreground,
        hint_background: instance._hint_background ?? instance._hint_background,
        hint_shadows: instance._hint_shadows ?? instance._hint_shadows,
        hint_fontFeatures:
            instance._hint_fontFeatures ?? instance._hint_fontFeatures,
        hint_textDecoration:
            instance._hint_textDecoration ?? instance._hint_textDecoration,
        hint_textDecorationColor: instance._hint_textDecorationColor ??
            instance._hint_textDecorationColor,
        hint_textDecorationThickness: instance._hint_textDecorationThickness ??
            instance._hint_textDecorationThickness,
        hint_fontFamily: instance._hint_fontFamily ?? instance._hint_fontFamily,
        hint_fontFamilyFallback: instance._hint_fontFamilyFallback ??
            instance._hint_fontFamilyFallback,
        hint_textBaseline:
            instance._hint_textBaseline ?? instance._hint_textBaseline,
        helper_color: instance._helper_color ?? instance._helper_color,
        helper_backgroundColor: instance._helper_backgroundColor ??
            instance._helper_backgroundColor,
        helper_fontSize: instance._helper_fontSize ?? instance._helper_fontSize,
        helper_fontWeight:
            instance._helper_fontWeight ?? instance._helper_fontWeight,
        helper_fontStyle:
            instance._helper_fontStyle ?? instance._helper_fontStyle,
        helper_letterSpacing:
            instance._helper_letterSpacing ?? instance._helper_letterSpacing,
        helper_wordSpacing:
            instance._helper_wordSpacing ?? instance._helper_wordSpacing,
        helper_height: instance._helper_height ?? instance._helper_height,
        helper_foreground:
            instance._helper_foreground ?? instance._helper_foreground,
        helper_background:
            instance._helper_background ?? instance._helper_background,
        helper_shadows: instance._helper_shadows ?? instance._helper_shadows,
        helper_fontFeatures:
            instance._helper_fontFeatures ?? instance._helper_fontFeatures,
        helper_textDecoration:
            instance._helper_textDecoration ?? instance._helper_textDecoration,
        helper_textDecorationColor: instance._helper_textDecorationColor ??
            instance._helper_textDecorationColor,
        helper_textDecorationThickness:
            instance._helper_textDecorationThickness ??
                instance._helper_textDecorationThickness,
        helper_fontFamily:
            instance._helper_fontFamily ?? instance._helper_fontFamily,
        helper_fontFamilyFallback: instance._helper_fontFamilyFallback ??
            instance._helper_fontFamilyFallback,
        helper_textBaseline:
            instance._helper_textBaseline ?? instance._helper_textBaseline,
        error_color: instance._error_color ?? instance._error_color,
        error_backgroundColor:
            instance._error_backgroundColor ?? instance._error_backgroundColor,
        error_fontSize: instance._error_fontSize ?? instance._error_fontSize,
        error_fontWeight:
            instance._error_fontWeight ?? instance._error_fontWeight,
        error_fontStyle: instance._error_fontStyle ?? instance._error_fontStyle,
        error_letterSpacing:
            instance._error_letterSpacing ?? instance._error_letterSpacing,
        error_wordSpacing:
            instance._error_wordSpacing ?? instance._error_wordSpacing,
        error_height: instance._error_height ?? instance._error_height,
        error_foreground:
            instance._error_foreground ?? instance._error_foreground,
        error_background:
            instance._error_background ?? instance._error_background,
        error_shadows: instance._error_shadows ?? instance._error_shadows,
        error_fontFeatures:
            instance._error_fontFeatures ?? instance._error_fontFeatures,
        error_textDecoration:
            instance._error_textDecoration ?? instance._error_textDecoration,
        error_textDecorationColor: instance._error_textDecorationColor ??
            instance._error_textDecorationColor,
        error_textDecorationThickness:
            instance._error_textDecorationThickness ??
                instance._error_textDecorationThickness,
        error_fontFamily:
            instance._error_fontFamily ?? instance._error_fontFamily,
        error_fontFamilyFallback: instance._error_fontFamilyFallback ??
            instance._error_fontFamilyFallback,
        error_textBaseline:
            instance._error_textBaseline ?? instance._error_textBaseline,
        prefix_color: instance._prefix_color ?? instance._prefix_color,
        prefix_backgroundColor: instance._prefix_backgroundColor ??
            instance._prefix_backgroundColor,
        prefix_fontSize: instance._prefix_fontSize ?? instance._prefix_fontSize,
        prefix_fontWeight:
            instance._prefix_fontWeight ?? instance._prefix_fontWeight,
        prefix_fontStyle:
            instance._prefix_fontStyle ?? instance._prefix_fontStyle,
        prefix_letterSpacing:
            instance._prefix_letterSpacing ?? instance._prefix_letterSpacing,
        prefix_wordSpacing:
            instance._prefix_wordSpacing ?? instance._prefix_wordSpacing,
        prefix_height: instance._prefix_height ?? instance._prefix_height,
        prefix_foreground:
            instance._prefix_foreground ?? instance._prefix_foreground,
        prefix_background:
            instance._prefix_background ?? instance._prefix_background,
        prefix_shadows: instance._prefix_shadows ?? instance._prefix_shadows,
        prefix_fontFeatures:
            instance._prefix_fontFeatures ?? instance._prefix_fontFeatures,
        prefix_textDecoration:
            instance._prefix_textDecoration ?? instance._prefix_textDecoration,
        prefix_textDecorationColor: instance._prefix_textDecorationColor ??
            instance._prefix_textDecorationColor,
        prefix_textDecorationThickness:
            instance._prefix_textDecorationThickness ??
                instance._prefix_textDecorationThickness,
        prefix_fontFamily:
            instance._prefix_fontFamily ?? instance._prefix_fontFamily,
        prefix_fontFamilyFallback: instance._prefix_fontFamilyFallback ??
            instance._prefix_fontFamilyFallback,
        prefix_textBaseline:
            instance._prefix_textBaseline ?? instance._prefix_textBaseline,
        suffix_color: instance._suffix_color ?? instance._suffix_color,
        suffix_backgroundColor: instance._suffix_backgroundColor ??
            instance._suffix_backgroundColor,
        suffix_fontSize: instance._suffix_fontSize ?? instance._suffix_fontSize,
        suffix_fontWeight:
            instance._suffix_fontWeight ?? instance._suffix_fontWeight,
        suffix_fontStyle:
            instance._suffix_fontStyle ?? instance._suffix_fontStyle,
        suffix_letterSpacing:
            instance._suffix_letterSpacing ?? instance._suffix_letterSpacing,
        suffix_wordSpacing:
            instance._suffix_wordSpacing ?? instance._suffix_wordSpacing,
        suffix_height: instance._suffix_height ?? instance._suffix_height,
        suffix_foreground:
            instance._suffix_foreground ?? instance._suffix_foreground,
        suffix_background:
            instance._suffix_background ?? instance._suffix_background,
        suffix_shadows: instance._suffix_shadows ?? instance._suffix_shadows,
        suffix_fontFeatures:
            instance._suffix_fontFeatures ?? instance._suffix_fontFeatures,
        suffix_textDecoration:
            instance._suffix_textDecoration ?? instance._suffix_textDecoration,
        suffix_textDecorationColor: instance._suffix_textDecorationColor ??
            instance._suffix_textDecorationColor,
        suffix_textDecorationThickness:
            instance._suffix_textDecorationThickness ??
                instance._suffix_textDecorationThickness,
        suffix_fontFamily:
            instance._suffix_fontFamily ?? instance._suffix_fontFamily,
        suffix_fontFamilyFallback: instance._suffix_fontFamilyFallback ??
            instance._suffix_fontFamilyFallback,
        suffix_textBaseline:
            instance._suffix_textBaseline ?? instance._suffix_textBaseline,
        counter_color: instance._counter_color ?? instance._counter_color,
        counter_backgroundColor: instance._counter_backgroundColor ??
            instance._counter_backgroundColor,
        counter_fontSize:
            instance._counter_fontSize ?? instance._counter_fontSize,
        counter_fontWeight:
            instance._counter_fontWeight ?? instance._counter_fontWeight,
        counter_fontStyle:
            instance._counter_fontStyle ?? instance._counter_fontStyle,
        counter_letterSpacing:
            instance._counter_letterSpacing ?? instance._counter_letterSpacing,
        counter_wordSpacing:
            instance._counter_wordSpacing ?? instance._counter_wordSpacing,
        counter_height: instance._counter_height ?? instance._counter_height,
        counter_foreground:
            instance._counter_foreground ?? instance._counter_foreground,
        counter_background:
            instance._counter_background ?? instance._counter_background,
        counter_shadows: instance._counter_shadows ?? instance._counter_shadows,
        counter_fontFeatures:
            instance._counter_fontFeatures ?? instance._counter_fontFeatures,
        counter_textDecoration: instance._counter_textDecoration ??
            instance._counter_textDecoration,
        counter_textDecorationColor: instance._counter_textDecorationColor ??
            instance._counter_textDecorationColor,
        counter_textDecorationThickness:
            instance._counter_textDecorationThickness ??
                instance._counter_textDecorationThickness,
        counter_fontFamily:
            instance._counter_fontFamily ?? instance._counter_fontFamily,
        counter_fontFamilyFallback: instance._counter_fontFamilyFallback ??
            instance._counter_fontFamilyFallback,
        counter_textBaseline:
            instance._counter_textBaseline ?? instance._counter_textBaseline,
        mt: instance.getMt != 0 ? instance.getMt : getMt,
        mb: instance.getMb != 0 ? instance.getMb : getMb,
        ml: instance.getMl != 0 ? instance.getMl : getMl,
        mr: instance.getMr != 0 ? instance.getMr : getMr,
      );

  /// Apply styles and build Text as Widget
  ///
  /// Example usage:
  /// ```
  /// NikuTextField("Label")
  ///   .border(
  ///     OutlineInputBorder(
  ///       borderSide: BorderSide(
  ///         width: 2
  ///       )
  ///     )
  ///   )
  ///   .focusedBorder(OutlineInputBorder(
  ///     borderSide: BorderSide(
  ///       color: Colors.blue,
  ///       width: 2)
  ///     )
  ///   )
  ///   .build()
  /// ```
  @override
  build(context) => internalBuild(
        TextFormField(
          key: key,
          controller: _controller,
          style: TextStyle(
            color: _base_color,
            backgroundColor: _base_backgroundColor,
            fontSize: _base_fontSize,
            fontWeight: _base_fontWeight,
            fontStyle: _base_fontStyle,
            letterSpacing: _base_letterSpacing,
            wordSpacing: _base_wordSpacing,
            height: _base_height,
            foreground: _base_foreground,
            background: _base_background,
            shadows: _base_shadows,
            fontFeatures: _base_fontFeatures,
            decoration: _base_textDecoration,
            decorationColor: _base_textDecorationColor,
            decorationThickness: _base_textDecorationThickness,
            fontFamily: _base_fontFamily,
            fontFamilyFallback: _base_fontFamilyFallback,
            textBaseline: _base_textBaseline,
          ),
          decoration: InputDecoration(
            icon: _input_icon,
            labelText: _input_labelText,
            helperText: _input_helperText,
            helperMaxLines: _input_helperMaxLines,
            hintText: _input_hintText,
            hintMaxLines: _input_hintMaxLines,
            errorText: _input_errorText,
            errorMaxLines: _input_errorMaxLines,
            floatingLabelBehavior: _input_floatingLabelBehavior,
            isCollapsed: _input_isCollapsed,
            isDense: _input_isDense,
            contentPadding: _input_contentPadding,
            prefixIcon: _input_prefixIcon,
            prefixIconConstraints: _input_prefixIconConstraints,
            prefix: _input_prefix,
            prefixText: _input_prefixText,
            suffixIcon: _input_suffixIcon,
            suffix: _input_suffix,
            suffixText: _input_suffixText,
            suffixIconConstraints: _input_suffixIconConstraints,
            counter: _input_counter,
            counterText: _input_counterText,
            filled: _input_filled,
            fillColor: _input_fillColor,
            focusColor: _input_focusColor,
            hoverColor: _input_hoverColor,
            errorBorder: _input_errorBorder,
            focusedBorder: _input_focusedBorder,
            focusedErrorBorder: _input_focusedErrorBorder,
            disabledBorder: _input_disabledBorder,
            enabledBorder: _input_enabledBorder,
            border: _input_border,
            enabled: _input_decorationEnabled,
            semanticCounterText: _input_semanticCounterText,
            alignLabelWithHint: _input_alignLabelWithHint,
            hintStyle: TextStyle(
              color: _hint_color,
              backgroundColor: _hint_backgroundColor,
              fontSize: _hint_fontSize,
              fontWeight: _hint_fontWeight,
              fontStyle: _hint_fontStyle,
              letterSpacing: _hint_letterSpacing,
              wordSpacing: _hint_wordSpacing,
              height: _hint_height,
              foreground: _hint_foreground,
              background: _hint_background,
              shadows: _hint_shadows,
              fontFeatures: _hint_fontFeatures,
              decoration: _hint_textDecoration,
              decorationColor: _hint_textDecorationColor,
              decorationThickness: _hint_textDecorationThickness,
              fontFamily: _hint_fontFamily,
              fontFamilyFallback: _hint_fontFamilyFallback,
              textBaseline: _hint_textBaseline,
            ),
            errorStyle: TextStyle(
              color: _error_color,
              backgroundColor: _error_backgroundColor,
              fontSize: _error_fontSize,
              fontWeight: _error_fontWeight,
              fontStyle: _error_fontStyle,
              letterSpacing: _error_letterSpacing,
              wordSpacing: _error_wordSpacing,
              height: _error_height,
              foreground: _error_foreground,
              background: _error_background,
              shadows: _error_shadows,
              fontFeatures: _error_fontFeatures,
              decoration: _error_textDecoration,
              decorationColor: _error_textDecorationColor,
              decorationThickness: _error_textDecorationThickness,
              fontFamily: _error_fontFamily,
              fontFamilyFallback: _error_fontFamilyFallback,
              textBaseline: _error_textBaseline,
            ),
            prefixStyle: TextStyle(
              color: _prefix_color,
              backgroundColor: _prefix_backgroundColor,
              fontSize: _prefix_fontSize,
              fontWeight: _prefix_fontWeight,
              fontStyle: _prefix_fontStyle,
              letterSpacing: _prefix_letterSpacing,
              wordSpacing: _prefix_wordSpacing,
              height: _prefix_height,
              foreground: _prefix_foreground,
              background: _prefix_background,
              shadows: _prefix_shadows,
              fontFeatures: _prefix_fontFeatures,
              decoration: _prefix_textDecoration,
              decorationColor: _prefix_textDecorationColor,
              decorationThickness: _prefix_textDecorationThickness,
              fontFamily: _prefix_fontFamily,
              fontFamilyFallback: _prefix_fontFamilyFallback,
              textBaseline: _prefix_textBaseline,
            ),
            suffixStyle: TextStyle(
              color: _suffix_color,
              backgroundColor: _suffix_backgroundColor,
              fontSize: _suffix_fontSize,
              fontWeight: _suffix_fontWeight,
              fontStyle: _suffix_fontStyle,
              letterSpacing: _suffix_letterSpacing,
              wordSpacing: _suffix_wordSpacing,
              height: _suffix_height,
              foreground: _suffix_foreground,
              background: _suffix_background,
              shadows: _suffix_shadows,
              fontFeatures: _suffix_fontFeatures,
              decoration: _suffix_textDecoration,
              decorationColor: _suffix_textDecorationColor,
              decorationThickness: _suffix_textDecorationThickness,
              fontFamily: _suffix_fontFamily,
              fontFamilyFallback: _suffix_fontFamilyFallback,
              textBaseline: _suffix_textBaseline,
            ),
            counterStyle: TextStyle(
              color: _counter_color,
              backgroundColor: _counter_backgroundColor,
              fontSize: _counter_fontSize,
              fontWeight: _counter_fontWeight,
              fontStyle: _counter_fontStyle,
              letterSpacing: _counter_letterSpacing,
              wordSpacing: _counter_wordSpacing,
              height: _counter_height,
              foreground: _counter_foreground,
              background: _counter_background,
              shadows: _counter_shadows,
              fontFeatures: _counter_fontFeatures,
              decoration: _counter_textDecoration,
              decorationColor: _counter_textDecorationColor,
              decorationThickness: _counter_textDecorationThickness,
              fontFamily: _counter_fontFamily,
              fontFamilyFallback: _counter_fontFamilyFallback,
              textBaseline: _counter_textBaseline,
            ),
            labelStyle: TextStyle(
              color: _label_color,
              backgroundColor: _label_backgroundColor,
              fontSize: _label_fontSize,
              fontWeight: _label_fontWeight,
              fontStyle: _label_fontStyle,
              letterSpacing: _label_letterSpacing,
              wordSpacing: _label_wordSpacing,
              height: _label_height,
              foreground: _label_foreground,
              background: _label_background,
              shadows: _label_shadows,
              fontFeatures: _label_fontFeatures,
              decoration: _label_textDecoration,
              decorationColor: _label_textDecorationColor,
              decorationThickness: _label_textDecorationThickness,
              fontFamily: _label_fontFamily,
              fontFamilyFallback: _label_fontFamilyFallback,
              textBaseline: _label_textBaseline,
            ),
            helperStyle: TextStyle(
              color: _helper_color,
              backgroundColor: _helper_backgroundColor,
              fontSize: _helper_fontSize,
              fontWeight: _helper_fontWeight,
              fontStyle: _helper_fontStyle,
              letterSpacing: _helper_letterSpacing,
              wordSpacing: _helper_wordSpacing,
              height: _helper_height,
              foreground: _helper_foreground,
              background: _helper_background,
              shadows: _helper_shadows,
              fontFeatures: _helper_fontFeatures,
              decoration: _helper_textDecoration,
              decorationColor: _helper_textDecorationColor,
              decorationThickness: _helper_textDecorationThickness,
              fontFamily: _helper_fontFamily,
              fontFamilyFallback: _helper_fontFamilyFallback,
              textBaseline: _helper_textBaseline,
            ),
          ),
          initialValue: _controller != null ? null : _initialValue,
          focusNode: _focusNode,
          keyboardType: _keyboardType,
          textCapitalization: _textCapitalization,
          textInputAction: _textInputAction,
          textDirection: _textDirection,
          textAlign: _textAlign,
          textAlignVertical: _textAlignVertical,
          autofocus: _autofocus,
          readOnly: _readOnly,
          toolbarOptions: _toolbarOptions,
          showCursor: _showCursor,
          obscuringCharacter: _obscuringCharacter,
          obscureText: _obscureText,
          autocorrect: _autocorrect,
          smartDashesType: _smartDashesType,
          smartQuotesType: _smartQuotesType,
          enableSuggestions: _enableSuggestions,
          maxLines: _maxLines,
          minLines: _minLines,
          expands: _expands,
          maxLength: _maxLength,
          onChanged: _onChanged,
          onTap: _onTap,
          onEditingComplete: _onEditingComplete,
          onFieldSubmitted: _onFieldSubmitted,
          onSaved: _onSaved,
          validator: _validator,
          inputFormatters: _inputFormatters,
          enabled: _enabled,
          cursorWidth: _cursorWidth,
          cursorHeight: _cursorHeight,
          cursorRadius: _cursorRadius,
          cursorColor: _cursorColor,
          keyboardAppearance: _keyboardAppearance,
          scrollPadding: _scrollPadding,
          enableInteractiveSelection: _enableInteractiveSelection,
          buildCounter: _buildCounter,
          scrollPhysics: _scrollPhysics,
          autofillHints: _autofillHints,
          autovalidateMode: _autovalidateMode,
        ),
      );

  /// Switch to Niku() property
  ///
  /// After this method is called, NikuText property can't be applied anymore
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
  Niku niku() => Niku(
        Builder(
          builder: (context) => build(context),
        ),
      );

  @protected
  NikuTextField set({
    TextEditingController? controller,
    String initialValue = '',
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction? textInputAction,
    TextDirection? textDirection,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    bool autofocus = false,
    bool readOnly = false,
    ToolbarOptions? toolbarOptions,
    bool? showCursor,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    double cursorWidth = 2.0,
    double? cursorHeight,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool enableInteractiveSelection = true,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    Iterable<String>? autofillHints,
    AutovalidateMode? autovalidateMode,
    Widget? input_icon,
    String input_labelText = '',
    String? input_helperText,
    int? input_helperMaxLines,
    String? input_hintText,
    int? input_hintMaxLines,
    String? input_errorText,
    int? input_errorMaxLines,
    FloatingLabelBehavior input_floatingLabelBehavior =
        FloatingLabelBehavior.auto,
    bool input_isCollapsed = false,
    bool? input_isDense,
    EdgeInsetsGeometry? input_contentPadding,
    Widget? input_prefixIcon,
    BoxConstraints? input_prefixIconConstraints,
    Widget? input_prefix,
    String? input_prefixText,
    Widget? input_suffixIcon,
    Widget? input_suffix,
    String? input_suffixText,
    BoxConstraints? input_suffixIconConstraints,
    Widget? input_counter,
    String? input_counterText,
    bool? input_filled,
    Color? input_fillColor,
    Color? input_focusColor,
    Color? input_hoverColor,
    InputBorder? input_errorBorder,
    InputBorder? input_focusedBorder,
    InputBorder? input_focusedErrorBorder,
    InputBorder? input_disabledBorder,
    InputBorder? input_enabledBorder,
    InputBorder? input_border,
    bool input_decorationEnabled = true,
    String? input_semanticCounterText,
    bool? input_alignLabelWithHint,
    Color? base_color,
    Color? base_backgroundColor,
    double? base_fontSize,
    FontWeight? base_fontWeight,
    FontStyle? base_fontStyle,
    double? base_letterSpacing,
    double? base_wordSpacing,
    double? base_height,
    Paint? base_foreground,
    Paint? base_background,
    List<Shadow>? base_shadows,
    List<FontFeature>? base_fontFeatures,
    TextDecoration? base_textDecoration,
    Color? base_textDecorationColor,
    double? base_textDecorationThickness,
    String? base_fontFamily,
    List<String>? base_fontFamilyFallback,
    TextBaseline? base_textBaseline,
    Color? label_color,
    Color? label_backgroundColor,
    double? label_fontSize,
    FontWeight? label_fontWeight,
    FontStyle? label_fontStyle,
    double? label_letterSpacing,
    double? label_wordSpacing,
    double? label_height,
    Paint? label_foreground,
    Paint? label_background,
    List<Shadow>? label_shadows,
    List<FontFeature>? label_fontFeatures,
    TextDecoration? label_textDecoration,
    Color? label_textDecorationColor,
    double? label_textDecorationThickness,
    String? label_fontFamily,
    List<String>? label_fontFamilyFallback,
    TextBaseline? label_textBaseline,
    Color? hint_color,
    Color? hint_backgroundColor,
    double? hint_fontSize,
    FontWeight? hint_fontWeight,
    FontStyle? hint_fontStyle,
    double? hint_letterSpacing,
    double? hint_wordSpacing,
    double? hint_height,
    Paint? hint_foreground,
    Paint? hint_background,
    List<Shadow>? hint_shadows,
    List<FontFeature>? hint_fontFeatures,
    TextDecoration? hint_textDecoration,
    Color? hint_textDecorationColor,
    double? hint_textDecorationThickness,
    String? hint_fontFamily,
    List<String>? hint_fontFamilyFallback,
    TextBaseline? hint_textBaseline,
    Color? helper_color,
    Color? helper_backgroundColor,
    double? helper_fontSize,
    FontWeight? helper_fontWeight,
    FontStyle? helper_fontStyle,
    double? helper_letterSpacing,
    double? helper_wordSpacing,
    double? helper_height,
    Paint? helper_foreground,
    Paint? helper_background,
    List<Shadow>? helper_shadows,
    List<FontFeature>? helper_fontFeatures,
    TextDecoration? helper_textDecoration,
    Color? helper_textDecorationColor,
    double? helper_textDecorationThickness,
    String? helper_fontFamily,
    List<String>? helper_fontFamilyFallback,
    TextBaseline? helper_textBaseline,
    Color? error_color,
    Color? error_backgroundColor,
    double? error_fontSize,
    FontWeight? error_fontWeight,
    FontStyle? error_fontStyle,
    double? error_letterSpacing,
    double? error_wordSpacing,
    double? error_height,
    Paint? error_foreground,
    Paint? error_background,
    List<Shadow>? error_shadows,
    List<FontFeature>? error_fontFeatures,
    TextDecoration? error_textDecoration,
    Color? error_textDecorationColor,
    double? error_textDecorationThickness,
    String? error_fontFamily,
    List<String>? error_fontFamilyFallback,
    TextBaseline? error_textBaseline,
    Color? prefix_color,
    Color? prefix_backgroundColor,
    double? prefix_fontSize,
    FontWeight? prefix_fontWeight,
    FontStyle? prefix_fontStyle,
    double? prefix_letterSpacing,
    double? prefix_wordSpacing,
    double? prefix_height,
    Paint? prefix_foreground,
    Paint? prefix_background,
    List<Shadow>? prefix_shadows,
    List<FontFeature>? prefix_fontFeatures,
    TextDecoration? prefix_textDecoration,
    Color? prefix_textDecorationColor,
    double? prefix_textDecorationThickness,
    String? prefix_fontFamily,
    List<String>? prefix_fontFamilyFallback,
    TextBaseline? prefix_textBaseline,
    Color? suffix_color,
    Color? suffix_backgroundColor,
    double? suffix_fontSize,
    FontWeight? suffix_fontWeight,
    FontStyle? suffix_fontStyle,
    double? suffix_letterSpacing,
    double? suffix_wordSpacing,
    double? suffix_height,
    Paint? suffix_foreground,
    Paint? suffix_background,
    List<Shadow>? suffix_shadows,
    List<FontFeature>? suffix_fontFeatures,
    TextDecoration? suffix_textDecoration,
    Color? suffix_textDecorationColor,
    double? suffix_textDecorationThickness,
    String? suffix_fontFamily,
    List<String>? suffix_fontFamilyFallback,
    TextBaseline? suffix_textBaseline,
    Color? counter_color,
    Color? counter_backgroundColor,
    double? counter_fontSize,
    FontWeight? counter_fontWeight,
    FontStyle? counter_fontStyle,
    double? counter_letterSpacing,
    double? counter_wordSpacing,
    double? counter_height,
    Paint? counter_foreground,
    Paint? counter_background,
    List<Shadow>? counter_shadows,
    List<FontFeature>? counter_fontFeatures,
    TextDecoration? counter_textDecoration,
    Color? counter_textDecorationColor,
    double? counter_textDecorationThickness,
    String? counter_fontFamily,
    List<String>? counter_fontFamilyFallback,
    TextBaseline? counter_textBaseline,
    double mt = 0,
    double ml = 0,
    double mb = 0,
    double mr = 0,
  }) {
    _controller = controller;
    _initialValue = initialValue;
    _focusNode = focusNode;
    _keyboardType = keyboardType;
    _textCapitalization = textCapitalization;
    _textInputAction = textInputAction;
    _textDirection = textDirection;
    _textAlign = textAlign;
    _textAlignVertical = textAlignVertical!;
    _autofocus = autofocus;
    _readOnly = readOnly;
    _toolbarOptions = toolbarOptions;
    _showCursor = showCursor;
    _obscuringCharacter = obscuringCharacter;
    _obscureText = obscureText;
    _autocorrect = autocorrect;
    _smartDashesType = smartDashesType;
    _smartQuotesType = smartQuotesType;
    _enableSuggestions = enableSuggestions;
    _maxLines = maxLines;
    _minLines = minLines;
    _expands = expands;
    _maxLength = maxLength;
    _onChanged = onChanged;
    _onTap = onTap;
    _onEditingComplete = onEditingComplete;
    _onFieldSubmitted = onFieldSubmitted;
    _onSaved = onSaved;
    _validator = validator;
    _inputFormatters = inputFormatters;
    _enabled = enabled;
    _cursorWidth = cursorWidth;
    _cursorHeight = cursorHeight;
    _cursorRadius = cursorRadius;
    _cursorColor = cursorColor;
    _keyboardAppearance = keyboardAppearance;
    _scrollPadding = scrollPadding;
    _enableInteractiveSelection = enableInteractiveSelection;
    _buildCounter = buildCounter;
    _scrollPhysics = scrollPhysics;
    _autofillHints = autofillHints;
    _autovalidateMode = autovalidateMode;
    _input_icon = input_icon;
    _input_labelText = input_labelText;
    _input_helperText = input_helperText;
    _input_helperMaxLines = input_helperMaxLines;
    _input_hintText = input_hintText;
    _input_hintMaxLines = input_hintMaxLines;
    _input_errorText = input_errorText;
    _input_errorMaxLines = input_errorMaxLines;
    _input_floatingLabelBehavior = input_floatingLabelBehavior;
    _input_isCollapsed = input_isCollapsed;
    _input_isDense = input_isDense;
    _input_contentPadding = input_contentPadding;
    _input_prefixIcon = input_prefixIcon;
    _input_prefixIconConstraints = input_prefixIconConstraints;
    _input_prefix = input_prefix;
    _input_prefixText = input_prefixText;
    _input_suffixIcon = input_suffixIcon;
    _input_suffix = input_suffix;
    _input_suffixText = input_suffixText;
    _input_suffixIconConstraints = input_suffixIconConstraints;
    _input_counter = input_counter;
    _input_counterText = input_counterText;
    _input_filled = input_filled;
    _input_fillColor = input_fillColor;
    _input_focusColor = input_focusColor;
    _input_hoverColor = input_hoverColor;
    _input_errorBorder = input_errorBorder;
    _input_focusedBorder = input_focusedBorder;
    _input_focusedErrorBorder = input_focusedErrorBorder;
    _input_disabledBorder = input_disabledBorder;
    _input_enabledBorder = input_enabledBorder;
    _input_border = input_border;
    _input_decorationEnabled = input_decorationEnabled;
    _input_semanticCounterText = input_semanticCounterText;
    _input_alignLabelWithHint = input_alignLabelWithHint;
    _base_color = base_color;
    _base_backgroundColor = base_backgroundColor;
    _base_fontSize = base_fontSize;
    _base_fontWeight = base_fontWeight;
    _base_fontStyle = base_fontStyle;
    _base_letterSpacing = base_letterSpacing;
    _base_wordSpacing = base_wordSpacing;
    _base_height = base_height;
    _base_foreground = base_foreground;
    _base_background = base_background;
    _base_shadows = base_shadows;
    _base_fontFeatures = base_fontFeatures;
    _base_textDecoration = base_textDecoration;
    _base_textDecorationColor = base_textDecorationColor;
    _base_textDecorationThickness = base_textDecorationThickness;
    _base_fontFamily = base_fontFamily;
    _base_fontFamilyFallback = base_fontFamilyFallback;
    _base_textBaseline = base_textBaseline;
    _label_color = label_color;
    _label_backgroundColor = label_backgroundColor;
    _label_fontSize = label_fontSize;
    _label_fontWeight = label_fontWeight;
    _label_fontStyle = label_fontStyle;
    _label_letterSpacing = label_letterSpacing;
    _label_wordSpacing = label_wordSpacing;
    _label_height = label_height;
    _label_foreground = label_foreground;
    _label_background = label_background;
    _label_shadows = label_shadows;
    _label_fontFeatures = label_fontFeatures;
    _label_textDecoration = label_textDecoration;
    _label_textDecorationColor = label_textDecorationColor;
    _label_textDecorationThickness = label_textDecorationThickness;
    _label_fontFamily = label_fontFamily;
    _label_fontFamilyFallback = label_fontFamilyFallback;
    _label_textBaseline = label_textBaseline;
    _hint_color = hint_color;
    _hint_backgroundColor = hint_backgroundColor;
    _hint_fontSize = hint_fontSize;
    _hint_fontWeight = hint_fontWeight;
    _hint_fontStyle = hint_fontStyle;
    _hint_letterSpacing = hint_letterSpacing;
    _hint_wordSpacing = hint_wordSpacing;
    _hint_height = hint_height;
    _hint_foreground = hint_foreground;
    _hint_background = hint_background;
    _hint_shadows = hint_shadows;
    _hint_fontFeatures = hint_fontFeatures;
    _hint_textDecoration = hint_textDecoration;
    _hint_textDecorationColor = hint_textDecorationColor;
    _hint_textDecorationThickness = hint_textDecorationThickness;
    _hint_fontFamily = hint_fontFamily;
    _hint_fontFamilyFallback = hint_fontFamilyFallback;
    _hint_textBaseline = hint_textBaseline;
    _helper_color = helper_color;
    _helper_backgroundColor = helper_backgroundColor;
    _helper_fontSize = helper_fontSize;
    _helper_fontWeight = helper_fontWeight;
    _helper_fontStyle = helper_fontStyle;
    _helper_letterSpacing = helper_letterSpacing;
    _helper_wordSpacing = helper_wordSpacing;
    _helper_height = helper_height;
    _helper_foreground = helper_foreground;
    _helper_background = helper_background;
    _helper_shadows = helper_shadows;
    _helper_fontFeatures = helper_fontFeatures;
    _helper_textDecoration = helper_textDecoration;
    _helper_textDecorationColor = helper_textDecorationColor;
    _helper_textDecorationThickness = helper_textDecorationThickness;
    _helper_fontFamily = helper_fontFamily;
    _helper_fontFamilyFallback = helper_fontFamilyFallback;
    _helper_textBaseline = helper_textBaseline;
    _error_color = error_color;
    _error_backgroundColor = error_backgroundColor;
    _error_fontSize = error_fontSize;
    _error_fontWeight = error_fontWeight;
    _error_fontStyle = error_fontStyle;
    _error_letterSpacing = error_letterSpacing;
    _error_wordSpacing = error_wordSpacing;
    _error_height = error_height;
    _error_foreground = error_foreground;
    _error_background = error_background;
    _error_shadows = error_shadows;
    _error_fontFeatures = error_fontFeatures;
    _error_textDecoration = error_textDecoration;
    _error_textDecorationColor = error_textDecorationColor;
    _error_textDecorationThickness = error_textDecorationThickness;
    _error_fontFamily = error_fontFamily;
    _error_fontFamilyFallback = error_fontFamilyFallback;
    _error_textBaseline = error_textBaseline;
    _prefix_color = prefix_color;
    _prefix_backgroundColor = prefix_backgroundColor;
    _prefix_fontSize = prefix_fontSize;
    _prefix_fontWeight = prefix_fontWeight;
    _prefix_fontStyle = prefix_fontStyle;
    _prefix_letterSpacing = prefix_letterSpacing;
    _prefix_wordSpacing = prefix_wordSpacing;
    _prefix_height = prefix_height;
    _prefix_foreground = prefix_foreground;
    _prefix_background = prefix_background;
    _prefix_shadows = prefix_shadows;
    _prefix_fontFeatures = prefix_fontFeatures;
    _prefix_textDecoration = prefix_textDecoration;
    _prefix_textDecorationColor = prefix_textDecorationColor;
    _prefix_textDecorationThickness = prefix_textDecorationThickness;
    _prefix_fontFamily = prefix_fontFamily;
    _prefix_fontFamilyFallback = prefix_fontFamilyFallback;
    _prefix_textBaseline = prefix_textBaseline;
    _suffix_color = suffix_color;
    _suffix_backgroundColor = suffix_backgroundColor;
    _suffix_fontSize = suffix_fontSize;
    _suffix_fontWeight = suffix_fontWeight;
    _suffix_fontStyle = suffix_fontStyle;
    _suffix_letterSpacing = suffix_letterSpacing;
    _suffix_wordSpacing = suffix_wordSpacing;
    _suffix_height = suffix_height;
    _suffix_foreground = suffix_foreground;
    _suffix_background = suffix_background;
    _suffix_shadows = suffix_shadows;
    _suffix_fontFeatures = suffix_fontFeatures;
    _suffix_textDecoration = suffix_textDecoration;
    _suffix_textDecorationColor = suffix_textDecorationColor;
    _suffix_textDecorationThickness = suffix_textDecorationThickness;
    _suffix_fontFamily = suffix_fontFamily;
    _suffix_fontFamilyFallback = suffix_fontFamilyFallback;
    _suffix_textBaseline = suffix_textBaseline;
    _counter_color = counter_color;
    _counter_backgroundColor = counter_backgroundColor;
    _counter_fontSize = counter_fontSize;
    _counter_fontWeight = counter_fontWeight;
    _counter_fontStyle = counter_fontStyle;
    _counter_letterSpacing = counter_letterSpacing;
    _counter_wordSpacing = counter_wordSpacing;
    _counter_height = counter_height;
    _counter_foreground = counter_foreground;
    _counter_background = counter_background;
    _counter_shadows = counter_shadows;
    _counter_fontFeatures = counter_fontFeatures;
    _counter_textDecoration = counter_textDecoration;
    _counter_textDecorationColor = counter_textDecorationColor;
    _counter_textDecorationThickness = counter_textDecorationThickness;
    _counter_fontFamily = counter_fontFamily;
    _counter_fontFamilyFallback = counter_fontFamilyFallback;
    _counter_textBaseline = counter_textBaseline;

    super.mt(mt);
    super.ml(ml);
    super.mb(mb);
    super.mr(mr);

    return this;
  }
}
