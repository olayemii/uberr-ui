import 'package:flutter/material.dart';
import 'package:uberr/models/place.dart';

class LocationCard extends StatelessWidget {
  final Place place;
  LocationCard(place) : this.place = place;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          leading: Icon(
            Icons.location_on,
            color: _theme.primaryColor,
          ),
          title: Text(
            place.name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            place.address,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
