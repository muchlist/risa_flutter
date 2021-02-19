import 'package:flutter/material.dart';
import 'package:risa/src/widgets/icon_menu_button.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(children: <Widget>[
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 4,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          primary: false,
          children: const <Widget>[
            IconButtonMenu(
              title: "Dashboard",
              path: "assets/svg/dashboard.svg",
            ),
            IconButtonMenu(
              title: "Improvement",
              path: "assets/svg/improvement.svg",
            ),
            IconButtonMenu(
              title: "Stock",
              path: "assets/svg/stock.svg",
            ),
            IconButtonMenu(
              title: "Checklist",
              path: "assets/svg/checklist.svg",
            ),
            IconButtonMenu(
              title: "Export",
              path: "assets/svg/export.svg",
            ),
            IconButtonMenu(
              title: "Hardware",
              path: "assets/svg/hardware.svg",
            ),
            IconButtonMenu(
              title: "Software",
              path: "assets/svg/software.svg",
            ),
            IconButtonMenu(
              title: "Incident",
              path: "assets/svg/incident.svg",
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 30,
          endIndent: 30,
        )
      ]),
    );
  }
}
