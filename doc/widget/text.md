## Niku extension for Text

Style property builder for building `Text`

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```dart
NikuText("Text")
  .color(Colors.blue)
  .fontSize(21)
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just widget
import 'package:niku/widget/text.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build Text as Widget
- apply() - Apply existing NikuText's property to current style
- style() - Apply existing NikuText's property to current style and build

### Style Property list:
- text - Set text
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
- textBaseline - A horizontal line used for aligning text
  - alphabetic - Using [TextBaseline.alphabetic]
  - ideographic - Using [TextBaseline.ideographic]
- height - Fixed height for text
- forground - The paint drawn as a foreground for the text.
- background - The paint drawn as a background for the text.
- shadows - Collection of text's shadow
- fontFeatures - A feature tag and value that affect the selection of glyphs in a font
- textDecoration - Text decoration
- textDecorationColor - Text decoration's color
- textDecorationThickness - Thickness of decoration
- fontFamily - Apply font to text
- fontFamilyFallback - Fallback for font family
- textAlign, align - Set alignment of text
  - alignLeft, left - Set alignment to left
  - alignCenter, center - Set alignment to center
  - alignRight, right - Set alignment to right
  - alignStart, start - Set alignment to start, suitable for dynamic [TextDirection]
  - alignEnd, end - Set alignment to end, suitable for dynamic [TextDirection]
  - alignJustify, justify - Set alignment to justify
- textDirection - Set whether text is left-to-right or right-to-left direction.
  - textDirection - Set textDirection by using [TextDirection]
  - ltr - Use left-to-right direction
  - rtl - Use right-to-left direction
- locale - Set locale languages of text
- softWrap - Whether the text should break at soft line breaks.
- overflow - How visual overflow should be handled
- textScaleFactor - The number of font pixels for each logical pixel
- maxLines - Max line for text
- semanticsLabel, label - Semantics label for text, good for screen reader
- textWidthBasis - Defines how to measure the width of the rendered text
- textHeightBehavior - Defines how the paragraph will apply [TextStyle.height] to the ascent of the first line and descent of the last line

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
