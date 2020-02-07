import 'package:flutter/material.dart';
import 'package:uberr/router.dart';
import 'package:uberr/screens/onboarding_template.dart';
import 'package:uberr/styles/theme_data.dart';
import 'package:uberr/widgets/OnboardingStepper.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      theme: ThemeScheme.light(),
      initialRoute: HomePageRoute,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  children: <Widget>[
                    OnboardingTemplate(),
                    OnboardingTemplate(),
                    OnboardingTemplate()
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OnboardingStepper(),
                  ),
                  ClipOval(
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      child: IconButton(
                        icon: Icon(
                          Icons.trending_flat,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
