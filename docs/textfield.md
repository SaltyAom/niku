## Niku extension for [TextFormField]

Style property builder for building `TextFormField`

##### [Table of Content](https://github.com/saltyAom/niku/README.md)

### Example usage:
```
NikuTextField("Hello")
  .border(
    OutlineInputBorder(
      borderSide: BorderSide(
        width: 2
      )
    )
  )
  .focusedBorder(OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
      width: 2)
    )
  )
  .build()
```

### Prerequisite:
niku: >= 0.1.0

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just widget
import 'package:niku/textfield.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build Text as Widget
- apply() - Apply existing NikuText's property to current style
- style() - Apply existing NikuText's property to current style and build

### Style Property list:
- controller - Controller for editable text field
- initialValue - Initial value of text field
- focusNode - An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events
- keyboardType - The type of information for which to optimize the text input control
  - keyboardType - Set keyboard type using [TextInputType]
  - dateTimeKeyboard - Using [TextInputType.datetime]
  - emailKeyboard - Using [TextInputType.email]
  - multilineKeyboard - Using [TextInputType.multiline]
  - nameKeyboard - Using [TextInputType.name]
  - phoneKeyboard - Using [TextInputType.phone]
  - addressKeyboard - Using [TextInputType.address]
  - textKeyboard - Using [TextInputType.text]
  - urlKeyboard - Using [TextInputType.url]
  - visiblePasswordKeyboard - Using [TextInputType.visiblePassword]
- textCapitalization - Configures how the platform keyboard will select an uppercase or lowercase keyboard
  - textCapitalization - Configure using [TextCapitalization]
  - capitalizeCharacters - Using [TextCapitalization.characters]
  - capitalizeNone - Using [TextCapitalization.none]
  - capitalizeSentences - Using [TextCapitalization.sentences]
  - capitalizeWords - Using [TextCapitalization.words]
- textDirection - Set whether text is left-to-right or right-to-left direction.
  - textDirection - Set textDirection by using [TextDirection]
  - ltr - Use left-to-right direction
  - rtl - Use right-to-left direction
- textAlign, align - Set alignment of text
  - alignLeft, left - Set alignment to left
  - alignCenter, center - Set alignment to center
  - alignRight, right - Set alignment to right
  - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
  - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
  - alignJustify, justify - Set alignment to justify
- autofocus - Should textfield be autofocus
- readOnly - Should textfield be readonly
- toolbarOptions - Toolbar is a context menu that will show up when user right click or long press the [EditableText]. It includes several options: cut, copy, paste, and select all
  - toolbarOptions - Using [ToolbarOptions]
  - toolbar - Configure using shorten named property of [ToolbarOptions]
  - allowCopy - Set [ToolbarOptions.copy]
  - allowCut - Set [ToolbarOptions.paste]
  - allowPaste - Set [ToolbarOptions.cut]
  - allowSelectAll - Set [ToolbarOptions.selectAll]
- showCursor - Should textfield cursor be showned
- obscuringCharacter - Display of "hidden" character like password
- obscureText - Should text be obscure eg. password field
- autoCorrect - Should autocorrect apply to textfield
- smartDashesType - Indicates how to handle the intelligent replacement of dashes in text input
  - enableSmartDashes - Using [SmartDashesType.enabled]
  - disableSmartDashes - Using [SmartDashesType.disabled]
- smartQuotesType - Indicates how to handle the intelligent replacement of quotes in text input
  - enableSmartQuotes - Using [SmartDashesType.enabled]
  - disableSmartQuotes - Using [SmartDashesType.disabled]
- enableSuggestion - Should suggestion be used
- maxLengthEnforced - If true, prevents the field from allowing more than [maxLength] characters
- maxLines - The maximum number of lines for the text to span, wrapping if necessary
- minLines - The minimum number of lines to occupy when the content spans fewer lines
- expands - Whether this widget's height will be sized to fill its parent
- maxLength - The maximum number of characters (Unicode scalar values) to allow in the text field
- on - Listeners of [TextField]
  - on - Set multiple listener of [TextField] at once
  - onChanged - Called when the value of textfield is changed
  - onTap - Called for each distinct tap except for every second tap of a double tap
  - onEditingComplete - Called when the user submits editable content (e.g., user presses the "done" button on the keyboard)
  - onSubmitted, onFieldSubmitted - Called when the user indicates that they are done editing the text in the field
  - onSaved - call with the final value when the form is saved via [FormState.save]
