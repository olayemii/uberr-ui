import 'package:flutter/material.dart';
import 'package:uberr/styles/colors.dart';

final TextStyle basicTextStyle = TextStyle(
  fontFamily: "SFUIDisplay",
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
  color: basicDarkColor,
);

ThemeData get getThemeData {
  return ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      body1: basicTextStyle,
      body2: basicTextStyle.merge(TextStyle(fontSize: 14.0)),
      title: basicTextStyle.merge(
        TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30.0,
        ),
      ),
      subtitle: basicTextStyle.merge(
        TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
      ),
    ),
  );
}
