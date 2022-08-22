import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_ui/screen/users/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
import '../home/home_screen.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kWhite,
        height: displaySize(context).height,
        child: Column(
          children: <Widget>[
            Container(
              width: displaySize(context).width,
              height: displaySize(context).height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lywing-slash-screen.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: displaySize(context).height * 0.35),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: AutoSizeText(
                            AppLocalizations.of(context).translate('login'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 36,
                              color: kWhite,
                            ),
                            minFontSize: 18,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Material(
                elevation: 10,
                shadowColor: kWhite,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)
                        .translate('enterYourEmail'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
              ),
              child: Material(
                elevation: 10,
                shadowColor: kWhite,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)
                        .translate('enterPassword?'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                left: 10,
                right: 10,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: kBlue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  minimumSize: Size(
                    500,
                    displaySize(context).height * 0.05,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context).translate('login'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: displaySize(context).height * 0.05,
              ),
              width: displaySize(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: displaySize(context).width * 0.45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.1,
                          ),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              right: displaySize(context).width * 0.1,
                            ),
                            child: SvgPicture.asset(
                              ('assets/images/google.svg'),
                              width: 15,
                              height: 15,
                            ),
                          ),
                          Text(
                            'Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                              ResponsiveFlutter.of(context).fontSize(1.9),
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: displaySize(context).width * 0.45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.1,
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              right: displaySize(context).width * 0.1,
                            ),
                            child: SvgPicture.asset(
                              ('assets/images/facebook.svg'),
                              width: 15,
                              height: 15,
                            ),
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize:
                              ResponsiveFlutter.of(context).fontSize(1.9),
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.02,
                bottom: displaySize(context).height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('don\'tHaveAccount?'),
                      style: TextStyle(
                        fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                        color: kGrey600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerNewAccount()),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('registerNewAccount'),
                      style: TextStyle(
                        color: kBlue,
                        fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