- validator - An optional method that validates an input. Returns an error string to display if the input is invalid, or null otherwise
- inputFormmaters - Optional input validation and formatting overrides
- enabled - If false the text field is "disabled": it ignores taps and its [decoration] is rendered in grey
- cursor - Appearance of cursor
  - cursor - Set property of cursor at once
  - cursorWidth - How thick the cursor will be
  - cursorHeight - How tall the cursor will be
  - cursorRadius - How rounded the corners of the cursor should be
    - cursorRounded - Shorten of [.cursorRadius], how rounded the corners of the cursor should be
  - cursorColor - Color of cursor
- keyboardAppearance - The appearance of the keyboard, only honored on iOS devices
  - lightKeyboard - Use light-theme keyboard
  - darkKeyboard - Use dark-theme keyboard
- scrollPadding - Configures padding to edges surrounding a [Scrollable] when the Textfield scrolls into view
- scrollP - Shorten for [scrollPadding] accepting [shorten] padding applying to all side
- enableInteractiveSelection - Whether to enable user interface affordances for changing the text selection
- buildCounter - Callback that generates a custom [InputDecoration.counter] widget
- scrollPhysics - The [ScrollPhysics] to use when vertically scrolling the input
- autoFillHints - A list of strings that helps the autofill service identify the type of this text input
- autoValidateMode - Validation of value of field
  - alwaysValidate - Using [AutovalidateMode.always]
  - disabledValidate - Using [AutovalidateMode.disabled]
  - validateOnUserInteraction - Using [AutovalidateMode.onUserInteraction]

### `InputDecoration` property builder
- icon - An icon to show before the input field and outside of the decoration's container

- labelText - Label text
- labelStyle - Stying of label using [TextStyle]
  - labelStyle - Set labelStyle using [TextStyle]
  - labelColor - Color of text
  - labelFontSize - Set text size
  - labelFontWeight - Font weight
    - labelFontWeight - Set font weight of text
    - labelBold - Set font to bold, equivalent to w700()
    - labelW100 - Use font weight of 100
    - labelW200 - Use font weight of 200
    - labelW300 - Use font weight of 300
    - labelW400 - Use font weight of 400
    - labelW500 - Use font weight of 500
    - labelW600 - Use font weight of 600
    - labelW700 - Use font weight of 700
    - labelW800 - Use font weight of 800
    - labelW900 - Use font weight of 900
  - labelFontWeight - The thickness of the glyphs used to draw the text
  - labelFontStyle - Whether to slant the glyphs in the font
    - labelFontStyle - Use [FontStyle] to apply
    - labelItalic - Use italic style
  - labelLetterSpacing - Spacing for each letter
  - labelWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - labelTextBaseline - A horizontal line used for aligning text
    - labelAlphabetic - Using [TextBaseline.alphabetic]
    - labelIdeographic - Using [TextBaseline.ideographic]

- hintText - Hint text
- hintMaxLines - Maximum line of hint text
- hintStyle - Stying of hint using [TextStyle]
  - hintStyle - Set hintStyle using [TextStyle]
  - hintColor - Color of text
  - hintFontSize - Set text size
  - hintFontWeight - Font weight
    - hintFontWeight - Set font weight of text
    - hintBold - Set font to bold, equivalent to w700()
    - hintW100 - Use font weight of 100
    - hintW200 - Use font weight of 200
    - hintW300 - Use font weight of 300
    - hintW400 - Use font weight of 400
    - hintW500 - Use font weight of 500
    - hintW600 - Use font weight of 600
    - hintW700 - Use font weight of 700
    - hintW800 - Use font weight of 800
    - hintW900 - Use font weight of 900
  - hintFontWeight - The thickness of the glyphs used to draw the text
  - hintFontStyle - Whether to slant the glyphs in the font
    - hintFontStyle - Use [FontStyle] to apply
    - hintItalic - Use italic style
  - hintLetterSpacing - Spacing for each letter
  - hintWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - hintTextBaseline - A horizontal line used for aligning text
    - hintAlphabetic - Using [TextBaseline.alphabetic]
    - hintIdeographic - Using [TextBaseline.ideographic]

