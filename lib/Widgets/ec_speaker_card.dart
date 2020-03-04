import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class EcSpeakerCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  EcSpeakerCard({
    @required this.name,
    @required this.description,
    @required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      front: Card(
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
                        imageUrl,
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
                    child: Column(
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      back: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Container(
          color: Colors.black87,
          padding: EdgeInsets.all(20),
          height: 250,
          width: double.infinity,
          child: Center(
            child: Text(
              "$description",
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.white,fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    );
  }
}
