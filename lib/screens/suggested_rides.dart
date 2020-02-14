import 'package:flutter/material.dart';

class SuggestedRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text(
                  "SIGGESTED RIDES",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 120.0,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: _theme.primaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(
                      6.0,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
