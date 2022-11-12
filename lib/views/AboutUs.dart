import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'About Us',
        subtitle: '',
        leading: Icon(Icons.account_box, color: Colors.amber),
        child: SettingsScreen(
          title: 'About Us',
          children: <Widget>[
            buildAboutUs(),
          ],
        ),
      );
  Widget buildAboutUs()=>new Container(
      margin: EdgeInsets.only(left: 20,right: 20), width:60, child:
  new Column(children: <Widget>[
    new Padding(padding: EdgeInsets.only(top: 40), child:
    new Text(
        "Hey there! We’re a group of five undergrad students who worked on this app as a part of their college project. It was really difficult for such noobs to be doing something as great as this. We know it is not perfect but we tried our best. We’re willing to improve our app. Please drop your feedback and suggestions at group4@msijanakpuri.com We hope you don’t face any issues in the app but if you do, feel free to let us know so that we can fix and improve. Cheers!",
        style: TextStyle(fontSize: 20)),
    )
  ])
  );
  /*SimpleSettingsTile(
    leading:Icon(Icons.dark_mode,color:Colors.amber),
    title: 'Dark Mode',
  );*/
}
  /*const AboutUs({Key key}):super(key:key);
  Widget build(BuildContext context) {
    double _contentSize = MediaQuery.of(context).size.width*0.4 - 20;
    return new Container(
        margin: EdgeInsets.only(left: 20), width: _contentSize, child:
    new Column(children: <Widget>[
      new Padding(padding: EdgeInsets.only(top: 10), child:
      new Text(
          "About us Hey there! We’re a group of five undergrad students who worked on this app as a part of their college project. It was really difficult for such noobs to be doing something as great as this. We know it is not perfect but we tried our best. We’re willing to improve our app. Please drop your feedback and suggestions at group4@msijanakpuri.comWe hope you don’t face any issues in the app but if you do, feel free to let us know so that we can fix and improve. Cheers!",
          style: TextStyle(fontSize: 12))
      )
    ])
    );
  }
}*/
