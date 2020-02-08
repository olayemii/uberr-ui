import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberr/screens/walkthrough.dart';

// Routes
const String HomePageRoute = "/";
const String WalkthroughRoute = "/";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
