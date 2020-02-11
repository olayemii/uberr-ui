import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.times),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hello OLayemii !",
                  style:
                      _theme.textTheme.title.merge(TextStyle(fontSize: 26.0)),
                ),
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/1214214436283568128/KyumFmOO.jpg"),
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            CustomTextFormField(
              hintText: "Name",
              value: "Olayemi Garuba",
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomTextFormField(
              hintText: "Email",
              value: "donyemisco@gmail.com",
              suffixIcon: Icon(
                Icons.check_circle,
                color: _theme.primaryColor,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomTextFormField(
              hintText: "Phone Number",
              value: "444-509-980-103",
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "PREFERENCES",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.0,
                color: Color(0xFF9CA4AA),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFBFBFD),
                border: Border.all(
                  color: Color(0xffD6D6D6),
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "RECEIVE RECEIPT MAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Switch(
                        value: true,
                        activeColor: _theme.primaryColor,
                        onChanged: (bool state) {},
                      )
                    ],
                  ),
                  Text(
                    "The switch is the widget used to achieve the popular.",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
