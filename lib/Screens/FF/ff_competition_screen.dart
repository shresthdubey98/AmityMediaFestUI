import '../../Screens/FF/more_about_compeiation.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../../Widgets/ff_drawer.dart';
import 'package:flutter/material.dart';

class FilmFestivalCompScreen extends StatelessWidget {
  static String routeName = "/ff-competititon-screen";
  final List<AssetImage> assetImages = [
    AssetImage("Assets/Images/specialp.jpg"),
    AssetImage("Assets/Images/yashpal.jpg"),
    AssetImage("Assets/Images/jaideep.jpg"),
    AssetImage("Assets/Images/swara.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Competition"),
      ),
      drawer: FilmFestivalDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: Text(
                  "A 24 HOURS FILM MAKING COMPETITION",
                  style: Theme.of(context).textTheme.headline.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(),
              Text(
                'Festival is also featuring “A 24 Hours Film Making Competition” where teams would be given a topic for film 24hrs before the festival date and they would have to submit the final product on the day of festival. The theme for which will be decided by the respected members. For the competition, students would be requested to prepare a team before hand and the venue will be Amity University Madhya Pradesh. By doing so, different aspects of the university will be highlighted and the institutes will also get media exposure.',
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.black45),
                textAlign: TextAlign.justify,
              ),
              Divider(),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "GUESTS FOR THE FESTIVAL",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Carousel(
                  borderRadius: true,
                  images: assetImages,
                  radius: Radius.circular(0),
                  boxFit: BoxFit.cover,
                  dotBgColor: Colors.transparent,
                  dotSize: 4,
                  dotIncreasedColor: Theme.of(context).accentColor,
                ),
              ),
              Divider(),
              Text(
                "Register now and become a part of this phenomenal event. Learn a youth network from across the country and learn from each other’s experiences on Journalism.",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.red),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    textColor: Colors.black45,
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text("REGISTER NOW"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    textColor: Colors.black45,
                    onPressed: () => Navigator.of(context)
                        .pushNamed(MoreAboutCompetition.routeName),
                    child: Text("Know More"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
