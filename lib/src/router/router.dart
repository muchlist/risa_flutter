import 'package:flutter/material.dart';
import 'package:risa/src/router/routing_constants.dart';
import 'package:risa/src/screens/home.dart';
import 'package:risa/src/screens/login.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}
