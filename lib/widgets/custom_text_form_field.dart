import 'package:flutter/material.dart';

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
              color: Color(0xFF9CA4AA),
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
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
