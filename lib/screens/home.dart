import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(6.4413956, 3.4157137);
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    _markers.add(
      Marker(
        markerId: MarkerId(TimeOfDay.now().toString()),
        position: _center,
        infoWindow: InfoWindow(title: "Lorem Ipsum"),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height - 230.0,
                  child: GoogleMap(
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    markers: _markers,
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 35.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints(),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        0.15,
                      ),
                      blurRadius: 25.0,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Where are you going to?",
                      style: _theme.textTheme.title,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Book on demand or pre-scheduled rides",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Hero(
                        tag: "search",
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Enter Destination",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.search,
                                color: _theme.primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
