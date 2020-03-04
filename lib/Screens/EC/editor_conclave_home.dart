import '../../Widgets/ec_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import './ec_about.dart';


class EditorsConclaveHomeScreen extends StatelessWidget {
  final List<AssetImage> assetImages = [
    AssetImage("Assets/Images/conclave.jpg"),
    AssetImage("Assets/Images/arunaroy.jpg"),
    AssetImage("Assets/Images/paranjoy.jpg"),
    AssetImage("Assets/Images/rajdeep.jpg"),
    AssetImage("Assets/Images/omthav.jpg"),
    AssetImage("Assets/Images/jawari.jpg"),
    AssetImage("Assets/Images/jagdish.jpg"),
    AssetImage("Assets/Images/prabir.jpg"),
    AssetImage("Assets/Images/rajlakshmi.jpg"),
    AssetImage("Assets/Images/arfa.jpg"),
    AssetImage("Assets/Images/sarvapriya.jpg"),
    AssetImage("Assets/Images/rohit.jpg"),
  ];
  static String routeName = "/editor-conclave-homescreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editor's Conclave 1.0"),
      ),
      drawer: EditorsConclaveDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Carousel(
                borderRadius: true,
                images: assetImages,
                radius: Radius.circular(0),
                boxFit: BoxFit.cover,
                dotBgColor: Colors.transparent,
                dotSize: 4,
              ),
            ),
            EditorsConclaveAbout()
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.assignment),
          label: Text("Register"),
          onPressed: ()=>Navigator.of(context).pushReplacementNamed(""),
        ),
    );
  }
}
