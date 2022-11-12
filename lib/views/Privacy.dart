import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:hamburger_flutter/views/Settings.dart';
import 'package:hamburger_flutter/views/AccountPage.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.amber,
          elevation: 2.0,
          centerTitle: true,
          title: Text(
            "Privacy Policy",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 5.0,
              ),
              Text(
                "We reserve the right to make changes to this Privacy Policy at any time and for any reason. We will alert you about any changes by updating the “Last updated” date of this Privacy Policy. You are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Privacy Policy by your continued use of the Application after the date such revised Privacy Policy is posted. This Privacy Policy does not apply to the third-party online/mobile store from which you install the Application or make payments, including any in-game virtual items, which may also collect and use data about you. We are not responsible for any of the data collected by any such third party Push NotificationsWe may request to send you push notifications regarding your account or the Application. If you wish to opt-out from receiving these types of communications, you may turn them off in your device’s settings. DataInformation from third parties, such as personal information or network friends, if you connect your account to the third party and grant the Application permission to access this information. Data From Contests, Giveaways, and SurveysPersonal and other information you may provide when entering contests or giveaways and/or responding to surveys..",
                style: TextStyle(
                  color: Color(0xFFC5C5C5),
                ),
              ),
            ])));
  }
}
