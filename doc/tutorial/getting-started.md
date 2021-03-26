##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

## Getting start
When building User Interface in Flutter, everything is Widget. It's that simple but getting annoying when structure starting to get complex.

For example adding a `padding` to container would add unnesscessary nest as the following:
```dart
Padding(
  padding: EdgeInsets.all(20),
  child: Container(
    child: Text(
      "Hello World",
      style: TextStyle(
        color: Colors.blue
      )
    )
  )
)
```

In real-world app, thing get complex quite quickly, as getting more and more nested mean harder to read and maintain.

Niku eliminate the `nested hell` problem of Flutter by providing encapsulated property instead of being nested. Which is as the same way as SwiftUI did.

Let's rewrite the upper code in Niku way:
```dart
import 'package:niku/niku.dart'; // <--- Import Niku library

NikuText("Hello World")
  .color(Colors.blue)
  .niku()
  .p(20)
```

See? Niku help eliminate nested hell by encapsulate styling as expose it as property.

Niku `encapsulate all the styling property as the property builder`. This help reduce nested widget which mean more-readable, less-code and easier-to-maintain.

[Next chapter](https://github.com/saltyaom/niku/blob/main/doc/tutorial/setting-up.md), we will create sample app using Niku for styling.
