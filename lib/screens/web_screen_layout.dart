import 'package:flutter/material.dart';

// WebScreenLayout: User defined class.
// StatelessWidget: A widget that does not require mutable state.
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  // build(BuildContext context) → Widget: Describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    // Scaffold: Implements the basic Material Design visual layout structure.
    return const Scaffold(
      // body: The primary content of the scaffold.
      // Center: A widget that centers its child within itself.
      body: Center(
        // child: The widget below this widget in the tree.
        // Text: A run of text with a single style.
        child: Text('This is web'),
      ),
    );
  }
}
