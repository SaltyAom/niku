## Niku Widget for styling widget

Style property builder for building Widget

##### [Table of Content](https://github.com/SaltyAom/niku/blob/main/README.md)

### Example usage:
```
Niku(Container())
  .background(Colors.blue)
  .padding(21)
  .build()
```

### Prerequisite:
niku: >= 0.1.0

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just widget
import 'package:niku/widget/base.dart';
```

### Meta property list:
- build() - Apply styles and build Widget

### Style property list:
padding, p - Padding of container
  - padding, p - Apply padding to all side
  - px - Apply padding to x axis
  - py - Apply padding to y axis
  - pt - Apply padding top
  - pl - Apply padding left side
  - pb - Apply padding bottom
  - pl - Apply padding right side
- margin, m - Margin of container
  - margin, m - Apply margin to all side
  - mx - Apply margin to x axis
  - my - Apply margin to y axis
  - mt - Apply margin top
  - ml - Apply margin left side
  - mb - Apply margin bottom
  - ml - Apply margin right side
- align - Set self alignment
  - align - Accept [Align] to align self
  - topLeft - Apply widget to top-left
  - topCenter - Apply widget to top-center
  - topRight - Apply widget to top-right
  - centerLeft - Apply widget to center-left
  - center - Apply widget to center
  - centerRight - Apply widget to center-right
  - bottomLeft - Apply widget to bottom-left
  - bottomCenter - Apply widget to bottom-center
  - bottomRight - Apply widget to bottom-right
- fullSize - Apply both full width and height to self
  - fullWidth - Apply full width to self
  - fullHeight - Apply full height to self
- aspectRatio - Apply aspect ratio to self
- expanded - Apply exapnded to self
- fractionSize - Set both width and height in percent
  - fractionWidth - Set width in percent
  - fractionHeight - Set height in percent
- container - Add new container to widget
- constraints - Set minimum and maximum size for widget
  - maxSize - Set widget both max width and height
    - maxWidth - Set widget max width
    - maxHeight - Set Widget max height
  - minSize - Set widget both min width and height
    - minWidth - Set widget min width
    - minHeight - Set Widget min height
- size - Set size of widget
  - width - Set width of widget
  - height - Set height of widget
- fitted - Apply [FittedBox] to widget
- background, bg - Apply background to widget
- opacity - Apply opacity to widget
- rounded - Add border radius to widget
- boxDecoration - Apply [BoxDecoration] to widget
- heroTag - Apply [Hero] to widget
- ignorePointer - Apply [IgnorePointer] to widget
- absorbPointer - Apply [AbsorbPointer] to widget
- tooltip - Add tooptip to widget
- tarnsform - Add transform to widget

##### [Table of Content](https://github.com/SaltyAom/niku/blob/main/README.md)
