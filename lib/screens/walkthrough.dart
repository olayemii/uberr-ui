import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uberr/providers/walkthrough_provider.dart';
import 'package:uberr/widgets/walkthrough_stepper.dart';
import 'package:uberr/widgets/walkthrough_template.dart';

class WalkThrough extends StatelessWidget {
  final PageController _pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final WalkthroughProvider _walkthroughProvider =
        Provider.of<WalkthroughProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  onPageChanged: (int index) {
                    _walkthroughProvider.onPageChange(index);
                  },
                  children: <Widget>[
                    WalkThroughTemplate(
                      title: "Pay with your mobile",
                      subtitle:
                          "I know this is crazy, buy i tried something fresh, I hope you love it.",
                      image: Image.asset("assets/images/walkthrough1.png"),
                    ),
                    WalkThroughTemplate(
                      title: "Pay with your mobile",
                      subtitle:
                          "I know this is crazy, buy i tried something fresh, I hope you love it.",
                      image: Image.asset("assets/images/walkthrough2.png"),
                    ),
                    WalkThroughTemplate(
                      title: "Pay with your mobile",
                      subtitle:
                          "I know this is crazy, buy i tried something fresh, I hope you love it.",
                      image: Image.asset("assets/images/walkthrough3.png"),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: WalkthroughStepper(controller: _pageViewController),
                  ),
                  ClipOval(
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      child: IconButton(
                        icon: Icon(
                          Icons.trending_flat,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _pageViewController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        padding: EdgeInsets.all(13.0),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
