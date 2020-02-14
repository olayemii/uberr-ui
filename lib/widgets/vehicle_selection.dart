import 'package:flutter/material.dart';

class VehicleSelection extends StatelessWidget {
  final String vehicleType;
  final String image;
  VehicleSelection({this.vehicleType, this.image});
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      height: 120.0,
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: _theme.primaryColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(
          6.0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 10.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  vehicleType,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Best Save",
                  style: TextStyle(
                    color: _theme.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "\$25.50",
                        style: TextStyle(
                          color: _theme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Wrap(
                        children: <Widget>[
                          Icon(Icons.timer),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "1-4 min",
                            style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            child: Image.asset(
              image,
              height: 150.0,
            ),
          )
        ],
      ),
    );
  }
}
