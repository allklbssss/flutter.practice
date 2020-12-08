import 'package:flatform/bottomBar.dart';
import 'package:flatform/pages/buy_page.dart';
import 'package:flatform/pages/home_page.dart';
import 'package:flatform/pages/rent_page.dart';
import 'package:flatform/pages/sale_page.dart';
import 'package:flatform/pages/take_page.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class NewAnnouncementPage extends StatefulWidget {
  @override
  _NewAnnouncementPageState createState() => _NewAnnouncementPageState();
}

class _NewAnnouncementPageState extends State<NewAnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => BuyPage(),
                        ),
                      );
                    },
                    child: PlusAnnouncement('Купить'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => SalePage(),
                        ),
                      );
                    },
                    child: PlusAnnouncement('Продать'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => TakePage(),
                        ),
                      );
                    },
                    child: PlusAnnouncement('Снять'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => RentPage(),
                        ),
                      );
                    },
                    child: PlusAnnouncement('Сдать'),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class PlusAnnouncement extends StatefulWidget {
  PlusAnnouncement(this.parameter);
  final String parameter;
  @override
  _PlusAnnouncementState createState() => _PlusAnnouncementState();
}

class _PlusAnnouncementState extends State<PlusAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.1, 0.8),
            colors: [Colors.grey[800], Colors.black87]),
      ),
      child: Center(
        child: Text(
          '${widget.parameter}',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
