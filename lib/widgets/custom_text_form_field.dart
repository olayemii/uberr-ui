import 'package:flutter/material.dart';
import 'package:uberr/styles/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final double verticalPadding;
  CustomTextFormField({@required this.hintText, this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            hintText.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.0,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: verticalPadding != null ? verticalPadding : 10.0,
                  horizontal: 15.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[400],
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: dbasicGreyColor),
            ),
          ),
        ],
      ),
    );
  }
}
