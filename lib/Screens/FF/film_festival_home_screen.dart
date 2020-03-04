import '../../Screens/FF/ff_themes_screen.dart';

import '../../Widgets/ff_drawer.dart';
import 'film_festival_about.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class FilmFestivalHomeScreen extends StatelessWidget {
  static String routeName = "/film-festival-homescreen";
  final List<AssetImage> assetImages = [
    AssetImage("Assets/Images/film_festivel.jpg"),
    AssetImage("Assets/Images/specialp.jpg"),
    AssetImage("Assets/Images/yashpal.jpg"),
    AssetImage("Assets/Images/jaideep.jpg"),
    AssetImage("Assets/Images/swara.jpg"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Film Festival 3.0"),
      ),
      drawer: FilmFestivalDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Carousel(
                borderRadius: true,
                images: assetImages,
                radius: Radius.circular(0),
                boxFit: BoxFit.cover,
                dotBgColor: Colors.transparent,
                dotSize: 4,
              ),
            ),
            FilmFestivalAbout()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.assignment),
        label: Text("Register"),
        onPressed: ()=>Navigator.of(context).pushReplacementNamed(FilmFestivalThemeScreen.routeName),
      ),
    );
  }
}
