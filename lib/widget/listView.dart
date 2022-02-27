import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

enum NikuListViewType { children, builder, separated, custom }

// ignore: must_be_immutable
class NikuListView extends StatelessWidget
    with NikuBuildMacro, UseQueryMacro<NikuListView>, ClipMacro, PaddingMacro {
  NikuListViewType? type;

  Key? key;
  Axis? scrollDirection;
  bool? reverse;
  ScrollController? controller;
  bool? primary;
  ScrollPhysics? physics;
  bool? shrinkWrap;
  NikuEdgeInsets? padding;
  double? itemExtent;
  Widget? prototypeItem;
  bool? addAutomaticKeepAlives;
  bool? addRepaintBoundaries;
  bool? addSemanticIndexes;
  double? cacheExtent;
  List<Widget>? children;
  int? semanticChildCount;
  DragStartBehavior? dragStartBehavior;
  ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  String? restorationId;
  Clip? clipBehavior;

  int? itemCount;
  IndexedWidgetBuilder? itemBuilder;
  IndexedWidgetBuilder? separatorBuilder;
  SliverChildDelegate? childrenDelegate;

  NikuListView({
    this.type,
    this.key,
    this.scrollDirection,
    this.reverse,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.itemExtent,
    this.prototypeItem,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.children,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
    this.itemCount,
    this.itemBuilder,
    this.separatorBuilder,
    this.childrenDelegate,
  }) : super(key: key);

  factory NikuListView.children({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    NikuEdgeInsets? padding,
    double? itemExtent,
    Widget? prototypeItem,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    List<Widget>? children,
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuListView(
        key: key,
        type: NikuListViewType.children,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
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

  factory NikuListView.builder({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    NikuEdgeInsets? padding,
    double? itemExtent,
    Widget? prototypeItem,
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
      NikuListView(
        key: key,
        type: NikuListViewType.builder,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
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

  factory NikuListView.separated({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    NikuEdgeInsets? padding,
    required IndexedWidgetBuilder itemBuilder,
    required IndexedWidgetBuilder separatorBuilder,
    required int itemCount,
    bool? addAutomaticKeepAlives,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuListView(
        key: key,
        type: NikuListViewType.separated,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        itemCount: itemCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
      );

  factory NikuListView.custom({
    Key? key,
    Axis? scrollDirection,
    bool? reverse,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool? shrinkWrap,
    NikuEdgeInsets? padding,
    double? itemExtent,
    Widget? prototypeItem,
    required SliverChildDelegate childrenDelegate,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    String? restorationId,
    Clip? clipBehavior,
  }) =>
      NikuListView(
        key: key,
        type: NikuListViewType.custom,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
        childrenDelegate: childrenDelegate,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
      );

  void get neverScroll => physics = NeverScrollableScrollPhysics();

  set total(int value) => itemCount = value;

  set apply(NikuListView? v) {
    if (v == null) return;

    type = v.type ?? type;
    key = v.key ?? key;
    scrollDirection = v.scrollDirection ?? scrollDirection;
    reverse = v.reverse ?? reverse;
    controller = v.controller ?? controller;
    primary = v.primary ?? primary;
    physics = v.physics ?? physics;
    shrinkWrap = v.shrinkWrap ?? shrinkWrap;
    padding = v.padding ?? padding;
    itemExtent = v.itemExtent ?? itemExtent;
    prototypeItem = v.prototypeItem ?? prototypeItem;
    addAutomaticKeepAlives = v.addAutomaticKeepAlives ?? addAutomaticKeepAlives;
    addRepaintBoundaries = v.addRepaintBoundaries ?? addRepaintBoundaries;
    addSemanticIndexes = v.addSemanticIndexes ?? addSemanticIndexes;
    cacheExtent = v.cacheExtent ?? cacheExtent;
    children = v.children ?? children;
    semanticChildCount = v.semanticChildCount ?? semanticChildCount;
    dragStartBehavior = v.dragStartBehavior ?? dragStartBehavior;
    keyboardDismissBehavior =
        v.keyboardDismissBehavior ?? keyboardDismissBehavior;
    restorationId = v.restorationId ?? restorationId;
    clipBehavior = v.clipBehavior ?? clipBehavior;
    itemCount = v.itemCount ?? itemCount;
    itemBuilder = v.itemBuilder ?? itemBuilder;
    separatorBuilder = v.separatorBuilder ?? separatorBuilder;
    childrenDelegate = v.childrenDelegate ?? childrenDelegate;

    $internalParent..addAll(v.$internalParent);
  }

  get copied => NikuListView(
        type: type,
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        itemExtent: itemExtent,
        prototypeItem: prototypeItem,
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
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        childrenDelegate: childrenDelegate,
      )..$internalParent.addAll($internalParent);

  get widget {
    switch (type) {
      case NikuListViewType.children:
        return ListView(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          itemExtent: itemExtent,
          prototypeItem: prototypeItem,
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

      case NikuListViewType.builder:
        return ListView.builder(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          itemExtent: itemExtent,
          prototypeItem: prototypeItem,
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

      case NikuListViewType.separated:
        return ListView.separated(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          itemBuilder: itemBuilder!,
          separatorBuilder: separatorBuilder!,
          itemCount: itemCount ?? 0,
          addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
          addRepaintBoundaries: addRepaintBoundaries ?? true,
          addSemanticIndexes: addSemanticIndexes ?? true,
          cacheExtent: cacheExtent,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          restorationId: restorationId,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );

      case NikuListViewType.custom:
        return ListView.custom(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          itemExtent: itemExtent,
          prototypeItem: prototypeItem,
          childrenDelegate: childrenDelegate!,
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          restorationId: restorationId,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );

      default:
        return ListView(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap ?? false,
          padding: padding?.value,
          itemExtent: itemExtent,
          prototypeItem: prototypeItem,
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
    }
  }
}
