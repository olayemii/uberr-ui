import 'package:flutter/material.dart';

class DebitCard {
  final Image logo;
  final String lastDigits;
  final String expiry;
  DebitCard({this.logo, this.lastDigits, this.expiry})
      : assert(expiry != null), assert(lastDigits != null);
}
