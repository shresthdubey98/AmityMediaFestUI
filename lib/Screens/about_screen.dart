import '../Widgets/ec_drawer.dart';
import '../Widgets/ff_drawer.dart';
import '../Widgets/section_card.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{

  static String routeName = "/about-screen";
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      drawer: args=="ff"?FilmFestivalDrawer():EditorsConclaveDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: (){
                print("hello");
              },
              child: SectionCard(
                title: "About\nAmity University",
                imageLocation: "Assets/Images/university.jpg",
              ),
            ),
            SectionCard(
              title: "About\nASCO",
              imageLocation: "Assets/Images/asco.jpg",
            ),
          ],
        ),
      ),
    );
  }
}