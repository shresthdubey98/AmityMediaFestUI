import '../Widgets/orgInfocard.dart';

import '../Widgets/devInfocard.dart';
import 'package:flutter/material.dart';

class DevInfoScreen extends StatelessWidget {
  static String routeName = '/dev-info-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developers Info."),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DevInfoCard(
              name: "Mr.Dinesh Sharma",
              position: "Application Developer",
              branch: "Asst Professor ASET\nCordinator(Amity Coding Club)",
              email: "dsharma@gwa.amity.edu",
              color: Colors.amber,
            ),
            DevInfoCard(
              name: "Mr.Shresth Dubey",
              position: "Application Developer",
              branch: "ASET",
              email: "contact@shresthdubey.me",
              color: Colors.cyan,
            ),
            DevInfoCard(
              name: "Mr.Gaurav Kaushik",
              position: "Broucher Designer",
              branch: "Asst Professor ASAP",
              color: Colors.green,
            ),
            DevInfoCard(
              name: "Mr.Vishnu Upadhyay",
              position: "Broucher Designer",
              branch: "ASAP",
              color: Colors.redAccent,
            ),
            DevInfoCard(
              name: "Mr.Abhay Singh Tomar",
              position: "Broucher Designer",
              branch: "ASCO",
              color: Colors.deepPurple,
            ),
            OrgInfoCard(color: Colors.redAccent,name: "Siddharth Mishra\nASAP",),
            OrgInfoCard(color: Colors.tealAccent,name: "Kinjalk Chauhan\nASAP",),
            OrgInfoCard(color: Colors.yellowAccent,name: "Manish Chitranshi\nASAP",),
          ],
        ),
      ),
    );
  }
}
