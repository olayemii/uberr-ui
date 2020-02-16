import 'package:flutter/material.dart';
import 'package:uberr/widgets/vehicle_selection.dart';

class SuggestedRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      bottomSheet: Container(
        padding: EdgeInsets.all(30.0),
        height: 120.0,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SizedBox(),
            ),
            FlatButton(
              color: _theme.primaryColor,
              child: Text(
                "BOOK NOW",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 150.0,
            ),
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: Text(
                    "SIGGESTED RIDES",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                VehicleSelection(
                  vehicleType: "TOYOTA CAMRY",
                  image: "assets/images/car.png",
                ),
                VehicleSelection(
                  vehicleType: "HONDA CIVIC",
                  image: "assets/images/car2.png",
                ),
                VehicleSelection(
                  vehicleType: "BIKE",
                  image: "assets/images/bike.png",
                ),
                VehicleSelection(
                  vehicleType: "TOYOTA CAMRY",
                  image: "assets/images/car.png",
                ),
                VehicleSelection(
                  vehicleType: "HONDA CIVIC",
                  image: "assets/images/car2.png",
                ),
                VehicleSelection(
                  vehicleType: "BIKE",
                  image: "assets/images/bike.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
