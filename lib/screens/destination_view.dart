import 'package:flutter/material.dart';
import 'package:uberr/models/destination.dart';
import 'package:uberr/models/place.dart';
import 'package:uberr/styles/colors.dart';

class DestinationView extends StatefulWidget {
  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  List<Destination> _destinations = [
    Destination(
      destinationText: "No 21 Opeloyeru Street",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.map,
                size: 30.0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: dbasicDarkColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Column(
                        children: _destinations
                            .map(
                              (destination) => Column(
                                children: <Widget>[
                                  Text(
                                    ".\n.\n.\n.\n.",
                                    style: TextStyle(
                                        height: 0.4,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 3.0,
                                    ),
                                    width: 15.0,
                                    height: 15.0,
                                    decoration: BoxDecoration(
                                      color: _theme.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[400],
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[400],
                              ),
                            ),
                            contentPadding: EdgeInsets.only(bottom: 10.0),
                          ),
                        ),
                        Column(
                          children: _destinations
                              .asMap()
                              .map((int index, Destination destination) {
                                bool lastIndex =
                                    index + 1 == _destinations.length;
                                return MapEntry(
                                    index,
                                    TextFormField(
                                      decoration: InputDecoration(
                                        isDense: true,
                                        enabledBorder: lastIndex
                                            ? InputBorder.none
                                            : UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                        focusedBorder: lastIndex
                                            ? InputBorder.none
                                            : UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey[400],
                                                ),
                                              ),
                                        contentPadding:
                                            EdgeInsets.only(top: 15.0),
                                        hintText: lastIndex
                                            ? "Enter Destination"
                                            : "",
                                        suffixIcon: lastIndex
                                            ? IconButton(
                                                onPressed: () {
                                                  this.setState(() {
                                                    _destinations.add(
                                                      Destination(
                                                        destinationText: "",
                                                      ),
                                                    );
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                ),
                                              )
                                            : IconButton(
                                                onPressed: () {
                                                  print(index);
                                                  print(_destinations);
                                                },
                                                icon: Icon(
                                                  Icons.cancel,
                                                ),
                                              ),
                                      ),
                                    ));
                              })
                              .values
                              .toList(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    leading: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: Icon(
                        Icons.home,
                        size: 20.0,
                      ),
                    ),
                    title: Text("Home"),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    leading: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: Icon(
                        Icons.work,
                        size: 20.0,
                      ),
                    ),
                    title: Text("Work"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  _recentPlaces()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _recentPlaces() {
    final ThemeData _theme = Theme.of(context);
    List<Place> _places = [
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
    ];

    return SingleChildScrollView(
      child: Column(
        children: _places.map((place) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                leading: Icon(
                  Icons.location_on,
                  color: _theme.primaryColor,
                ),
                title: Text(place.name),
                subtitle: Text(place.address),
              ),
              Divider(
                height: 0.0,
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
