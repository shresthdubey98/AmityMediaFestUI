import '../Screens/contact_us_screen.dart';

import '../Screens/dev_info_screen.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/cupertino.dart';

import '../Widgets/section_card.dart';

import '../Models/section_card_model.dart';
import 'package:flutter/material.dart';

const SECTIONS_LIST = const [
  SectionItem("Editor's Conclave", "Assets/Images/conclave.jpg"),
  SectionItem("Film Festival", "Assets/Images/film_festivel.jpg"),
];

class SectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sections"),
        centerTitle: true,
      ),
      body: DoubleBackToCloseApp(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SectionCard(
                  title: "Editor's Conclave 1.0",
                  imageLocation: "Assets/Images/conclave.jpg",
                ),
                SectionCard(
                  title: "Film Festival 3.0",
                  imageLocation: "Assets/Images/film_festivel.jpg",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: FlatButton(
                child: Text(
                  "Contact us",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.lightBlueAccent,fontStyle: FontStyle.italic),
                ),
                onPressed: () => Navigator.of(context).pushNamed(
                  ContactUsScreen.routeName,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text(
                  "Developer Info.",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.black54),
                ),
                onPressed: () => Navigator.of(context).pushNamed(
                  DevInfoScreen.routeName,
                ),
              ),
            )
          ],
        ),
        snackBar: const SnackBar(
          content: Text('Tap back again to leave'),
        ),
      ),
    );
  }
}
