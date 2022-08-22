import 'package:flight_booking_ui/screen/setting/profile_setting.dart';
import 'package:flight_booking_ui/screen/setting/terms-conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../sizes_helpers.dart';
import '../setting/customer-support.dart';
import '../setting/edit_profile.dart';
import '../setting/my-booking.dart';
import '../setting/my-cards.dart';
import '../setting/passenger.dart';
import '../setting/saved-flights.dart';
import '../setting/setting.dart';
import 'notifications.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: kWhite,
              padding: EdgeInsets.only(
                top: displaySize(context).height * 0.04,
                bottom: displaySize(context).height * 0.01,
                left: displaySize(context).width * 0.02,
                right: displaySize(context).width * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Ten va nut
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Ha Van Long',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Edit_Profile()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: kWhite,
                                  ).merge(
                                    ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                            if (states
                                                .contains(MaterialState.pressed))
                                              return kWhite;
                                            return null; // Defer to the widget's default.
                                          }),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Dia chi
                        Container(
                          child: Text(
                            'HaNoi, VietNam',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Edit_Profile()),
                      );
                    },
                    child: ClipOval(
                      child: Image(
                        width: displaySize(context).width * 0.15,
                        height: displaySize(context).height * 0.15,
                        image: AssetImage('assets/images/Avatar.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
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
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.account_circle,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Profile'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Profile_Setting()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.notifications,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Notifications'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifications()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.confirmation_number,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('MyBooking'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_Booking()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.perm_identity,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Passengersinfo'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Passengers()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.credit_card,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('MyCards'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_Cards()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.star_border,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Savedflights'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Saved_Flights()),
                                  );
                                },
                              ),
                            ],
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
                top: 30,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
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
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.help,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('CustomerSupport'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Customer_Support()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.find_in_page,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Followus'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                  // );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.description,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('TermsConditions'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Terms_Conditions()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.security,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Guarantee'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                  // );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.settings,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                  Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Settings'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Settings()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
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
