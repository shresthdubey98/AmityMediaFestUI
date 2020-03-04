import '../../Widgets/ec_drawer.dart';
import 'package:flutter/material.dart';

class EcOrganizingMembersScreen extends StatelessWidget {
  static String routeName = "/Ec-org-members";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EditorsConclaveDrawer(),
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
