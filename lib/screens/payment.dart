import 'package:flutter/material.dart';
import 'package:uberr/models/debitcard.dart';
import 'package:uberr/widgets/app_drawer.dart';
import 'package:uberr/widgets/card_container.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    final List<DebitCard> _cards = [
      DebitCard(
        expiry: "09/25",
        lastDigits: "5697",
        logo: Image.asset(
          "assets/images/mastercard.png",
        ),
      ),
      DebitCard(
        expiry: "10/27",
        lastDigits: "3802",
        logo: Image.asset("assets/images/visa.png"),
      ),
    ];
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Payment methods",
                style: _theme.textTheme.title,
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                margin: EdgeInsets.all(0.0),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                  leading: Icon(
                    Icons.credit_card,
                    size: 50.0,
                    color: _theme.accentColor,
                  ),
                  title: Text(
                    "Cash payment",
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Default method",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: true,
                      activeColor: _theme.primaryColor,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Choose a different payment method from a list of already setup payment methods.",
                style: _theme.textTheme.subtitle.merge(
                  TextStyle(fontSize: 14.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Column(
                  children: _cards.map(
                    (card) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 5.0,
                        ),
                        child: CardContainer(cardDetail: card),
                      );
                    },
                  ).toList(),
                ),
              ),
              Container(
                height: 45.0,
                child: FlatButton(
                  color: _theme.primaryColor,
                  onPressed: () {},
                  child: Text(
                    "ADD PAYMENT METHOD",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
