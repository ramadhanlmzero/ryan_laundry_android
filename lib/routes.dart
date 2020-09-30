import 'package:flutter/material.dart';
import 'package:ryan_laundry/login.dart';
import 'package:ryan_laundry/register.dart';
import 'package:ryan_laundry/home.dart';
import 'package:ryan_laundry/profile/profile_edit.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/register':
        return MaterialPageRoute(builder: (_) => Register());
      case '/profile_edit':
        return MaterialPageRoute(builder: (_) => ProfileEdit());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
