import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

// WebScreenLayout: User defined class.
// StatelessWidget: A widget that does not require mutable state.
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  // build(BuildContext context) → Widget: Describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    // Scaffold: Implements the basic Material Design visual layout structure.
    return Scaffold(
      // body: The primary content of the scaffold.
      // Center: A widget that centers its child within itself.
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  // Web Profile Bar
                  // Web Search Bar
                  ContactsList(),
                ],
              ),
            ),
          ),
          // Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
