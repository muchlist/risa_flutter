import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:risa/src/widgets/improvement_tile.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, sizes) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              width: sizes.maxWidth * 0.95,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "News & Improvement",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 8,
                          child: Column(
                            children: <Widget>[
                              ImprovementTile(
                                  title: "Pendaftaran Mac Address user",
                                  percent: 0.5),
                              ImprovementTile(
                                  title: "Standarisasi Password Admin",
                                  percent: 0.8),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'assets/svg/svg_creative.svg',
                              width: 60,
                              height: 60,
                              placeholderBuilder: (context) =>
                                  CircularProgressIndicator(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
