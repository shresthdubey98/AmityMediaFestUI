import '../Widgets/about_page.dart';

import '../Screens/EC/editor_conclave_home.dart';
import '../Screens/FF/film_festival_home_screen.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final String imageLocation;

  SectionCard({this.title, this.imageLocation});

  void launchIntent(BuildContext context) {
    if (title == "Film Festival 3.0") {
      //launch navigator
      Navigator.of(context).pushNamed(FilmFestivalHomeScreen.routeName);
    } else if (title == "Editor's Conclave 1.0") {
      //launch navigator
      Navigator.of(context).pushNamed(EditorsConclaveHomeScreen.routeName);
    } else if (title == "About\nAmity University") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AboutPage(
            title: "Amity University",
            imageLocation: "Assets/Images/university.jpg",
            description:
            'Amity University Madhya Pradesh has been established by the Ritnand Balved Education Foundation (RBEF), New Delhi which is a society registered under the Societies Registration Act, 1860. It was established with the view to promote professional, industry-oriented education in the state of Madhya Pradesh. Amity University Madhya Pradesh located on 100 acres of land opposite Gwalior Airport, impart modern, practical and research-based courses which will lead to the development of manpower which is employable and ready for industry. This in turn will drive the socio-economic upliftment of the region.',
          ),
        ),
      );
    } else if (title == "About\nASCO") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AboutPage(
            title: "ASCO",
            imageLocation: "Assets/Images/asco.jpg",
            description:
            'Amity School of Communication is a premier mass communication institute under the Amity Universe umbrella which offers professional courses at under-graduate and post graduate level. It has over 1700 students on its rolls. Supreme emphasis is laid in the institution on providing the most modern and sophisticated learning environment coupled with rich Indian heritage, value system and sanskars.  '  +
                '\n'  +
                'Amity School of Communication is a place where passion meets conviction. It is a place where a student attains theoretical and practical journalistic maturity develops intellectually and personally into an able individual having a broad worldview.  '  +
                '\n'  +
                'The guiding principle of amity is: "Where modernity blends with tradition". The teaching methodology is contemporary to keep the students and the staff abreast with the ever-changing scenario in the educational arena and media scenario, with a fine blend of traditional Indian ethics and value systems. Tradition gives us ethics and values and Modernity gives us opportunity to apply those values to move ahead and make our mark.  ' ,
          ),
        ),
      );
    }
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
                    height: 200,
                    child: Center(
                      child: Image.asset(
                        imageLocation,
                        fit: BoxFit.cover,
                        height: 200,
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
