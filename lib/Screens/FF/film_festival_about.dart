import 'package:flutter/material.dart';

class FilmFestivalAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "ABOUT FILM FESTIVAL 3.0",
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            'The 3rd edition of the Amity Film Festival of Amity School of Communication, Amity University' +
                'Madhya Pradesh is to be held on the 05th of March 2020 at Gwalior, Madhya Pradesh.' +
                'The festival will see a variety of films in many languages from all around the world coming together' +
                'under a single roof. The Festival will witness over 50 movies from different genres. It includes feature' +
                'films, documentaries and short movies.' +
                '' +
                'The Festival will be opening on the 5th March 2020 with the screening of “LIFE IS BEUTIFUL” (La' +
                'vita è bella) is a 1997 Italian comedy-drama film directed by and starring Roberto Benigni, who' +
                'co-wrote the film with Vincenzo Cerami. Benigni plays Guido Orefice, a Jewish Italian bookshop' +
                'owner, who employs his fertile imagination to shield his son from the horrors of internment in a Nazi' +
                'concentration camp. The film was partially inspired by the book In the End, I Beat Hitler by Rubino' +
                'Romeo Salmonì and by Benigni’s father, who spent two years in a German labour camp during' +
                'World War II.' +
                'The festival is open to all the students (National, International) both from School and Colleges/' +
                'Universities.',
            style: Theme.of(context).textTheme.subhead.copyWith(
                  color: Colors.black54,
                ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "DATE AND LOCATION ⤵",
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Text(
            "5th March, 2020\nAmity University, Madhya Pradesh",
            style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.black,
                ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 60,)
        ],
      ),
    );
  }
}
