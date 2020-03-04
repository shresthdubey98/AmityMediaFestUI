import '../../Widgets/ff_drawer.dart';
import 'package:flutter/material.dart';

class FilmFestivalSpecialPerformance extends StatelessWidget {
  static String routeName = '/ff-special-performance-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Performance"),
      ),
      drawer: FilmFestivalDrawer(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "Assets/Images/specialp.jpg",
                    width: 270,
                  ),
                ),
                Text(
                  "Shri Sanjay Rajoura",
                  style: Theme.of(context).textTheme.title.copyWith(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "Stand Up Artist & Actor",
                  style: Theme.of(context).textTheme.subhead.copyWith(
                      fontFamily: "Raleway",
                      color: Colors.black54),
                ),
                Text(
                  "\n7:00pm\nB-Block Auditorium",
                  style: Theme.of(context).textTheme.subhead.copyWith(
                      fontFamily: "Raleway",
                      color: Colors.redAccent),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Limited Tickets are Available for Standup Comedy Show on Payement \n\nVIP PASS                     INR 500 \nNORMAL PASS           INR 300",
                style: Theme.of(context).textTheme.subhead.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ),
            FloatingActionButton.extended(onPressed: (){
              //todo:implement special performance registration
            }, label: Text("Register Now"),icon: Icon(Icons.assignment),),
          ],
        ),
      ),
    );
  }
}
