import '../Screens/FF/ff_theme_about_page.dart';
import 'package:flutter/material.dart';

class ThemeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageLocation;

  ThemeCard({
    @required this.title,
    @required this.description,
    @required this.imageLocation,
  });

  launchIntent(BuildContext context) {
    //launch intent
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => FilmFestivalThemeAboutPage(
      title: title,
      imageLocation: imageLocation,
      description:description,
    ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchIntent(context),
      borderRadius: BorderRadius.circular(15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    child: Center(
                      child: Image.asset(
                        imageLocation,
                        fit: BoxFit.cover,
                        height: 250,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    width: 280,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
