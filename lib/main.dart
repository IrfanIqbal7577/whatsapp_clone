import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/features/landing/screens/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

// MyApp: User defined class.
// StatelessWidget: A widget that does not require mutable state.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // build(BuildContext context) → Widget: Describes the part of the user interface represented by this widget.
  Widget build(BuildContext context) {
    // MaterialApp: An application that uses Material Design.
    return MaterialApp(
      // debugShowCheckedModeBanner: Turns on a little "DEBUG" banner in debug mode to indicate that the app is in debug mode.
      debugShowCheckedModeBanner: false,
      // title: A one-line description used by the device to identify the app for the user.
      title: 'WhatsApp Clone',
      // theme: Default visual properties, like colors fonts and shapes, for this app's material widgets.
      // ThemeData: Defines the configuration of the overall visual Theme for a MaterialApp or a widget subtree within the app.
      // ThemeData.dark(): A default dark theme with a teal secondary ColorScheme color.
      theme: ThemeData.dark().copyWith(
        // scaffoldBackgroundColor: The default color of the Material that underlies the Scaffold. The background color for a typical material app or a page within the app.
        scaffoldBackgroundColor: backgroundColor,
      ),
      // home: The widget for the default route of the app (Navigator.defaultRouteName, which is /).
      
      home: const LandingScreen(),
    );
  }
}
