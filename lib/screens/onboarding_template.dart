import 'package:flutter/material.dart';
import 'package:uberr/widgets/OnboardingStepper.dart';

class OnboardingTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text("Hello World!"),
          ),
        ),
        Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Pay with your mobile",
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "I know this is crazy, buy i tried something fresh, I hope you love it.",
                      style: Theme.of(context).textTheme.body1.merge(
                            TextStyle(
                              color: Colors.grey[600],
                              height: 1.3,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
