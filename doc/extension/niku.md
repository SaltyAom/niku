## Niku Widget for styling widget
Add `.niku()` to all widget.

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

### Example usage:
```
Niku(Container())
  .background(Colors.blue)
  .p(21)
  .build()
```

### Prerequisite:
niku: >= 0.3.0

### Availability: 
```dart
// All Widget
import 'package:niku/niku.dart';

// Just extension
import 'package:niku/extension/niku.dart';
```

### Meta property list:
- niku() - Wrap current widget with Niku, allowing custom property builder
