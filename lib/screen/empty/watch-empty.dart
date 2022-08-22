import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
class Watch_Empty extends StatefulWidget {
  @override
  _Watch_EmptyState createState() => _Watch_EmptyState();
}

class _Watch_EmptyState extends State<Watch_Empty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          width: displaySize(context).width,
          height: displaySize(context).height * 0.13,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              width: 0.0,
              color: kWhite,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Text(
            'Watch',
            style: TextStyle(
              fontSize: 32,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: Container(
        width: displaySize(context).width,
        child: Column(
          children: <Widget>[
            // Container(
            //   alignment: Alignment.bottomLeft,
            //   width: displaySize(context).width,
            //   height: displaySize(context).height * 0.13,
            //   padding: const EdgeInsets.only(
            //     left: 10,
            //     right: 10,
            //   ),
            //   decoration: BoxDecoration(
            //     color: kWhite,
            //     border: Border.all(
            //       width: 0.0,
            //       color: kWhite,
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey,
            //         // spreadRadius: 6,
            //         blurRadius: 6,
            //         offset: Offset(0, 1), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   child: Text(
            //     'Watch',
            //     style: TextStyle(
            //       fontSize: 32,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            Container(
              height: displaySize(context).height / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: SvgPicture.asset(
                      ('assets/images/image-empty/search.svg'),
                      height: displaySize(context).height * 0.2,
                      width: displaySize(context).width * 0.2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      AppLocalizations.of(context).translate('Nosavedflight'),
                      style: TextStyle(
                        fontSize: 22,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: displaySize(context).width * 0.68,
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Allyoursavedflight'),
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
    );
  }
}
