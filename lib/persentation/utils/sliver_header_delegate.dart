import 'dart:math' as math;
import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  SliverHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
    Widget? collapseChild,
    this.bgColor,
    this.padding = 15,
  }) : _collapseChild = collapseChild ?? child;

  final double minHeight;
  final double maxHeight;
  final Widget _collapseChild;
  final Widget child;
  final Color? bgColor;
  final double padding;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(
      child: Material(
        color: bgColor ?? const Color(0XFFF3F9FA),
        elevation: shrinkOffset == maxExtent ? 12 : 0,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: shrinkOffset == maxExtent ? _collapseChild : child,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child ||
        _collapseChild != oldDelegate._collapseChild;
  }
}
