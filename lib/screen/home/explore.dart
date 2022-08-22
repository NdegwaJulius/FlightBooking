import 'package:flight_booking_ui/common/constants/colors.dart';
import 'package:flight_booking_ui/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../common/app_localizations.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List city = ["Singapope", "Singapope", "Singapope", "Singapope"];

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
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Text(
            AppLocalizations.of(context).translate('Watch'),
            style: TextStyle(
              fontSize: 32,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                for (var index in city)
                  Container(
                    margin: EdgeInsets.only(
                      left: displaySize(context).width * 0.03,
                      right: displaySize(context).width * 0.03,
                      top: displaySize(context).height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 0.0,
                        color: kWhite,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          // spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(1.0),
                          side: BorderSide(
                            width: 0,
                            color: kWhite,
                          ),
                        ),
                        elevation: 0,
                        padding: EdgeInsets.only(
                          left: displaySize(context).width * 0.04,
                          right: displaySize(context).width * 0.04,
                          top: displaySize(context).height * 0.01,
                          bottom: displaySize(context).height * 0.02,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    '$index',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    child: Icon(
                                      MaterialIcons.more_horiz,
                                      color: kGrey400,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '${AppLocalizations.of(context).translate('from')} Hồ Chí Minh ${AppLocalizations.of(context).translate('city')}',
                              style: TextStyle(
                                fontSize: 11,
                                color: kGrey600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/icons/explore/date-2.png'),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Web, Apri 16 - Thu Apr 18',
                                    style: TextStyle(
                                      fontSize: 12,
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
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
