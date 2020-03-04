import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmFestivalThemeAboutPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageLocation;

  FilmFestivalThemeAboutPage({
    @required this.title,
    @required this.description,
    @required this.imageLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Theme"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                imageLocation,
                fit: BoxFit.cover,
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: Theme.of(context).textTheme.title.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.black45),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.assignment),
        label: Text("Register"),
        onPressed: (){
          print(title);
        },
      ),
    );
  }
}
