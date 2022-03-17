# [2.2.0-experimental.1] - 2022/03/16
Improvement:
  - Reduce Time Complexity of hooks from `UseQueryMacro` from O(i(2n + p)) to O(m) where n is property, p is parent, and i it total time.
  By passing widget self as reference instead of immutable copied then diffing, and apply
  The following hooks benefits in performance improvement:
    - useQuery
    - useSize
    - useDarkMode
    - useThemeSelector
    - useScreen

Feature:
  - New parent proxy available for all widget:
    - expanded
    - flex
    - fullSize
    - fullWidth, wFull, w100
    - fullHeight, hFull, h100
    - fractionSize, sizePercent
    - fractionWidth, fractionW, fw, wFactor, widthPercent, wPercent
    - fractionHeight, fractionH, hw, hFactor, heightPercent, hPercent
    - boxConstraints
    - nikuConstraints
    - maxSize
    - minSize
    - maxWidth, maxW, wMax
    - minWidth, minW, wMin
    - maxHeight, maxH, hMax
    - minHeight, minH, hMin
    - width, w
    - height, h
    - useGesture
  - New parent proxy available for AxisLayourProxy
    - alignTopLeft
    - alignTopCenter
    - alignTopRight
    - alignCenterLeft
    - alignCenter
    - alignCenterRight
    - alignBottomLeft
    - alignBottomCenter
    - alignBottomRight

Change:
  - Move part of `AxisProxy` to `NikuBuildMacro`
  - Refactor, and organize examples

Bug fixes:
  - `obscureCharacter` not working in `NikuTextFormField`

# [2.2.0-experimental.0] - 2022/03/14
Feature: 
  - New widget: `NikuRadio`, `NikuRadioListTile`, `NikuDismissible`
  - New hook: `useTransition`, `useTransitions`
  - Add property: `splash`, `wFactor`, `hFactor` to `Niku`
  - New utility widget `NikuAnimated`, `NikuAnimateds`
  - New proxy: `ListTile` with `dismiss` for `NikuDismissible`

# [2.1.1] - 2022/03/10
Bug fix:
  - Unmatch filename with capital case
  - Remove `print` from `PaddingMacro`

# [2.1.0] - 2022/02/28
Breaking Change:
  - `flexible` is now `flex`
  - Deprecated required value of `TextFormField` in favor of `hint`.
    - To migrate, please add factory `.hint` or add it as `named parameter`


Feature:
  - Add mandatory shortcut to `AxisLayoutProxy`
  - Add `useThemeSelector` for declarative `useDarkMode`
  - Support all factory method for `NikuGridView`  
  - Add `NikuListView`
  - Add `AxisLayoutMacro`
  - Add `.center`, `.w100`, `safeArea` to `AxisLayoutMacro`
  - Add `of` alias for `apply`

Change:
  - `AxisLayoutMacro` is now `AxisLayoutProxy`
  - `borderWidth` is now `baseBorderWidth` to follow the same convention with `border`, `borderColor`, and `borderStyle` on proxy
  - Remove function allocation from `_init` of `MapTextStyleMacro`
  - Add `center` to `NikuColumn`, and `NikuRow`
  - Replace `childrenWithGap` with `$internalComposeGap` in `GapMacro`
  - Add `gap` property to AxisLayout
  - gap can now be applied
  - `childrenWithGap` now only composed on build

Bug fix:
  - `useDarkMode` and `useThemeSelector` not switching context between
  - Fix `'owner!._debugCurrentBuildTarget == this': is not true.` when using `useDarkMode`

# [2.1.0-experimental.4] - 2022/02/28
Breaking Change:
  - `flexible` is now `flex`

Feature:
  - Add mandatory shortcut to `AxisLayoutProxy`

Change:
  - `AxisLayoutMacro` is now `AxisLayoutProxy`

# [2.1.0-experimental.3] - 2022/02/27
Feature:
  - Add `useThemeSelector` for declarative `useDarkMode`

Bug fix:
  - `useDarkMode` and `useThemeSelector` not switching context between

# [2.1.0-experimental.2] - 2022/02/27
Breaking Change:
  - Deprecated required value of `TextFormField` in favor of `hint`.
    - To migrate, please add factory `.hint` or add it as `named parameter`

Change:
  - `borderWidth` is now `baseBorderWidth` to follow the same convention with `border`, `borderColor`, and `borderStyle` on proxy

Bug fix:
  - Fix `'owner!._debugCurrentBuildTarget == this': is not true.` when using `useDarkMode`

# [2.1.0-experimental.1] - 2022/02/23
Feature:
  - Support all factory method for `NikuGridView`  
  - Add `NikuListView`
  - Add `AxisLayoutMacro`
  - Add `.center`, `.w100`, `safeArea` to `AxisLayoutMacro`
  - Add `of` alias for `apply`

