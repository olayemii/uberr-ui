import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberr/screens/register.dart';
import 'package:uberr/screens/walkthrough.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
