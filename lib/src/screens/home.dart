import 'package:flutter/material.dart';
import '../widgets/history_tile.dart';
import 'home/incident_information.dart';
import 'home/menu_grid.dart';
import 'home/news_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 8,
        ),
        child: ListView(
          children: <Widget>[
            NewsHeader(),
            const MenuGrid(),
            IncidentInformationWidget(),
            Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    ItemHistory(),
                    ItemHistory(),
                    ItemHistory(),
                    ItemHistory(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
