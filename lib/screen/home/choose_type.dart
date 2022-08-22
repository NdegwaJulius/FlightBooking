import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
import 'SysManager.dart';

class Choose_Type extends StatefulWidget {
  @override
  _Choose_TypeState createState() => _Choose_TypeState();
}

class _Choose_TypeState extends State<Choose_Type> {
  int typeIcon = 0;
  String selection = "Return";

  Future type_of_flight() async {
    final option = await showModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context) => Container(
        height: displaySize(context).height * 0.3,
        padding: const EdgeInsets.only(
          top: 25,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context).translate('Type'),
                style: TextStyle(
                  fontSize: 20,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  TypeTravel(FontAwesomeIcons.exchangeAlt, "Return", () {
                    typeIcon = 0;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('Return')));
                  }),
                  TypeTravel(FontAwesomeIcons.longArrowAltRight, "oneWay", () {
                    typeIcon = 1;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('oneWay')));
                  }),
                  TypeTravel(MaterialIcons.call_split, "multiCity", () {
                    typeIcon = 2;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('multiCity')));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    setState(() {
      selection = option;
      FileSystemManager.instance.type = typeIcon;
      FileSystemManager.instance.typestring = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        type_of_flight();
      },
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        primary: kGrey200,
        elevation: 0,
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              FileSystemManager.instance.type == 0
                  ? FontAwesomeIcons.exchangeAlt
                  : FileSystemManager.instance.type == 1
                  ? FontAwesomeIcons.longArrowAltRight
                  : MaterialIcons.call_split,
              size: 15,
              color: kGrey600,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              FileSystemManager.instance.type == 0
                  ? "Return"
                  : FileSystemManager.instance.typestring.toString(),
              style: TextStyle(
                fontSize: 15,
                color: kGrey600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Choose_Type1 extends StatefulWidget {
  @override
  _Choose_Type1State createState() => _Choose_Type1State();
}

class _Choose_Type1State extends State<Choose_Type1> {
  int typeIcon = 0;
  String selection = "Return";

  Future type_of_flight() async {
    final option = await showModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context) => Container(
        height: displaySize(context).height * 0.3,
        padding: const EdgeInsets.only(
          top: 25,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context).translate('Type'),
                style: TextStyle(
                  fontSize: 20,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  TypeTravel(FontAwesomeIcons.exchangeAlt, "Return", () {
                    typeIcon = 0;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('Return')));
                  }),
                  TypeTravel(FontAwesomeIcons.longArrowAltRight, "oneWay", () {
                    typeIcon = 1;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('oneWay')));
                  }),
                  TypeTravel(MaterialIcons.call_split, "multiCity", () {
                    typeIcon = 2;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('multiCity')));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    setState(() {
      selection = option;
      FileSystemManager.instance.type = typeIcon;
      FileSystemManager.instance.typestring = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        type_of_flight();
      },
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              FileSystemManager.instance.type == 0
                  ? FontAwesomeIcons.exchangeAlt
                  : FileSystemManager.instance.type == 1
                  ? FontAwesomeIcons.longArrowAltRight
                  : MaterialIcons.call_split,
              size: 15,
              color: kGrey600,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              FileSystemManager.instance.type == 0
                  ? "Return"
                  : FileSystemManager.instance.typestring.toString(),
              style: TextStyle(
                fontSize: 15,
                color: kGrey600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypeTravel extends StatelessWidget {
  IconData icon;
  String typeTravel;
  Function onPress;

  TypeTravel(this.icon, this.typeTravel, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          primary: kWhite,
          elevation: 0,
          side: BorderSide(
            width: 0.0,
            color: kWhite,
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(
                icon,
                color: kGrey500,
                size: 15,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context).translate('$typeTravel'),
                style: TextStyle(
                  fontSize: 15,
                  color: kBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
