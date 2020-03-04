import '../Screens/FF/ff_organizing_members_screen.dart';
import '../Screens/FF/ff_special_performance_screen.dart';
import '../Screens/dev_info_screen.dart';

import '../Screens/FF/ff_competition_screen.dart';

import '../Screens/about_screen.dart';
import '../Screens/FF/ff_themes_screen.dart';
import '../Screens/FF/film_festival_home_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class FilmFestivalDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function function) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        "$title",
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: function,
    );
  }

  void callForExit(BuildContext context) {
    // Navigator.of(context).pushNamed(MealDetailScreen.routeName, arguments: id);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(
            "EXIT ?",
            style: Theme.of(context).textTheme.title,
          ),
          content: Text("Are you sure you want to exit?"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Yes"),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 130,
              color: Color(0xFFffffff),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset("Assets/Images/amity_logo.png")),
//                Text(
//                  "Amity University",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      fontSize: 24,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.orange,
//                      fontFamily: 'RobotoCondensed'),
//                ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: FlatButton(child: Text("Developer Info.",style: Theme.of(context).textTheme.title.copyWith(color: Colors.black54),),onPressed: (){
                Navigator.of(context).pushNamed(DevInfoScreen.routeName);
              },),
              height: 50,
            ),
            buildListTile("Home", Icons.home, () {
              Navigator.of(context)
                  .pushReplacementNamed(FilmFestivalHomeScreen.routeName);
            }),
            Divider(),
            buildListTile("About Us", Icons.info_outline, () {
              Navigator.of(context).pushReplacementNamed(AboutScreen.routeName,arguments: "ff");
            }),
            Divider(),
            buildListTile("Themes", Icons.theaters, () {
              Navigator.of(context)
                  .pushReplacementNamed(FilmFestivalThemeScreen.routeName);
            }),
            Divider(),
            buildListTile("Competition", Icons.flag, () {
              Navigator.of(context).pushReplacementNamed(FilmFestivalCompScreen.routeName);
            }),
            Divider(),
            buildListTile("Special Performance", Icons.star, () {
              Navigator.of(context).pushReplacementNamed(FilmFestivalSpecialPerformance.routeName);
            }),
            Divider(),
            buildListTile("Organizing Member", Icons.group, () {
              Navigator.of(context)
                  .pushReplacementNamed(FfOrganizingMembersScreen.routeName);
            }),
            Divider(),
            buildListTile("Exit", Icons.exit_to_app, () {
              callForExit(context);
            }),
          ],
        ),
      ),
    );
  }
}
