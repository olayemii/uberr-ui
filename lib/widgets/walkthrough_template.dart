import 'package:flutter/material.dart';

class WalkThroughTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;

  WalkThroughTemplate(
      {@required this.title, @required this.subtitle, @required this.image})
      : assert(title != null), assert(subtitle != null);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
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
                        style: Theme.of(context).textTheme.title,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.body1.merge(
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
