import 'package:flutter/material.dart';
import 'package:risa/src/router/routing_constants.dart';
import 'package:risa/src/router/router.dart' as router;
import 'package:risa/src/screens/home_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'RISA';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
      home: BottomNavRisa(),
    );
  }
}
