import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
import 'login.dart';

class registerNewAccount extends StatefulWidget {
  @override
  _registerNewAccountState createState() => _registerNewAccountState();
}

class _registerNewAccountState extends State<registerNewAccount> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // height: displaySize(context).height,
        color: kWhite,
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
                        top: displaySize(context).height * 0.34),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            AppLocalizations.of(context).translate('register'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                              ResponsiveFlutter.of(context).fontSize(5),
                              color: kWhite,
                            ),
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
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: displaySize(context).height * 0.02,
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
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: displaySize(context).height * 0.02,
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
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.02,
                left: 10,
                right: 10,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 120, 255, 1),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  minimumSize: Size(
                    500,
                    40,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context).translate('register'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: kWhite,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.01,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context)
                        .translate('alreadyHaveAnAccount?'),
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('login'),
                      style: TextStyle(
                        color: kBlue,
                        fontSize: 13,
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
