import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:niku/macros/macros.dart';

import '../macros/nikuBuild.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuGridView extends StatelessWidget
    with NikuBuildMacro, ClipMacro, PaddingMacro {
  List<Widget> children;
  int crossAxisCount;

  Axis? scrollDirection;
  bool? reverse;
  ScrollController? controller;
  bool? primary;
  ScrollPhysics? physics;
  bool? shrinkWrap;
  NikuEdgeInsets? padding;
  double? mainAxisSpacing;
  double? crossAxisSpacing;
  double? childAspectRatio;
  bool? addAutomaticKeepAlives;
  bool? addRepaintBoundaries;
  bool? addSemanticIndexes;
  double? cacheExtent;
  int? semanticChildCount;
  DragStartBehavior? dragStartBehavior;
  ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  String? restorationId;
  Clip? clipBehavior;

  NikuGridView(
    this.crossAxisCount,
    this.children, {
    Key? key,
    this.scrollDirection,
    this.reverse,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
  }) : super(key: key);

  set count(int value) => this.crossAxisCount = value;

  set apply(NikuGridView? v) {
    if (v == null) return;

    crossAxisCount = v.crossAxisCount != 1 ? v.crossAxisCount : crossAxisCount;
    scrollDirection ??= v.scrollDirection;
    reverse ??= v.reverse;
    controller ??= v.controller;
    primary ??= v.primary;
    physics ??= v.physics;
    shrinkWrap ??= v.shrinkWrap;
    padding ??= v.padding;
    mainAxisSpacing ??= v.mainAxisSpacing;
    crossAxisSpacing ??= v.crossAxisSpacing;
    childAspectRatio ??= v.childAspectRatio;
    addAutomaticKeepAlives ??= v.addAutomaticKeepAlives;
    addRepaintBoundaries ??= v.addRepaintBoundaries;
    addSemanticIndexes ??= v.addSemanticIndexes;
    cacheExtent ??= v.cacheExtent;
    semanticChildCount ??= v.semanticChildCount;
    dragStartBehavior ??= v.dragStartBehavior;
    keyboardDismissBehavior ??= v.keyboardDismissBehavior;
    restorationId ??= v.restorationId;
    clipBehavior ??= v.clipBehavior;
  }

  NikuGridView get copy => NikuGridView(
        crossAxisCount,
        children,
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
      );

  GridView get value => GridView.count(
        key: key,
        crossAxisCount: this.crossAxisCount,
        children: this.children,
        scrollDirection: this.scrollDirection ?? Axis.vertical,
        reverse: this.reverse ?? false,
        controller: this.controller,
        primary: this.primary,
        physics: this.physics,
        shrinkWrap: this.shrinkWrap ?? false,
        padding: this.padding?.value,
        mainAxisSpacing: this.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: this.crossAxisSpacing ?? 0.0,
        childAspectRatio: this.childAspectRatio ?? 1.0,
        addAutomaticKeepAlives: this.addAutomaticKeepAlives ?? true,
        addRepaintBoundaries: this.addRepaintBoundaries ?? true,
        addSemanticIndexes: this.addSemanticIndexes ?? true,
        cacheExtent: this.cacheExtent,
        semanticChildCount: this.semanticChildCount,
        dragStartBehavior: this.dragStartBehavior ?? DragStartBehavior.start,
        keyboardDismissBehavior: this.keyboardDismissBehavior ??
            ScrollViewKeyboardDismissBehavior.manual,
        restorationId: this.restorationId,
        clipBehavior: this.clipBehavior ?? Clip.hardEdge,
      );
}
