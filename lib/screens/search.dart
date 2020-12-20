import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/material.dart';

class SearchAnnouncement extends StatefulWidget {
  @override
  _SearchAnnouncementState createState() => _SearchAnnouncementState();
}

class _SearchAnnouncementState extends State<SearchAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            Column(
              children: [
                HomeAppBar(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
                AdContainer(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
