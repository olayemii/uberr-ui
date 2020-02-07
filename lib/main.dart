import 'package:flutter/material.dart';
import 'package:uberr/router.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/styles/theme_data.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getThemeData,
        onGenerateRoute: onGenerateRoute,
        initialRoute: HomePageRoute,
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Welcome Back!",
        ),
      ),
    );
  }
}
