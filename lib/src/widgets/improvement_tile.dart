import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ImprovementTile extends StatelessWidget {
  final String title;
  final double percent;

  const ImprovementTile({@required this.title, @required this.percent});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, sizes) {
      return Container(
        margin: EdgeInsets.only(top: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(flex: 1, child: const Text("  o")),
            Expanded(
              flex: 9,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    LinearPercentIndicator(
                      percent: percent,
                      lineHeight: 10.0,
                      backgroundColor: Colors.grey[200],
                      center: Text("${percent * 100} %",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      progressColor: Colors.green,
                      padding: EdgeInsets.only(left: 5),
                    ),
                  ]),
            ),
          ],
        ),
      );
    });
  }
}