Change:
  - Remove function allocation from `_init` of `MapTextStyleMacro`
  - Add `center` to `NikuColumn`, and `NikuRow`
  - Replace `childrenWithGap` with `$internalComposeGap` in `GapMacro`
  - Add `gap` property to AxisLayout
  - gap can now be applied
  - `childrenWithGap` now only composed on build

Bug fix:
  - Remove `print` from `PaddingMacro`

# [2.1.0-experimental.0] - 2022/02/23
Feature:
  - Text Style Proxy, Button Proxy, TextFormField Proxy
  - Add `ConstraintsMacro` to `NikuInputDecoration`
  - Add `useTextStyle` to `DropdownButton`
  - Add State Utility Hooks to `NikuButton`
  - Add `color` setter to `NikuButtonStyle`

Change:
  - `border` is now `baseBorder`, and `allBorder` is now `border`
  - margin property now uses `Padding` instead of `Container` because that's how native Flutter doing it. Yes, margin is actually padding in Flutter.

## [2.0.0] - 2022/02/21
Base on 2.0.0-rc.8

Simply an entire rewrite, read more at [version 2 introduction](https://medium.com/@saltyaom/niku-2-new-fresh-restart-5a3c4270cc25)

## [2.0.0-compat.0] - 2022/02/21
Base on 2.0.0-rc.8

A compatibility version for working with both v1 and v2 for gradually migrating from v1.

To gradually migrate from v1, simply replace all:
```dart
// From
import 'package:niku/niku.dart';
// into
import 'package:niku/v1/niku.dart';
```

You can easily use IDE like VS Code to find and replace all `package:niku/` with `package:niku/v1/` then it should work just fine, gradually migrate from v1.

## [2.0.0-rc.8] - 2022/02/20
Bux Fix:
  - Add `copied` to NikuImage, NikuSlider, NikuRangeSlider.
  - Apply parent builder to `copied` method

## [2.0.0-rc.7] - 2022/02/20
Feature:
  - New `use` on `NikuWidget` to apply multiple styles at once
  - Add `useBorder`, `useRoundedBorder`
  - Add `apply` to `NikuIcon`
  - Add `WidthHeightMacro`

Change:
  - Add `Full Macro` conventions
  - Use Parent Builder stack instead of direct setter to support apply parent styling

Bux Fix:
  - Fix wrong spelling of `actionPb`
  - Use `Full Macro` on `Alert`
  - n.showDialog now accepts any widget

## [2.0.0-rc.6] - 2022/02/19
Change:
  - showNikuDialog now accepts any widget

## [2.0.0-rc.5] - 2022/02/17
Bug Fix:
  - Add default `.rounded` to `NikuButton`
  - Fix gap inserted to last children
  - Fix Column with gap required at least 1 children

## [2.0.0-rc.4] - 2022/02/14
Breaking Change:
  - Remove `NikuImage.file` factory to support web platform.

## [2.0.0-rc.3] - 2022/02/14
Breaking Change:
  - Remove cached network image due to not supporting all platform yet.

## [2.0.0-rc.2] - 2022/02/13
Feature:
  - Add `.quarterTurns`, `bgBlur`, `clipRect`, `clipOval` to `Niku`

Change:
  - Remove default styling from `NikuText` to match default Flutter Text, eg. TextBasis.

Bug fixes:
  - `AxisMacro` not assigning wrong field name

## [2.0.0-rc.1] - 2022/02/13
Breaking Change:
  - Migrate `.useScreen` to `useSize`
  - Migrate `.useQuery` to `.useScreen`
  - Migrate `.useEvents` to `useGesture`
  - Remove `TransformSelectableText`

Feature:
  - Add `.useQuery` to handle `MediaQueryData`
  - Add `useBorder`, `useNikuBorder`, `useBorderColor`, `useBorderWidth` hook
  - Add `.useDarkMode` to handle element styling on Dark Theme
  - Add `n.Image.cache` to use `CacheNetworkImage`

Bug fixes:
  - Correct `focusedErrorBorder` setter name

## [2.0.0-experimental.4] - 2022/01/31
Breaking Change:
  - Remove `asNiku` on Widget (still working for object)
  - Migrate `.useOn` to `useEvents`

Feature:
  - Add `.focusColor`, `.splashColor`, `highlightColor`, `hoverColor` to `NikuCheckboxListTile`
  - Add `.adaptive` to `NikuAlert`
  - Add `.adaptive` to `Switch`
  - Add `.adaptive` to `NikuTextFormField`
  - Add `NikuShowDialog` to handle adaptive dialog
  - New `NikuQuery` widget

Bug fixes:
  - `.on` property in `Niku` doesn't passing dependencies to concilation process

## [2.0.0-experimental.3] - 2022/01/29
Feature:
  - Add `useQuery` and `useScreen` property, [read more about it here](https://twitter.com/saltyAom/status/1487466537288044545?s=20&t=dVt070b118TnrSmVpY8LBQ)

Bug fixes:
  - `.on` property in `Niku` doesn't passing dependencies to concilation process

## [2.0.0-experimental.2] - 2022/01/25
Feature:
  - Game Changing, `NikuOn`, `.on` and `.freezed` property, [read more about it here](https://twitter.com/saltyAom/status/1486337427069607938?s=20)
  - `NikuDropdownButton` widget for `DropdownButton`

Bug fixes:
  - Change from Nullish cascade equality to nullish check to override `useStyle`'s style

Breaking Change:
  - Migrate `.useStyle` to `.useTextStyle()` on `NikuText`.
  - Migrate `.useStyle` to `.useButtonStyle()` on `NikuButton`.
  - Change `.useStyle` to `.useButtonStyle()` on `NikuButton`.
  - Migrate `.useBuilder`, `useParent` to `useChild` on `Niku`.
  - Migrate from `.value` to `.widget` on every Niku component.
  - Migrate from `style` to `textStyle` on every Niku component.

## [2.0.0-experimental.1] - 2021/12/16
- Namespace
- Selectable Text

## [2.0.0-experimental.0] - 2021/12/16
Heaven and Earth, batch 1.
@see [#17](https://github.com/SaltyAom/niku/discussions/17)

## [1.1.3] - 2021/9/30
Thanks to [y-pakron](https://github.com/y-pakorn) for fixing the bug!
This release fix the `expanded` method to be flexible on `NikuCore` where I overlook.
Without this PR, we are going to have time confusion of why flexing doesn't work!

Bug fixes:
  - Apply `flex` parameter to `expanded` on `NikuCore`

## [1.1.2] - 2021/7/20
Thanks to [dmitrijkiltau](https://github.com/dmitrijkiltau) for contribution!
This release add the nullable `onTap` on `NikuButton`, also adding the example for that.

Bug fixes:
  - Nullable onTap on `NikuButton`

## [1.1.1] - 2021/7/11
Big thanks to [y-pakorn](https://github.com/y-pakorn) for this release!
He contribute to Niku for a several PR now, in fact, this entire release is happend because of his contribution which solved bug caused by my clumsiness, tee hee~

Feature:
  - Add `mainAxisSize` to `NikuColumn` and `NikuRow`

Bug fixes:
  - Fixes `.fullWidth()` which cause full height.
  - Makes error text optional on `NikuTextField`.

## [1.1.0] - 2021/6/2
Feature:
  - selectable text

## [1.0.5] - 2021/4/24
Bug fix:
  - builder return Widget instead of Niku.

## [1.0.4] - 2021/4/24
Bug fix:
  - log

## [1.0.3] - 2021/4/24
Bug fix:
  - builder return void.

## [1.0.2] - 2021/4/24
Feature:
  - add `.scrollbar` to base.
  - add `.style`, `.theme` to text.

## [1.0.1] - 2021/4/7
Breaking Change:
  - Remove `.text` from NikuText.

Change:
  - Adding final to constructor parameter.

Bug fix:
  - Fix key not setting for several widget.
  - Fix `animated` and `animatedBuilder` not working.

## [1.0.0] - 2021/4/7
Bug fix:
  - `this.` access property.

## [1.0.0-alpha.4] - 2021/4/1
Feature:
  - Add `NikuWrap`
  - Add `form` to `NikuBase`.
  - Add `focusedError` to `TextField` border input.

Bug fix:
  - `apply` using unexpected share property.
  - `apply` on `NikuTextField` without `AlignVertical` cause build to failed.

## [1.0.0-alpha.3] - 2021/3/31
Feature:
  - Add `cursor` to IconButton.
  - Add the following property to `IconButton`:
    - `size`, 
    - `minSize`, `minimumSize`
    - `maxSize`, `maximumSize`
    - `minWidth`, `minimumWidth`
    - `minHeight`, `minimumHeight`
    - `maxWidth`, `maximumWidth`
    - `maxHeight`, `maximumHeight`
  - Boolean method on `NikuTextField` now has default value of `true`.

Breaking Change:
  - Rename `border` to `b` and `setBorder` to `border`.
  - Change `obscureTextFormField` to `obscureText` on NikuTextField.
  - Add `asPassword` on NikuTextField.
  - Remove `disabledSmartDashes` and `disabledSmartQuotes`.
  - `enableSmartQuotes` and `enableSmartDashes` now accept option boolean default as true.
  - Change from `inputDecorationEnable` to `enableInputDecoration`.
  - Change from `...textFormField` to `...text` in NikuTextField.

Bug fix:
  - Fix Visual Density in NikuButton.
  - Setting multiple border variant not working

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
