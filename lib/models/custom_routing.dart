import 'package:flutter/material.dart';
import 'package:kgrozer/screens/MyProfile.dart';
import 'package:kgrozer/screens/My_cart.dart';
import 'package:kgrozer/screens/main_home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => home());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/MyCart':
        return MaterialPageRoute(builder: (_) => MyCart());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("data"),
            ),
          ),
        );
    }
  }
}
