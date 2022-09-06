import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/features/landing/screens/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/router.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
    );
  }
}
