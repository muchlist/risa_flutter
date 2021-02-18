import 'package:flutter/material.dart';
import 'package:risa/src/screens/home/menu_grid.dart';
import 'package:risa/src/screens/home/news_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: 8,
        ),
        child: ListView(
          children: <Widget>[
            NewsHeader(),
            const MenuGrid(),
          ],
        ),
      ),
    );
  }
}
