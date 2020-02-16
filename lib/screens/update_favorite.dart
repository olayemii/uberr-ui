import 'package:flutter/material.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class UpdateFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Update Profile",
          style: TextStyle(color: dbasicDarkColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    label: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.work),
                    label: Text(
                      "Work",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.pin_drop),
                    label: Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70.0,
            ),
            CustomTextFormField(
              hintText: "Place name",
              value: "McDonald's",
            ),
            SizedBox(
              height: 25.0,
            ),
            CustomTextFormField(
              hintText: "Place address",
              value: "13424 NE 20th St. Bellevue, WA, 98005",
            ),
            SizedBox(
              height: 25.0,
            ),
            FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.map,
                color: Colors.white,
              ),
              label: Text(
                "PICK ON MAP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: _theme.primaryColor,
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              color: Colors.yellow,
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "SAVE LOCATION",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: _theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
