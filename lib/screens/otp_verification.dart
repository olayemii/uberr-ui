import 'package:flutter/material.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class OtpVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Verify Phone Number",
                      style: _theme.textTheme.title.merge(
                        TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  Text(
                    "Check your SMS messages, We've sent an OTP to 07033195813",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CustomTextFormField(
                            hintText: "", verticalPadding: 25.0),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                            hintText: "", verticalPadding: 25.0),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                            hintText: "", verticalPadding: 25.0),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                            hintText: "", verticalPadding: 25.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                        "Didn't receive SMS?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Resend Code",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _theme.primaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: FlatButton(
                color: _theme.primaryColor,
                child: Text(
                  "VERIFY",
                  style: _theme.textTheme.body1.merge(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
