import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrgInfoCard extends StatelessWidget {
  final String name;
  final String phone;
  final Color color;

  OrgInfoCard({this.name,this.phone, this.color});
  _launchEmail() async {
    String url = 'tel:'+phone;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 120,
          child: Row(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 20,
                color: color,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.blueGrey),
                  ),
                  Text(
                    "Amity University, Madhya Pradesh",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.black38, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  phone!=null?Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Phone:",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(color: Colors.black38, fontSize: 20),
                      ),
                      SizedBox(width: 5,),
                      InkWell(onTap: _launchEmail,child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          phone,
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(color: Colors.blue,fontSize: 20),
                        ),
                      ),)
                    ],
                  ):SizedBox(),
                ],
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ));
  }
}
