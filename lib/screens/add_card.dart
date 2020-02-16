import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class AddCard extends StatelessWidget {
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
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Add credit card",
              style: _theme.textTheme.title,
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 42.0,
              width: 160.0,
              child: RaisedButton(
                onPressed: () {},
                color: _theme.primaryColor,
                child: Wrap(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.expand,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "SCAN CARD",
                      style: TextStyle(
                          fontSize: 16.0, color: Colors.white, height: 1.35),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomTextFormField(
              hintText: "NAME",
              value: "OLayemii Garuba",
            ),
            SizedBox(
              height: 25.0,
            ),
            CustomTextFormField(
              hintText: "CREDIT CARD NUMBER",
              value: "**** **** **** **85",
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: CustomTextFormField(
                      hintText: "EXPIRY",
                      value: "09/25",
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      hintText: "CVV",
                      value: "***",
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Debit cards are accepted at some locations and for some categories",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/images/mastercard.png",
                ),
                Image.asset(
                  "assets/images/visa.png",
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: _theme.primaryColor,
              child: FlatButton(
                child: Text(
                  "SAVE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
