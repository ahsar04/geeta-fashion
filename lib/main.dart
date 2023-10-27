import 'package:geeta/ui/pages/cart_page.dart';
import 'package:geeta/ui/pages/favorite_page.dart';
import 'package:geeta/ui/pages/home_page.dart';
import 'package:geeta/ui/pages/login_page.dart';
import 'package:geeta/ui/pages/payment_page.dart';
import 'package:geeta/ui/pages/product_detail_page.dart';
import 'package:geeta/ui/pages/register_page.dart';
import 'package:geeta/ui/pages/start_page.dart';
import 'package:geeta/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:geeta/ui/pages/onboarding_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/start': (context) => const StartPage(),
        '/on-boarding': (context) => const OnBoardingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/product-detail': (context) => const ProductDetailPage(),
        '/cart': (context) => CartPage(),
        '/favorite': (context) => const FavoritePage(),
        '/payment': (context) => const PaymentPage(),
      },
    );
  }
}
