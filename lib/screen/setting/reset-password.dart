import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
import 'form-reset-password.dart';

class Reset_Password extends StatefulWidget {
  @override
  _Reset_PasswordState createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('ResetPassword'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: displaySize(context).width * 0.06,
          right: displaySize(context).width * 0.06,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
            ),
            child: AutoSizeText(
              AppLocalizations.of(context).translate('Toverifyyourindentity'),
              style: TextStyle(
                color: kGrey400,
              ),
              presetFontSizes: [15, 13, 10, 7],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 11,
                      color: kGrey600,
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kGrey500,
                          ),
                        ),
                        hintText: 'email@example.com'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.04,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Form_Reset_Password()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: kBlue,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(7.0),
                ),
                minimumSize: Size(
                  500,
                  displaySize(context).height * 0.05,
                ),
              ),
              child: AutoSizeText(
                AppLocalizations.of(context).translate('Next'),
                style: TextStyle(
                  color: kWhite,
                ),
                presetFontSizes: [15, 12, 9, 6],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.04,
            ),
            child: InkWell(
              onTap: () {},
              child: AutoSizeText(
                AppLocalizations.of(context)
                    .translate('Entercurrentpasswordtoverify'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlue,
                ),
                presetFontSizes: [15, 13, 10, 7],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
