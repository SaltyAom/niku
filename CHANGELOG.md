## [1.0.0-alpha.2] - 2021/3/28
Breaking Change:
  - Swap arguments of animated

Change:
  - Remove Nested instance from base property
  - Add default value of `true` to `absortPointer` and `ignorePointer`

## [1.0.0-alpha.1] - 2021/3/25
Bug Fix:
  - add Key

## [1.0.0-alpha.0] - 2021/3/24
Feature:
  - Remove `.build()` and `.style()`
  - Niku Internal is now mutating property instead of stacking
  - Add `.asNiku` on component instead of using Niku Component
  - Match `NikuButton` to idiomatic Dart
  - Add `TextStyle` to TextButton
  - Every Niku Component now support margin property

Breaking Change:
  - Every Niku Component now extend `NikuCore` which extends `StatelessWidget`
  - Variant method `NikuButton` is removed
    - `.icon` to `NikuButton.icon`
    - `.text` to `NikuButton.text`
    - `.elevated` to `NikuButton.elevated`
    - `.elevatedIcon` to `NikuButton.elevatedIcon` 
    - `.outlined` to `NikuButton.outlined`
    - `.outlinedIcon` to `NikuButton.outlinedIcon`

Change:
  - Remove usage of `this.` except for constructor
  - Every margin property is moved to `NikuCore`
  - Build is now using `internalBuild`
  - Remove container if margin is not presented

Bug fix:
  - Foreground on text change background instead
  - Fix margin not mistakenly setting on padding instead

## [0.5.5] - 2021/3/15
Feature:
  - Add `animatedBuilder`, `animated` for `AnimationBuilder`
  - Add `animatedContainer` for `AnimatedContainer`
  - Add `semantics` for `Semantics`

Changed:
  - Move use of `Container` to `DecoratedBox`
    - The property which affected this changed including:
      - boxDecoration
      - border
      - shadows
  - Move use of `Container` to `SizedBox`
    - The property which affected this changed including:
      - fullSize
      - fullWidth
      - fullHeight

## [0.5.4] - 2021/3/11
Bug fixes:
  - Wrong size on `widthPercent`, `heightPercent` and `sizePercent`
  - Unable to use `NikuRow` without specifying `crossAxisAlignment`
  - Add optional `onTap` to `.inkwell`

## [0.5.3] - 2021/3/11
Bug fixes:
  - Wrong size on `widthPercent`, `heightPercent` and `sizePercent`

## [0.5.2] - 2021/3/11
Feature:
  - Add `builder` on Niku for composing custom widget.
  - Add `widthPercent`, `heightPercent` and `sizePercent`

Changed:
  - `bg` and `backgroundColor` of `Niku` are now using `ColoredBox` instead of `Container`
  - `Niku` now don't required any constructor Widget

## [0.5.1] - 2021/3/7
Bug fixes:
  - Fix apply overriding written value

## [0.5.0] - 2021/3/6
Breaking Change:
- Deprecated:
  - FlatButton
  - RaisedButton
  - ElevatedButton
- Move `button.dart` to `oldButton.dart`
- Move `NikuButton` to `button.dart`
- Importing `package:niku/niku.dart` won't import `oldButton.dart`
- Only support Flutter 2.0.0 or newer

Feature:
- Add `NikuButton` for new building new universal Button including
  - TextButton
  - TextButton.icon
  - ElevatedButton
  - ElevatedButton.icon
  - OutlinedButton
  - OutlinedButton.icon

Documentation
- Add code highlight to widget example usage

## [0.4.0] - 2021/3/4
Feature:
- Add support for Sound Null Safety of Flutter 2
- Only support Flutter 2.0.0 or newer

Refactor:
- Constructor to use `this` as parameter
- Remove `overflow` from stack as it's deprecated

Documentation:
  - Fix Null Coalesce
  - Fix `borderColor`, `borderStyle` from crashing on outlineButton

## [0.3.2] - 2021/2/25
Documentation:
  - Fix Null Coalesce
  - Fix `borderColor`, `borderStyle` from crashing on outlineButton

## [0.3.1] - 2021/2/25
Documentation:
  - Fix wrong spelling of `disabled` on outlineButton
  - Fix `setBorder` of `outlineButton` from crashing

## [0.3.0] - 2021/2/22
Feature:
- Add support for:
  - [NikuStack](https://github.com/saltyaom/niku/blob/main/doc/widget/stack.md)
    - Niku extension for `IconButton`
- Add more property to Base Widget
  - Backdrop filter
  - Positioned
  - singleChildScrollView / scrollable
  - flexible / flex
- Add group import
- Add extension Widget
  - Add `.niku()` extension for widget

Documentation:
- Add property documentation
- Correcting wrong spelling

- Bug fixes:
  - Fixes border not rendering children
  - Mark children constructor in Row as required

## [0.2.0] - 2021/2/21
Feature:
- Add support for:
  - [NikuIconButton](https://github.com/saltyaom/niku/blob/main/doc/widget/iconButton.md)
    - Niku extension for `IconButton`
- Add new property to `Niku (base)`:
  - `on` - Event listener
  - `material` - Add [Material] to Widget
  - `inkWell` - Add [InkWell] to Widget
  - `border` - Decorate with border using [Border]
- Add group for `flatButton`, `raisedButton`, `outlineButton` and `flatButton` as `package:niku/widget/button`

Documentation:
- Restructure documentation

- Bug fixes:
  - Wrong spelling of documentation in several place
  - Prevent `toolbarOptions` from crashing if not specified all by adding default value

## [0.1.2] - 2021/2/21
Bug fixes:
- Fix require padding for `NikuFlatButton`, `NikuOutlineButton` and `NikuRaisedButton`

## [0.1.1] - 2021/2/21
Bug fixes:
- `README.md` image not showing banner.

## [0.1.0] - 2021/2/21
Initialize project

Add support for 
- [Niku](https://github.com/saltyaom/niku/blob/main/doc/base.md)
  - Niku base for styling widget
- [NikuText](https://github.com/saltyaom/niku/blob/main/doc/text.md)
  - Niku extension for `Text`
- [Column](https://github.com/saltyaom/niku/blob/main/doc/column.md)
  - Niku extension for `Row`
- [Row](https://github.com/saltyaom/niku/blob/main/doc/row.md)
  - Niku extension for `Column`
- [NikuTextField](https://github.com/saltyaom/niku/blob/main/doc/textfield.md)
  - Niku extension for `TextFormField`
- [NikuFlatButton](https://github.com/saltyaom/niku/blob/main/doc/flatButton.md)
  - Niku extension for `FlatButton`
- [NikuRaisedButton](https://github.com/saltyaom/niku/blob/main/doc/raisedButton.md)
  - Niku extension for `RaisedButton`
- [NikuOutlineButton](https://github.com/saltyaom/niku/blob/main/doc/outlineButton.md)
  - Niku extension for `OutlineButton`
