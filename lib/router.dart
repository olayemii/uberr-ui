import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberr/main.dart';

// Routes
const String HomePageRoute = "/";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => HomePage());
    default:
      return MaterialPageRoute(builder: (BuildContext context) => HomePage());
  }
}
