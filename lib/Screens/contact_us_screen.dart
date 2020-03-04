import '../Widgets/orgInfocard.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  static String routeName = "/contact-us-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Column(children: <Widget>[
        OrgInfoCard(name: "Mr. Satnam Singh",phone: "9643148800",color: Colors.amber,),
        OrgInfoCard(name: "Mr Ashish Sharma",phone: "7018287446",color: Colors.cyan,),
      ],),
    );
  }
}
