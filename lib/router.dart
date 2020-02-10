import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberr/screens/country_select.dart';
import 'package:uberr/screens/destination_view.dart';
import 'package:uberr/screens/home.dart';
import 'package:uberr/screens/login.dart';
import 'package:uberr/screens/otp_verification.dart';
import 'package:uberr/screens/phone_registration.dart';
import 'package:uberr/screens/register.dart';
import 'package:uberr/screens/unauth.dart';
import 'package:uberr/screens/update_information.dart';
import 'package:uberr/screens/walkthrough.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";
const String LoginRoute = "login";
const String PhoneRegisterRoute = "phone-register";
const String OtpVerificationRoute = "otp-verification";
const String UpdateInformationRoute = "update-information";
const String SelectCountryRoute = "country-select";
const String HomepageRoute = "homepage";
const String DestinationRoute = "destination";
const String UnAuthenticatedPageRoute = "unauth";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    case LoginRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Login());
    case PhoneRegisterRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => PhoneRegistration());
    case OtpVerificationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => OtpVerification());
    case UpdateInformationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => UpdateInformation());
    case SelectCountryRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SelectCountry());
    case HomepageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Homepage());
    case DestinationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => DestinationView());
    case UnAuthenticatedPageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => UnAuth());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
