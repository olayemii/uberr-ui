import 'package:flutter/material.dart';

class OnboardingStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (int index) {
          return Container(
            height: 5.0,
            width: 45.0,
            decoration: BoxDecoration(
                color: index < 1
                    ? Theme.of(context).primaryColor
                    : Colors.grey[300],
                borderRadius: BorderRadius.circular(5.0)),
            margin: EdgeInsets.only(right: 5.0),
          );
        },
      ),
    );
  }
}
