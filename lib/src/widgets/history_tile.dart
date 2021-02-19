import 'package:flutter/material.dart';

class ItemHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/incident.png'),
                    ),
                  )),
              Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SP CY2 BLOK - C013",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.red[200],
                                  borderRadius: BorderRadius.circular(9)),
                              height: 20,
                              child: Text(
                                "Progress",
                                style: const TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      Text("Title"),
                      Text("Title"),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
