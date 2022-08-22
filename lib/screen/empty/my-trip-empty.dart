import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';


class My_Trip_Empty extends StatefulWidget {
  @override
  _My_Trip_EmptyState createState() => _My_Trip_EmptyState();
}

class _My_Trip_EmptyState extends State<My_Trip_Empty> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
          children: [
            Container(
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  Container(
                    height: displaySize(context).height / 1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: SvgPicture.asset(
                            ('assets/images/image-empty/suitcases.svg'),
                            height: displaySize(context).height * 0.2,
                            width: displaySize(context).width * 0.2,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            AppLocalizations.of(context).translate('Nohistorytrip'),
                            style: TextStyle(
                              fontSize: 22,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: displaySize(context).width * 0.55,
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('Allyourhistory'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: kGrey600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
