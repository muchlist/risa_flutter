import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonMenu extends StatelessWidget {
  final String path;
  final String title;

  const IconButtonMenu({Key key, @required this.path, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 60,
        width: 45,
        child: Column(
          children: <Widget>[
            SvgPicture.asset(
              path,
              width: 50,
              height: 50,
              placeholderBuilder: (context) => CircularProgressIndicator(),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
