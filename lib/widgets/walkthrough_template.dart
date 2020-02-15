import 'package:flutter/material.dart';
import 'package:uberr/router.dart';

class WalkThroughTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;

  WalkThroughTemplate(
      {@required this.title, @required this.subtitle, @required this.image})
      : assert(title != null),
        assert(subtitle != null);
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(UnAuthenticatedPageRoute);
            },
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 25.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    300.0,
                  ),
                  border: Border.all(
                    color: _theme.primaryColor,
                  ),
                ),
                child: Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _theme.primaryColor,
                    fontSize: 14.0,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: image,
            ),
          ),
          Container(
            height: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: _theme.textTheme.title,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        subtitle,
                        style: _theme.textTheme.body1.merge(
                          TextStyle(
                            color: Colors.grey[600],
                            height: 1.3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
