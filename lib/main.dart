import 'package:flutter/material.dart';
import 'package:fruithub_ecommerce/ui/screen/basket_page.dart';
import 'package:fruithub_ecommerce/ui/screen/congratulations_screen.dart';
import 'package:fruithub_ecommerce/ui/screen/delivery_status.dart';
import 'package:fruithub_ecommerce/ui/screen/home_page.dart';
import 'package:fruithub_ecommerce/ui/screen/product_details_page.dart';
import 'package:fruithub_ecommerce/ui/screen/splash_screen.dart';
import 'package:fruithub_ecommerce/ui/screen/welcome_screen.dart';

import 'ui/screen/authentication_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Hub',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/auth_screen': (context) => AuthenticationPage(),
        '/product_details': (context) => ProductDetailsPage(),
        '/basket': (context) => BasketPage(),
        '/confirm': (context) => CongratulationsScreen(),
        '/delivery_status': (context) => DeliveryStatus(),
      },
    );
  }
}
