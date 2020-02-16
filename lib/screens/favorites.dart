import 'package:flutter/material.dart';
import 'package:uberr/models/place.dart';
import 'package:uberr/router.dart';
import 'package:uberr/widgets/location_card.dart';

class Favorites extends StatelessWidget {
  final List<Place> _places = [
    Place(
        name: "BMW of Bellevue",
        address: "13424 NE, 20th St Bellevue, WA 98005"),
    Place(name: "McDonald's", address: "13424 NE, 20th St Bellevue, WA 98005"),
    Place(
        name: "Highland Track Field",
        address: "13424 NE, 20th St Bellevue, WA 98005"),
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegisterRoute);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: 25.0),
              child: Wrap(
                children: <Widget>[
                  Icon(
                    Icons.add,
                    size: 25.0,
                    color: _theme.primaryColor,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                      color: _theme.primaryColor,
                      fontSize: 18.0,
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "My favorites",
              style: _theme.textTheme.title.merge(TextStyle(fontSize: 26.0)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0.0,
              ),
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0.0,
              ),
              leading: Icon(Icons.work),
              title: Text(
                "Work",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "OTHER PLACES",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.0,
                color: Color(0xFF9CA4AA),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: _places
                  .map(
                    (place) => LocationCard(place),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
