import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iso_countries/iso_countries.dart';

class SelectCountry extends StatefulWidget {
  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  final List<String> _alphabets = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "Y",
    "Z"
  ];
  List<String> _countries;

  Future<List<Country>> _getCountries() async {
    try {
      return await IsoCountries.iso_countries;
    } on PlatformException {
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    _getCountries().then(
      (result) => this.setState(
        () {
          _countries = result.map((country) => country.name).toList();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    final ScrollController _listController = ScrollController();
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
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Select Country",
                      style: _theme.textTheme.title.merge(
                        TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    color: Color(0xffEEF1F8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search...",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  _countries == null
                      ? CircularProgressIndicator()
                      : Flexible(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ListView.builder(
                                  controller: _listController,
                                  itemCount: _countries.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      height: 60.0,
                                      child: ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 0.0, vertical: 0.0),
                                        title: Wrap(
                                          children: <Widget>[
                                            Text(
                                              _countries[index].toUpperCase(),
                                              style:
                                                  _theme.textTheme.title.merge(
                                                TextStyle(fontSize: 18.0),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Column(
                                children: _alphabets.map(
                                  (String alphabet) {
                                    return GestureDetector(
                                      onTap: () {
                                        int index =
                                            _countries.indexWhere((country) {
                                                  return country.startsWith(
                                                      alphabet.toUpperCase());
                                                }) ??
                                                0;
                                        _listController.jumpTo(
                                          index * 60.0,
                                        );
                                      },
                                      child: Text(
                                        alphabet,
                                        style: TextStyle(
                                          color: _theme.primaryColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    );
                                  },
                                ).toList(),
                              )
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
