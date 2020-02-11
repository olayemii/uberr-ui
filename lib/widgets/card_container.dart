import 'package:flutter/material.dart';
import 'package:uberr/models/debitcard.dart';

class CardContainer extends StatelessWidget {
  final DebitCard cardDetail;
  CardContainer({this.cardDetail});
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.all(0.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        leading: cardDetail.logo,
        title: Text(
          "**** **** **** ${cardDetail.lastDigits}",
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "Expires ${cardDetail.expiry}",
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
