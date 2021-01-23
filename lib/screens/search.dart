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
                // AdContainer(
                //   name: "Классная квартира",
                //   price: 15000,
                //   image: 'asset/images/5.jpg',
                //   category: 'sell',
                //   id: 1000,
                // ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
