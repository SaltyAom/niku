## Niku extension for Column

Style property builder for building `Column`

##### [Table of Content](https://github.com/saltyAom/niku/README.md)

### Example usage:
```
NikuColumn([
  Text("0"),
  Text("1")
])
  .mainAxis(MainAxisAlignment.center)
  .crossCenter()
  .append(Text("2"))
  .build()
```

### Prerequisite:
niku: >= 0.1.0

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// With relatated widget
import 'package:niku/axis.dart';

// Just widget
import 'package:niku/column.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build FlatButton as Widget

### Style Property list:
- mainAxisAlignemnt, mainAxis - Set main axis alignment
  - mainStart, justifyStart - Using [MainAxisAlignment.start]
  - mainCenter, justifyCenter - Using [MainAxisAlignment.center]
  - mainEnd, justifyEnd - Using [MainAxisAlignment.end]
  - spaceAround - Using [MainAxisAlignment.spaceAround]
  - spaceBetween - Using [MainAxisAlignment.spaceBetween]
  - spaceEvenly - Using [MainAxisAlignment.spaceEvenly]
- crossAxisAlignment, crossAxis - Set cross axis alignment
  - baseline - Using [CrossAxisAlignment.baseline]
  - crossStart, itemsStart - Using [CrossAxisAlignment.start]
  - crossCenter, itemsCenter - Using [CrossAxisAlignment.center]
  - crossEnd, itemsEnd - Using [CrossAxisAlignment.end]
  - stretch - Using [CrossAxisAlignment.stretch]
- textDirection - Set whether text is left-to-right or right-to-left direction.
  - textDirection - Set textDirection by using [TextDirection]
  - ltr - Use left-to-right direction
  - rtl - Use right-to-left direction
- verticalAlign - A direction in which boxes flow vertically
  - up - Using [VerticalAlign.up]
  - down - Using [VerticalAlign.down]
- textBaseline - A horizontal line used for aligning text
  - alphabetic - Using [TextBaseline.alphabetic]
  - ideographic - Using [TextBaseline.ideographic]

Children property list:
  - child, append, appendChild - Append child
  - children, appendChildren - Append all of children
  - prepend, prependChild - Prepend child
  - prependChildren - Prepend all of children
  - insert - Insert child at index
  - insertAll - Insert all children at index

##### [Table of Content](https://github.com/saltyAom/niku/README.md)
