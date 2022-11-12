import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'AccountPage.dart';
import 'DarkTheme.dart';
import 'AboutUs.dart';
import 'Feedback.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
              child: ListView(
        padding: EdgeInsets.all(24),
        children: [
          ListTile(
            leading: Text(
              "Settings",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SettingsGroup(
            title: 'GENERAL',
            children: <Widget>[
              AccountPage(),
              DarkTheme(),
              /*buildAboutUs(),*/
            ],
          ),
          SettingsGroup(
            title: 'Feedback',
            children: <Widget>[
              const SizedBox(height: 8),
              buildSendfeedback(context),
            ],
          ),
          SettingsGroup(
            title: 'About Us',
            children: <Widget>[
              const SizedBox(height: 8),
              AboutUs(),
            ],
          ),
        ],
      )));

  Widget buildSendfeedback(context) => SimpleSettingsTile(
        title: 'Send Feedback',
        subtitle: '',
        leading: Icon(Icons.feedback, color: Colors.amber),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UI22(),
              ));
        },
      );
}
