##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)

## Foundation
Niku widget divided into 2 category.
1. Base Widget - Foundation of Niku, help composing multi-level nested object.
2. Extended Widget - Encapsulated all style as property.

### Base Widget
The base widget is Foundation of Niku. 
Base widget is very useful when you've to compose multiple nested level of widget by wrapping every property called as Widget.

The base only have 1 widget which is `Niku`.
It accept `Widget` and create a nest for it.

Now let's look at the following code:
```dart
Container(
  margin: EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 40
  )
  Material(
    color: Colors.white,
    child: InkWell(
      splashColor: Colors.blue.withOpacity(.1)
      onTap: () {
        print("Tapped on Inkwell")
      },
      child: Text(
        "Hello World",
        style: const TextStyle(
          color: Colors.white
        )
      )
    )
  )
);
```

From the nested structured, what we really want is:
1. Create text with "Hello World" with color of white
2. Create inkwell with blue splash color
3. When inkwell is tap, print `Tapped on Inkwell`
4. Create a material with white color
5. Add padding

But the nested itself make it hard to read, you've to read from the inside-out and jump between property to see how it work.

Niku base is very suitable for the case, because the widget require multiple widget here to be build not just one widget with property while in-constrast to `extended widget which only accept it's own property` without ability to create nested widget.

Now let's re-write it using Niku base:
```dart
Niku(
  Text("Hello World") // 1
)
  .on(tap: () {
    print("Tapped on Inkwell")
  }) // 2
  .inkwell(splashColor: Colors.blue.withOpacity(.1)) // 3
  .material(color: Colors.white) // 4
  .mx(40)  // 5.1
  .my(20)  // 5.2
  .build() // 6
```

Using Niku, the structure itself is self-explainary. But let's recap for better understading.
1. We wrap the Text Text with `Niku` which is the `base` widget.
2. Attach event listener to the Text itself using property `.on()`
3. Adding inkwell to wrap the Text
4. Wrap the material behind the inkwell
5. We add padding here
  5.1 `mx` is shorten for "Margin x-axis", which inspired by `TailwindCSS` to shorten the property.
  5.2 `my` as same as `mx`, it's shorten for "Margin y-axis".
6. Now after we add all desired property, we build it as Widget.

The order of property builder is every important.
Because when we call the property of base Widget, it create a new Widget to wrap itself.

Which mean this would work:
```dart
Niku(Text("Hello World"))
  .inkwell(splashColor: Colors.blue.withOpacity(.1))
  .material(color: Colors.white)
  .build()
```

But this wouldn't:
```dart
Niku(Text("Hello World"))
  .material(color: Colors.white)
  .inkwell(splashColor: Colors.blue.withOpacity(.1))
  .build()
```

Because on Flutter spec, `InkWell` should have been `Material` as a parent to be able to property usable.

You might doesn't like shorten `m` of `margin`, which is why we also have `margin` property for styling a padding.
```dart
Niku(
  Text("Hello World") // 1
)
  .on(tap: () {
    print("Tapped on Inkwell")
  }) // 2
  .inkwell(splashColor: Colors.blue.withOpacity(.1)) // 3
  .material(color: Colors.white) // 4
  .margin(
    EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 40
    )
  )
  .build() // 6
```

Every shorten property like `m` for `margin` or `p` for `padding` will accept reduced form of the property itself.

For example, normal `padding` would accept `EdgeInsets` while `p` accept `double` but style to all-side.
Which is why there's multiple shorten `padding` like `p`, `px`, `py`, `pt`, `pl`, `pb` and `pr`.

The `p` will apply all styling to all-side while `px` apply to only x-axis and `pt` is only apply to top.

There's explaination for every widget and property at [Available Widget page](doc/widget/README.md)

## Extended Widget
The extended widget is constrast to Base Widget. It only accept its own availble property for building instead of nesting.

Which mean no matter how much property is called, the widget itself is always return just 1, non-nested widget.

The extended widget, exposed all most every property accept by the extended as property builder which why it could only return just itself.

For example, the `Text` widget itself couldn't accept `padding` because the `Text` widget doesn't have property `padding` available.


Previously, we haven't style the Text's yet, we could style it with extended `NikuText` which extend `Text` itself.
```dart
NikuText("Hello World")
  .color(Colors.blue)
  .build()
```

The pattern is as same as base widget, but it only accept its own property.

