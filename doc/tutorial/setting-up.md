##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

## Setting up
As Niku doesn't depends on any dependencies, using native dart code, there's nothing preventing you from using `Niku`.

### Prerequisites:
- Flutter >= 2.0.0

## Starting up
Now let's create quick project styling with Niku.

Let's create a sample Flutter project to see how it work.
```bash
flutter create niku_sample && cd niku_sample
```

And now install Niku by adding this line to `pubspec.yaml` under `dependencies`:
```yaml
# pubspec.yaml
...
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.0
  niku: # Use latest version
...
```

Finally, install it to your local workspace with:
```bash
dart pub get
```

## Sample code

Now navigate to `lib/main.dart` and make sure your code is like the following
```dart
import 'package:flutter/material.dart';

import 'package:niku/niku.dart'; // <--- Import Niku library

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(title: "Niku", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  build(context) {
    return Scaffold(
        appBar: AppBar(title: Text("Niku")),
        body: Container(
          child: Text("Awesome app styling with Niku")
        )
    );
  }
}
```

[Next chapter](https://github.com/saltyaom/niku/blob/main/doc/tutorial/foundation.md), we will review about 2 type of widget in Niku which will help you have solid understanding of how Niku work
