import 'package:flutter/material.dart';

class EditorsConclaveAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "ABOUT CONCLAVE 1.0",
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            'Amity school of communication, amity university Madhya Pradesh decided to organize'+
                'editor’s ‘conclave 1.0’. The role of media in a democratic system has been widely debated.'+
                'India has the largest democracy in the world and the media has a powerful presence in the'+
                'country. In recent times, Indian media has been subject to a lot of criticism for the manner in'+
                'which they have disregarded their obligation to social responsibility.'+
                'The fourth pillar of democracy, the media, has never hogged more limelight than it'+
                'has in the last few years in India. In the scramble for TRPs (television rating points), the line'+
                'between news and entertainment has become blurred. The media is not just the fourth pillar'+
                'but also the backbone of any democratic society.\n'+
                'This conclave is an opportunity for media/journalism students to listen and learn from'+
                'the media educators, journalists and industry experts. It will give them an opportunity to talk'+
                'one-to-one with top mentors in the industry who have decades of experience and considered'+
                'as the face of Indian journalism.\n'+
                'The conclave will discuss the various aspects and spans of journalism and media. the'+
                'deliberations of the conclave shall be aiming to enlighten the journalism students, faculties'+
                'and society.',
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
            "4th March, 2020\nAmity University, Madhya Pradesh",
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
