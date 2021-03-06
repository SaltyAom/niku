### Niku extension for Stack

Style property builder for building stack

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```dart
NikuStack([
  Text("0"),
  Text("1")
])
  .center()
  .append(Text("2"))
  .build()
```

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// With relatated widget
import 'package:niku/widget/axis.dart';

// Just widget
import 'package:niku/widget/row.dart';
```

### Meta property list:
- niku() - Switch to Niku() property
- build() - Apply styles and build FlatButton as Widget

### Style Property list:
- alignment, align - Set self alignment
  - align - Accept [AlignmentDirectional] to align self
  - topStart - Apply widget to top-start
  - topCenter - Apply widget to top-center
  - topEnd - Apply widget to top-end
  - centerStart - Apply widget to center-start
  - center - Apply widget to center
  - centerEnd - Apply widget to center-end
  - bottomStart - Apply widget to bottom-start
  - bottomCenter - Apply widget to bottom-center
  - bottomEnd - Apply widget to bottom-end
- textDirection - Set whether text is left-to-right or right-to-left direction.
  - textDirection - Set textDirection by using [TextDirection]
  - ltr - Use left-to-right direction
  - rtl - Use right-to-left direction
- stackFit - Adjust fit using [StackFit] of stack
  - stackFit, fit - Adjust fit using [StackFit] of stack
  - expand - Using [StackFit.expand]
  - passthrogh - Using [StackFit.passthrough]
  - loose - Using [StackFit.loose]
- clip, clipBehavior - Add clip behavior of widget

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
