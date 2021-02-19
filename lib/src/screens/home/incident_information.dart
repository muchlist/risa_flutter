import 'package:flutter/material.dart';

class IncidentInformationWidget extends StatelessWidget {
  const IncidentInformationWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IncidentInfoItemContainer(
            total: "4",
            title: "Pending",
            color: Colors.yellow,
          ),
          SizedBox(
            width: 30,
          ),
          IncidentInfoItemContainer(
            total: "60",
            title: "Complete",
            color: Colors.greenAccent[200],
          ),
          SizedBox(
            width: 30,
          ),
          IncidentInfoItemContainer(
            total: "12",
            title: "Progress",
            color: Colors.redAccent[200],
          ),
        ],
      ),
    );
  }
}

class IncidentInfoItemContainer extends StatelessWidget {
  final String total;
  final String title;
  final Color color;

  const IncidentInfoItemContainer(
      {Key key,
      @required this.total,
      @required this.title,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          width: 60,
          height: 30,
          child: Text(
            total,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Text(title)
      ],
    );
  }
}
