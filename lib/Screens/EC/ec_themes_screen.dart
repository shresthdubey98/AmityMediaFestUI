import '../../Widgets/ec_drawer.dart';
import '../../Widgets/ec_theme_card.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class EditorsConclaveThemeScreen extends StatelessWidget {
  static String routeName = "/ec-theme-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Themes"),
        ),
        drawer: EditorsConclaveDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              EcThemeCard(title: "INAUGURAL SESSION",description: 'The Business of '+
                  'Information:'+
                  ' Privacy vs. Right to '+
                  'Know',),
              EcThemeCard(title: "PLENARY-I",description: 'The Business of '+
                  'Media in 21st '
                  'Century: '
                  'Governance, Credibility, '
                  'Accountability and '
                  'Social '
                  'Responsibility ',),
              EcThemeCard(title: "PLENARY-II",description: "Media Industry Ethics and Practices: The Changing Scenario",),
              EcThemeCard(title: "PLENARY-III",description: "New Forms and Practices of Journalism: Digital Media & Citizen Journalism",),
            ],
          ),
        ));
  }
}