The extended widget not only consisted of Text, but there's more like `NikuFlatButton`, `NikuTextField`, `NikuColumn` and more at [Available Widget page](doc/widget/README.md).

### Reusability
Now what make extended widget is really useful is not only its self-explained code itself, but it's reusability property like `apply`.

Let's say that you have a very long styled text and want to use very long property in multiple part of your app like:
```dart
NikuText("1")
  .color(Colors.blue)
  .bold()
  .fontSize(36)
  .fontFamily("Product Sans")
  .textAlign("Center")
  .build()

// 2
NikuText("2")
  .color(Colors.blue)
  .bold()
  .fontSize(36)
  .fontFamily("Product Sans")
  .textAlign("Center")
  .build()

// 3
NikuText("3")
  .color(Colors.blue)
  .bold()
  .fontSize(28)
  .fontFamily("Product Sans")
  .textAlign("Center")
  .build()
```

Written redundant style in app is quite confusing and annoying. You see that `1` and `2` is identical and `3` only changed is `fontSize`.

We could solve this problem with `apply`.

`apply` property is special property (meta property) for styling widget, it's available for every extended widget. (`Row`, `Column` excluded) To reuse existing style again in the widget.

The concept is as the same as `CSS class` for web developer and as same as `modifier` in SwiftUI.

You declare desired base style and apply it to others widget:
```dart
final title = NikuText(null)
  .color(Colors.blue)
  .bold()
  .fontSize(21)
  .fontFamily("Product Sans")
  .textAlign("Center")

NikuText("1")
  .apply(title)
  .build()

NikuText("2")
  .apply(title)
  .build()

NikuText("3")
  .apply(title)
  .fontSize(28)
  .build()
```

Now all the Text has the same style applied as the base style! And you could override it to fit your need!
Such a convenient way to reuse style!

You could also apply multiple style to a widget, the style will be override by the order. So the order is matter here as same as the base widget.

#### Gotcha
The base style must not have `build` because, the build method would return the actual widget instead of the extended widget.


There's also one more property named `style` which is shorten for `apply style and build`.
So if your widget only want to use just a single style and build, you could use `style`

So we could rewrite the previous code as:
```dart
final title = NikuText(null)
  .color(Colors.blue)
  .bold()
  .fontSize(21)
  .fontFamily("Product Sans")
  .textAlign("Center")

NikuText("1")
  .style(title)

NikuText("2")
  .style(title)
```

### Nested widget
As we see that the extended widget is very useful for styling its own property. But what if we need to add other property which doesn't normally accepted?

For example, to use padding with text we have to wrap `Text` with `Padding` which will created a nested widget. But the extended widget could only return just 1 widget which is itself, we couldn't use the Extended Widget.

There's 2 options.
1. Nest the extended widget with normal Flutter widget
2. Use the `niku` meta property

`niku` property is a special property like `apply`, it available to all the extended widget.

This property will turn the extended widget to base widget and allows the extended widget to use the base widget property.

```dart
NikuText("1")
  .color(Colors.blue)
  .fontSize(24)
  .niku()  // <-- Extended widget is now base widget (Niku)
  .p(20)
  .build()
```

Which could also written as:
```dart
Niku(
  NikuText("1")
    .color(Colors.blue)
    .fontSize(24)
    .build()
)
  .p(20)
  .build()
```

When `niku` is called, the extended widget is now wrapped with Niku property which allows the extended widget to use all the base widget property for styling to fit your need.

The only draw back is once the `niku` is called, the extended widget couldn't call its own property anymore because the extended widget has turn into base widget.

```dart
NikuText("1")
  .color(Colors.blue)
  .fontSize(24)
  .niku()
  .fontSize(24)  // <-- Not existed in base widget
  .p(20)
  .build()
```

Congratulations! You've now understand all the concept and how to adopt the Niku library in your project!

You can explore more at [Available Widget page](doc/widget/README.md) which would help you find what you're looking for.

Beside that, Niku library is created to helped developer to easier maintain and write friendly Flutter code!
You don't have to use all the Niku property everywhere, but rather where you wanted to.

As current state of the library itself is experimental, we do not encourage you to use this library on production yet.
But feels free to explore and experiment Niku as much as you like!

If you like the project, simply share this library with your friends and college or help us improve the library by creating a discussion and creating a Pull Request to improve the documentation or the code!

We thanks you for your attention!

##### [Table of Content](https://github.com/saltyaom/niku/blob/main/doc/widget/README.md)
