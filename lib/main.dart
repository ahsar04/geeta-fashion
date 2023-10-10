import 'package:geeta/ui/pages/home.dart';
import 'package:geeta/ui/pages/login.dart';
import 'package:geeta/ui/pages/register.dart';
import 'package:geeta/ui/pages/start.dart';
import 'package:geeta/ui/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:geeta/ui/pages/onboarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/start': (context) => const Start(),
        '/on-boarding': (context) => const OnBoarding(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
      },
    );
  }
}
