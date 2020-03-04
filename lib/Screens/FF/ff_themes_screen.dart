import '../../Widgets/theme_card.dart';

import '../../Widgets/ff_drawer.dart';
import 'package:flutter/material.dart';

class FilmFestivalThemeScreen extends StatelessWidget {
  static String routeName = "/film-festival-theme-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes"),
      ),
      drawer: FilmFestivalDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ThemeCard(
              title: "WORLD PANORAMA",
              imageLocation: "Assets/Images/world_panorama.jpg",
              description:
                  'A non-competition section that presents outstanding feature-length fiction films by renowned' +
                      'filmmakers, showcasing contemporary international cinema to the audience, for discovering films' +
                      'that thrill and provoke curiosity.',
            ),
            ThemeCard(
              title: "INDIAN PANORAMA & RESTORED INDIAN CLASSICS",
              imageLocation: "Assets/Images/indian_films.jpg",
              description:
                  'Indian Panorama will showcase the best 20 contemporary Indian Feature and 15 Non-Feature Films' +
                      'over the years. This section endeavours to restore classics by great Indian filmmakers, to cherish our' +
                      'rich cinematic heritage.',
            ),
            ThemeCard(
              title: "MASTER FRAMES",
              imageLocation: "Assets/Images/master_frames.jpg",
              description:
              'A platform for new and old cinematic talents from all parts of the world, this section features 10 films' +
                  'by Master filmmakers of international repute.',
            ),
            ThemeCard(
              title: "INDIAN NEW WAVE CINEMA RETROSPECTIVE",
              imageLocation: "Assets/Images/indian_new_wave.jpg",
              description:
              'This selection includes 10 films produced in India from the late 1950s to the late 1970s that were' +
                  'distinct in the narrative, style and budget, compared to those being produced in the mainstream' +
                  'Bombay film industry.',
            )
          ],
        ),
      ),
    );
  }
}
