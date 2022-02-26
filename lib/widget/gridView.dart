import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:niku/macros/macros.dart';

import '../objects/objects.dart';

enum NikuGridViewType {
  builder,
  count,
  custom,
  extent,
}

// ignore: must_be_immutable
class NikuGridView extends StatelessWidget
    with NikuBuildMacro, UseQueryMacro<NikuGridView>, ClipMacro, PaddingMacro {
  NikuGridViewType? type = NikuGridViewType.count;

  List<Widget>? children;
  int? itemCount;

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

  IndexedWidgetBuilder? itemBuilder;
  double? maxCrossExtent;
  double? maxCrossAxisExtent;

  SliverGridDelegate? gridDelegate;
  SliverChildBuilderDelegate? childrenDelegate;

  NikuGridView({
    Key? key,
    this.type,
    this.itemCount,
    this.children,
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
    this.itemBuilder,
    this.maxCrossAxisExtent,
    this.maxCrossExtent,
    this.gridDelegate,
    this.childrenDelegate,
  }) : super(key: key);

  factory NikuGridView.count({
    List<Widget> children = const [],
    int? crossAxisCount,
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    EdgeInsetsGeometry? padding,
    double? mainAxisSpacing,
    double? crossAxisSpacing,
    double? childAspectRatio,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuGridView(
        type: NikuGridViewType.count,
        key: key,
        itemCount: crossAxisCount ?? 1,
        children: children,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding?.asNiku,
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

  factory NikuGridView.builder({
    Key? key,
    required IndexedWidgetBuilder itemBuilder,
    required SliverGridDelegate? gridDelegate,
    int? itemCount,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    NikuEdgeInsets? padding,
    double? mainAxisSpacing,
    double? crossAxisSpacing,
    double? childAspectRatio,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
    double? maxCrossExtent,
  }) =>
      NikuGridView(
        type: NikuGridViewType.builder,
        key: key,
        itemCount: itemCount,
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
        maxCrossExtent: maxCrossExtent,
        itemBuilder: itemBuilder,
        childrenDelegate: SliverChildBuilderDelegate(
          itemBuilder,
          childCount: itemCount,
          addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
          addRepaintBoundaries: addRepaintBoundaries ?? true,
          addSemanticIndexes: addSemanticIndexes ?? true,
        ),
      );

  factory NikuGridView.custom({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    EdgeInsetsGeometry? padding,
    required SliverGridDelegate gridDelegate,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuGridView(
        type: NikuGridViewType.custom,
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding?.asNiku,
        gridDelegate: gridDelegate,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
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

  factory NikuGridView.extent({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    EdgeInsetsGeometry? padding,
    required double maxCrossAxisExtent,
    double? mainAxisSpacing,
    double? crossAxisSpacing,
    double? childAspectRatio,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    List<Widget> children = const [],
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuGridView(
        type: NikuGridViewType.extent,
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding?.asNiku,
        maxCrossAxisExtent: maxCrossAxisExtent,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        children: children,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
      );

  set count(int value) => itemCount = value;
  set grid(int value) => itemCount = value;

  set aspectRatio(double value) => childAspectRatio = value;
  set aspect(double value) => childAspectRatio = value;
  set ratio(double value) => childAspectRatio = value;

  set apply(NikuGridView? v) {
    if (v == null) return;

    type = v.type ?? type;
    itemCount = v.itemCount ?? itemCount;
    children = v.children ?? children;
    scrollDirection = v.scrollDirection ?? scrollDirection;
    reverse = v.reverse ?? reverse;
    controller = v.controller ?? controller;
    primary = v.primary ?? primary;
    physics = v.physics ?? physics;
    shrinkWrap = v.shrinkWrap ?? shrinkWrap;
    padding = v.padding ?? padding;
    mainAxisSpacing = v.mainAxisSpacing ?? mainAxisSpacing;
    crossAxisSpacing = v.crossAxisSpacing ?? crossAxisSpacing;
    childAspectRatio = v.childAspectRatio ?? childAspectRatio;
    addAutomaticKeepAlives = v.addAutomaticKeepAlives ?? addAutomaticKeepAlives;
    addRepaintBoundaries = v.addRepaintBoundaries ?? addRepaintBoundaries;
    addSemanticIndexes = v.addSemanticIndexes ?? addSemanticIndexes;
    cacheExtent = v.cacheExtent ?? cacheExtent;
    semanticChildCount = v.semanticChildCount ?? semanticChildCount;
    dragStartBehavior = v.dragStartBehavior ?? dragStartBehavior;
    keyboardDismissBehavior =
        v.keyboardDismissBehavior ?? keyboardDismissBehavior;
    restorationId = v.restorationId ?? restorationId;
    clipBehavior = v.clipBehavior ?? clipBehavior;
    itemBuilder = v.itemBuilder ?? itemBuilder;
    maxCrossAxisExtent = v.maxCrossAxisExtent ?? maxCrossAxisExtent;
    maxCrossExtent = v.maxCrossExtent ?? maxCrossExtent;
    gridDelegate = v.gridDelegate ?? gridDelegate;
    childrenDelegate = v.childrenDelegate ?? childrenDelegate;

    $internalParent..addAll(v.$internalParent);
  }

  use(List<NikuGridView> v) {
    v.forEach((e) => apply = e);
  }

  NikuGridView get copied => NikuGridView(
        key: key,
        type: type,
        itemCount: itemCount,
        children: children,
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
        itemBuilder: itemBuilder,
        maxCrossAxisExtent: maxCrossAxisExtent,
        maxCrossExtent: maxCrossExtent,
        gridDelegate: gridDelegate,
        childrenDelegate: childrenDelegate,
      )..$internalParent.addAll($internalParent);

  GridView get widget {
    switch (type) {
      case NikuGridViewType.builder:
        return GridView.builder(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          gridDelegate: gridDelegate!,
          itemBuilder: itemBuilder!,
          itemCount: itemCount,
          addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
          addRepaintBoundaries: addRepaintBoundaries ?? true,
          addSemanticIndexes: addSemanticIndexes ?? true,
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          restorationId: restorationId,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );

      case NikuGridViewType.custom:
        return GridView.custom(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          gridDelegate: gridDelegate!,
          childrenDelegate: childrenDelegate!,
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          restorationId: restorationId,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );

      case NikuGridViewType.extent:
        return GridView.extent(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          maxCrossAxisExtent: maxCrossAxisExtent!,
          mainAxisSpacing: mainAxisSpacing ?? 0.0,
          crossAxisSpacing: crossAxisSpacing ?? 0.0,
          childAspectRatio: childAspectRatio ?? 1.0,
          addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
          addRepaintBoundaries: addRepaintBoundaries ?? true,
          addSemanticIndexes: addSemanticIndexes ?? true,
          cacheExtent: cacheExtent,
          children: children ?? [],
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          restorationId: restorationId,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );

      default:
        return GridView.count(
          key: key,
          crossAxisCount: this.itemCount ?? 0,
          children: this.children ?? [],
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
  }
}
