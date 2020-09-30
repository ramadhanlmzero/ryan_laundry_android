import 'package:flutter/material.dart';
import 'package:ryan_laundry/routes.dart';

void main() => runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Router.generateRoute,
        initialRoute: '/login',
      ),
    );
