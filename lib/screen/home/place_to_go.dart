import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../common/app_localizations.dart';
import '../../common/constants/colors.dart';
import '../../common/constants/data.dart';
import '../../sizes_helpers.dart';
import 'SysManager.dart';

class Place_To_Go extends StatefulWidget {
  @override
  _Place_To_GoState createState() => _Place_To_GoState();
}

class _Place_To_GoState extends State<Place_To_Go> {
  final focus = FocusNode();
  final TextEditingController _typeAheadController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _typeAheadController.dispose();
  }

  void search_place() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: kGrey500,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey100,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: displaySize(context).width * 0.02,
                right: displaySize(context).width * 0.02,
              ),
              child: TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "City",
                  ),
                  // 2 controller khac nhau
                  controller: this._typeAheadController,
                ),
                suggestionsCallback: (pattern) {
                  return CitiesService.getSuggestions(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                transitionBuilder: (context, suggestionBox, controller) {
                  return suggestionBox;
                },
                onSuggestionSelected: (suggestion) {
                  this._typeAheadController.text = suggestion;
                  setState(() {
                    FileSystemManager.instance.chosen = true;
                    FileSystemManager.instance.typeAheadController =
                        this._typeAheadController.text;
                    print(FileSystemManager.instance.chosen);
                  });
                  Navigator.pop(context);
                },
                validator: (value) =>
                value.isEmpty ? 'Please select a city?' : null,
                onSaved: (value) => FocusScope.of(context).requestFocus(focus),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FileSystemManager.instance.chosen = false;
        search_place();
      },
      child: FileSystemManager.instance.chosen == false
          ? Text(
        AppLocalizations.of(context).translate('whereYouToGo?'),
        style: TextStyle(
          fontSize: 15,
          color: kGrey500,
        ),
      )
          : Text(
        FileSystemManager.instance.typeAheadController.toString(),
        style: TextStyle(
          fontSize: 15,
          color: kGrey500,
        ),
      ),
    );
  }
}
// mà màn 1 ý sao nó khong quay icon nữa
