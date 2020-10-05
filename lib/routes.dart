import 'package:flutter/material.dart';
import 'package:ryan_laundry/login.dart';
import 'package:ryan_laundry/register.dart';
import 'package:ryan_laundry/home.dart';
import 'package:ryan_laundry/profile/profile.dart';
import 'package:ryan_laundry/profile/profile_edit.dart';
import 'package:ryan_laundry/profile/profile_password.dart';
import 'package:ryan_laundry/order/order.dart';
import 'package:ryan_laundry/notification/notification.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/register':
        return MaterialPageRoute(builder: (_) => Register());
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/profile_edit':
        return MaterialPageRoute(builder: (_) => ProfileEdit());
      case '/profile_password':
        return MaterialPageRoute(builder: (_) => ProfilePassword());
      case '/order':
        return MaterialPageRoute(builder: (_) => Order());
      case '/notification':
        return MaterialPageRoute(builder: (_) => Notif());
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
