import '../../Widgets/ec_speaker_card.dart';

import '../../Widgets/ec_drawer.dart';
import 'package:flutter/material.dart';

class EcSpeakersScreen extends StatelessWidget {
  static String routeName = "/ec-speakers-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speakers"),
      ),
      drawer: EditorsConclaveDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            EcSpeakerCard(
              name: "Ms Aruna Roy",
              imageUrl: "Assets/Images/arunaroy.jpg",
              description: "RTI & Social Activist, Ramon Magsaysay Award winner(2020)",
            ),
            EcSpeakerCard(
              name: "Shri Paranjoy Guha Thakurata",
              imageUrl: "Assets/Images/paranjoy.jpg",
              description: "Sr. Journalist, Media Analyst & Educator",
            ),
            EcSpeakerCard(
              name: "Shri Rajdeep Desa",
              imageUrl: "Assets/Images/rajdeep.jpg",
              description: "Sr. Editor, India Today Group",
            ),
            EcSpeakerCard(
              name: "Shri Om Thanvi",
              imageUrl: "Assets/Images/omthav.jpg",
              description: "Vice-Chancellor HJU of JMC, Jaipur & Sr. Journalist, Former Editor Jansatta",
            ),
            EcSpeakerCard(
              name: "Shri Jwari Mal Parakh",
              imageUrl: "Assets/Images/jawari.jpg",
              description: "Retd. Professor, Writer & Media Educator",
            ),
            EcSpeakerCard(
              name: "Shri Jagdishwar Chaturvedi",
              imageUrl: "Assets/Images/jagdish.jpg",
              description: "Retd. Professor, Writer & Media Educator",
            ),
            EcSpeakerCard(
              name: "Shri Prabir Purkaysatha",
              imageUrl: "Assets/Images/prabir.jpg",
              description: "Founder & Chief Editor, News Click",
            ),
            EcSpeakerCard(
              name: "Ms T K Rajlakshmi",
              imageUrl: "Assets/Images/rajlakshmi.jpg",
              description: "Sr. Deputy Editor, The Frontline Magazine",
            ),
            EcSpeakerCard(
              name: "Ms Arfa Khanum",
              imageUrl: "Assets/Images/arfa.jpg",
              description: "Sr. Journalist, The Wire",
            ),
            EcSpeakerCard(
              name: "Ms Sarvpriya Sangwan",
              imageUrl: "Assets/Images/sarvapriya.jpg",
              description: "Broadcast Journalist, BBC Hindi (Shri Ramnath Goenka Red Ink Awardee",
            ),
            EcSpeakerCard(
              name: "Shri Rohit Khanna",
              imageUrl: "Assets/Images/rohit.jpg",
              description: "Senior Executive Editor The Quint",
            ),
          ],
        ),
      ),
    );
  }
}
