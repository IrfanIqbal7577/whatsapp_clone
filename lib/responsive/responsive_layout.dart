import 'package:flutter/material.dart';

// ResponsiveLayout: User defined class.
// StatelessWidget: A widget that does not require mutable state.
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout({
    Key? key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  }) : super(key: key);

  @override
  // build(BuildContext context) → Widget: Describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    // LayoutBuilder: Builds a widget tree that can depend on the parent widget's size.
    return LayoutBuilder(
      // builder → LayoutWidgetBuilder: Called at layout time to construct the widget tree.
      builder: (
          // context: Type BuildContext: A handle to the location of a widget in the widget tree.
          // constraints: Type BoxConstraints: Immutable layout constraints for RenderBox layout.
          (context, constraints) {
        // constraints.maxWidth: The maximum width that satisfies the constraints.
        if (constraints.maxWidth > 900) {
          // WEB SCREEN
          return webScreenLayout;
        }
        // MOBILE SCREEN
        return mobileScreenLayout;
      }),
    );
  }
}
