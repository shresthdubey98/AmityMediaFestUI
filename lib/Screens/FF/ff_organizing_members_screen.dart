import '../../Widgets/ff_drawer.dart';
import 'package:flutter/material.dart';

class FfOrganizingMembersScreen extends StatelessWidget {
  static String routeName = "/ff-org-members";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: FilmFestivalDrawer(),
      appBar: AppBar(
        title: Text("Organizing Members"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Image.asset(
          "Assets/Images/orgmem.png",
          width: double.infinity,
        ),
      ),
    );
  }
}
