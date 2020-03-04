import './Screens/EC/ec_organizing_members_screen.dart';
import './Screens/EC/ec_speakers_screen.dart';
import './Screens/EC/ec_themes_screen.dart';
import './Screens/FF/ff_organizing_members_screen.dart';
import './Screens/FF/ff_special_performance_screen.dart';
import './Screens/FF/more_about_compeiation.dart';
import './Screens/contact_us_screen.dart';
import './Screens/dev_info_screen.dart';
import './Screens/FF/ff_competition_screen.dart';
import './Screens/FF/ff_themes_screen.dart';
import './Screens/about_screen.dart';
import './Screens/FF/film_festival_home_screen.dart';
import './Screens/section_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/EC/editor_conclave_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Map<int, Color> primarySwatch = {
    50: Color.fromRGBO(0, 155, 139, .1),
    100: Color.fromRGBO(0, 155, 139, .2),
    200: Color.fromRGBO(0, 155, 139, .3),
    300: Color.fromRGBO(0, 155, 139, .4),
    400: Color.fromRGBO(0, 155, 139, .5),
    500: Color.fromRGBO(0, 155, 139, .6),
    600: Color.fromRGBO(0, 155, 139, .7),
    700: Color.fromRGBO(0, 155, 139, .8),
    800: Color.fromRGBO(0, 155, 139, .9),
    900: Color.fromRGBO(0, 155, 139, 1),
  };
  final MaterialColor primarySwatchCustom =
      MaterialColor(0xFF2D2D2D, primarySwatch);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASCO',
      theme: ThemeData(
        primarySwatch: primarySwatchCustom,
        accentColor: Colors.amberAccent,
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SectionsScreen(),
        EditorsConclaveHomeScreen.routeName: (ctx) =>
            EditorsConclaveHomeScreen(),
        FilmFestivalHomeScreen.routeName: (ctx) => FilmFestivalHomeScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        FilmFestivalThemeScreen.routeName: (ctx) => FilmFestivalThemeScreen(),
        FilmFestivalCompScreen.routeName: (ctx) => FilmFestivalCompScreen(),
        MoreAboutCompetition.routeName: (ctx) => MoreAboutCompetition(),
        EditorsConclaveThemeScreen.routeName: (ctx) =>
            EditorsConclaveThemeScreen(),
        EcSpeakersScreen.routeName: (ctx) => EcSpeakersScreen(),
        FfOrganizingMembersScreen.routeName: (ctx) =>
            FfOrganizingMembersScreen(),
        EcOrganizingMembersScreen.routeName: (ctx) =>
            EcOrganizingMembersScreen(),
        FilmFestivalSpecialPerformance.routeName: (ctx) =>
            FilmFestivalSpecialPerformance(),
        DevInfoScreen.routeName: (ctx) => DevInfoScreen(),
        ContactUsScreen.routeName: (ctx) => ContactUsScreen(),
      },
    );
  }
}