- helperText - Helper text
- helperMaxLines - Maximum line of helper text
- helperStyle - Stying of helper using [TextStyle]
  - helperStyle - Set helperStyle using [TextStyle]
  - helperColor - Color of text
  - helperFontSize - Set text size
  - helperFontWeight - Font weight
    - helperFontWeight - Set font weight of text
    - helperBold - Set font to bold, equivalent to w700()
    - helperW100 - Use font weight of 100
    - helperW200 - Use font weight of 200
    - helperW300 - Use font weight of 300
    - helperW400 - Use font weight of 400
    - helperW500 - Use font weight of 500
    - helperW600 - Use font weight of 600
    - helperW700 - Use font weight of 700
    - helperW800 - Use font weight of 800
    - helperW900 - Use font weight of 900
  - helperFontWeight - The thickness of the glyphs used to draw the text
  - helperFontStyle - Whether to slant the glyphs in the font
    - helperFontStyle - Use [FontStyle] to apply
    - helperItalic - Use italic style
  - helperLetterSpacing - Spacing for each letter
  - helperWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - helperTextBaseline - A horizontal line used for aligning text
    - helperAlphabetic - Using [TextBaseline.alphabetic]
    - helperIdeographic - Using [TextBaseline.ideographic]

- errorText - Error text
- errorMaxLines - Maximum line of error text
- errorStyle - Stying of error using [TextStyle]
  - errorStyle - Set errorStyle using [TextStyle]
  - errorColor - Color of text
  - errorFontSize - Set text size
  - errorFontWeight - Font weight
    - errorFontWeight - Set font weight of text
    - errorBold - Set font to bold, equivalent to w700()
    - errorW100 - Use font weight of 100
    - errorW200 - Use font weight of 200
    - errorW300 - Use font weight of 300
    - errorW400 - Use font weight of 400
    - errorW500 - Use font weight of 500
    - errorW600 - Use font weight of 600
    - errorW700 - Use font weight of 700
    - errorW800 - Use font weight of 800
    - errorW900 - Use font weight of 900
  - errorFontWeight - The thickness of the glyphs used to draw the text
  - errorFontStyle - Whether to slant the glyphs in the font
    - errorFontStyle - Use [FontStyle] to apply
    - errorItalic - Use italic style
  - errorLetterSpacing - Spacing for each letter
  - errorWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - errorTextBaseline - A horizontal line used for aligning text
    - errorAlphabetic - Using [TextBaseline.alphabetic]
    - errorIdeographic - Using [TextBaseline.ideographic]

- floatingLabelBehavior - Defines the behavior of the floating label
- isCollapsed - Whether the decoration is the same size as the input field
- isDense - Whether the [InputDecorator.child] is part of a dense form (i.e., uses less vertical space)
- contentPadding - The padding for the input decoration's container

- prefixIcon - An icon that appears before the [prefix] or [prefixText] and before the editable part of the text field, within the decoration's container
- prefixIconConstraints - The constraints for the prefix icon
- prefix - Optional widget to place on the line before the input
- prefixText - Optional text prefix to place on the line before the input
- prefixStyle - Stying of prefix using [TextStyle]
  - prefixStyle - Set prefixStyle using [TextStyle]
  - prefixColor - Color of text
  - prefixFontSize - Set text size
  - prefixFontWeight - Font weight
    - prefixFontWeight - Set font weight of text
    - prefixBold - Set font to bold, equivalent to w700()
    - prefixW100 - Use font weight of 100
    - prefixW200 - Use font weight of 200
    - prefixW300 - Use font weight of 300
    - prefixW400 - Use font weight of 400
    - prefixW500 - Use font weight of 500
    - prefixW600 - Use font weight of 600
    - prefixW700 - Use font weight of 700
    - prefixW800 - Use font weight of 800
    - prefixW900 - Use font weight of 900
  - prefixFontWeight - The thickness of the glyphs used to draw the text
  - prefixFontStyle - Whether to slant the glyphs in the font
    - prefixFontStyle - Use [FontStyle] to apply
    - prefixItalic - Use italic style
  - prefixLetterSpacing - Spacing for each letter
  - prefixWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - prefixTextBaseline - A horizontal line used for aligning text
    - prefixAlphabetic - Using [TextBaseline.alphabetic]
    - prefixIdeographic - Using [TextBaseline.ideographic]

- suffixIcon - An icon that appears before the [suffix] or [suffixText] and before the editable part of the text field, within the decoration's container
- suffixIconConstraints - The constraints for the suffix icon
- suffix - Optional widget to place on the line before the input
- suffixText - Optional text suffix to place on the line before the input
- suffixStyle - Stying of suffix using [TextStyle]
  - suffixStyle - Set suffixStyle using [TextStyle]
  - suffixColor - Color of text
  - suffixFontSize - Set text size
  - suffixFontWeight - Font weight
    - suffixFontWeight - Set font weight of text
    - suffixBold - Set font to bold, equivalent to w700()
    - suffixW100 - Use font weight of 100
    - suffixW200 - Use font weight of 200
    - suffixW300 - Use font weight of 300
    - suffixW400 - Use font weight of 400
    - suffixW500 - Use font weight of 500
    - suffixW600 - Use font weight of 600
    - suffixW700 - Use font weight of 700
    - suffixW800 - Use font weight of 800
    - suffixW900 - Use font weight of 900
  - suffixFontWeight - The thickness of the glyphs used to draw the text
  - suffixFontStyle - Whether to slant the glyphs in the font
    - suffixFontStyle - Use [FontStyle] to apply
    - suffixItalic - Use italic style
  - suffixLetterSpacing - Spacing for each letter
  - suffixWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - suffixTextBaseline - A horizontal line used for aligning text
    - suffixAlphabetic - Using [TextBaseline.alphabetic]
    - suffixIdeographic - Using [TextBaseline.ideographic]

