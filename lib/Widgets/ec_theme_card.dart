import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class EcThemeCard extends StatelessWidget {
  final String title;
  final String description;

  EcThemeCard({
    @required this.title,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
        margin: EdgeInsets.all(20),
        elevation: 5,
        child: Container(
          height: 250,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.brown,fontWeight: FontWeight.bold,fontFamily: "Raleway"),
                ),
                RaisedButton(onPressed: (){
                  //todo:register for ec event
                },child: Text("Register"),color: Theme.of(context).accentColor,),
                Text("Tap for more information...")
              ],
            ),
          ),
        ),
      ),
      back: Card(
        margin: EdgeInsets.all(20),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(20),
          height: 250,
          width: double.infinity,
          child: Center(
            child: Text(
              "$description",
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
