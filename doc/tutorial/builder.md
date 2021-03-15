##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

## Custom Builder
Although Niku provided large amount of handful utilities property, but as project goes larger and larger, sometimes you'll need more than provided utilities.

That's why we have `builder` property!

As expected, this property is used like normal builder on many widget like `ListView.builder`.

All you've to do is to pass function and return new Widget as you like!
```dart
Niku()
    .bg(Colors.red)
    .builder((child) {
        return AnimatedContainer(
            width: 200,
            height: 200,
            child: child
        );
    })
    .build()
```

That's it! Now when you run out of widget or want some custom logic, you can use builder to create your own!

[Next chapter](https://github.com/saltyaom/niku/blob/main/doc/tutorial/setting-up.md), we will create sample app using Niku for styling.

You can explore more at [Available Widget page](doc/widget/README.md) which would help you find what you're looking for.

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