- counter - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored.
- counterText - Optional custom counter widget to go in the place otherwise occupied by [counterText]. If this property is non null, then [counterText] is ignored
- counterStyle - Stying of counter using [TextStyle]
  - counterStyle - Set counterStyle using [TextStyle]
  - counterColor - Color of text
  - counterFontSize - Set text size
  - counterFontWeight - Font weight
    - counterFontWeight - Set font weight of text
    - counterBold - Set font to bold, equivalent to w700()
    - counterW100 - Use font weight of 100
    - counterW200 - Use font weight of 200
    - counterW300 - Use font weight of 300
    - counterW400 - Use font weight of 400
    - counterW500 - Use font weight of 500
    - counterW600 - Use font weight of 600
    - counterW700 - Use font weight of 700
    - counterW800 - Use font weight of 800
    - counterW900 - Use font weight of 900
  - counterFontWeight - The thickness of the glyphs used to draw the text
  - counterFontStyle - Whether to slant the glyphs in the font
    - counterFontStyle - Use [FontStyle] to apply
    - counterItalic - Use italic style
  - counterLetterSpacing - Spacing for each letter
  - counterWordSpacing - Spacing for each word
  - hintHeight - Fixed height for text
  - hintForeground - The paint drawn as a foreground for the text
  - hintBackground - The paint drawn as a background for the text
  - counterTextBaseline - A horizontal line used for aligning text
    - counterAlphabetic - Using [TextBaseline.alphabetic]
    - counterIdeographic - Using [TextBaseline.ideographic]

- filled - If true the decoration's container is filled with [fillColor]
- fillColor - The base fill color of the decoration's container color
  - setFillColor - Set multiple [FillColor] at once
  - fillColor - The base fill color of the decoration's container color
  - hoverColor - The base fill color of the decoration's container color when hovered
  - focusColor - The base fill color of the decoration's container color when focused

- border - The shape of the border to draw around the decoration's container
  - setBorder - Set multiple [InputDecoration] at once
  - border - The shape of the border to draw around the decoration's container
  - enabledBorder - The border to display when the [InputDecorator] is enabled and is not showing an error
  - disabledBorder - The border to display when the [InputDecorator] is disabled and is not showing an error
  - focusedBorder - The border to display when the [InputDecorator] has the focus and is not showing an error
  - errorBorder - The border to display when the [InputDecorator] does not have the focus and is showing an error

- inputDecorationEnable - If false [helperText], [errorText], and [counterText] are not displayed, and the opacity of the remaining visual elements is reduced
- semanticCounterText - A semantic label for the [counterText]
- alignLabelWithHint - Align label as same level as hint

- color - Color of text
- bg, backgroundColor - Background color of text
- fontSize - Set text size
- fontWeight - Font weight
  - fontWeight - Set font weight of text
  - bold - Set font to bold, equivalent to w700()
  - w100 - Use font weight of 100
  - w200 - Use font weight of 200
  - w300 - Use font weight of 300
  - w400 - Use font weight of 400
  - w500 - Use font weight of 500
  - w600 - Use font weight of 600
  - w700 - Use font weight of 700
  - w800 - Use font weight of 800
  - w900 - Use font weight of 900
- fontWeight - The thickness of the glyphs used to draw the text
- fontStyle - Whether to slant the glyphs in the font
  - fontStyle - Use [FontStyle] to apply
  - italic - Use italic style
- letterSpacing - Spacing for each letter
- wordSpacing - Spacing for each word
- height - Fixed height for text
- foreground - The paint drawn as a foreground for the text
- background - The paint drawn as a background for the text
- textBaseline - A horizontal line used for aligning text
  - alphabetic - Using [TextBaseline.alphabetic]
  - ideographic - Using [TextBaseline.ideographic]

##### [Table of Content](https://github.com/saltyAom/niku/README.md)