import 'package:flutter/material.dart';
import 'package:uberr/router.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    final List _drawerMenu = [
      {
        "icon": Icons.restore,
        "text": "My rides",
      },
      {
        "icon": Icons.local_activity,
        "text": "Promotions",
        "route": PromotionRoute
      },
      {
        "icon": Icons.star_border,
        "text": "My favourites",
        "route": FavoritesRoute
      },
      {
        "icon": Icons.credit_card,
        "text": "My payments",
        "route": PaymentRoute,
      },
      {
        "icon": Icons.notifications,
        "text": "Notification",
      },
      {
        "icon": Icons.chat,
        "text": "Support",
        "route": ChatRiderRoute,
      }
    ];
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width -
          (MediaQuery.of(context).size.width * 0.2),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              height: 170.0,
              color: _theme.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1214214436283568128/KyumFmOO.jpg"),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Garuba OLayemii",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(ProfileRoute);
                        },
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "444-509-980-103",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: ListView(
                  children: _drawerMenu.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(menu["route"]);
                      },
                      child: ListTile(
                        leading: Icon(menu["icon"]),
                        title: Text(
                          menu["text"],
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
