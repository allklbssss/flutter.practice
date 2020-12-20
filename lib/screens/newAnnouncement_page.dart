import 'package:flatform/screens/rentHouse_page.dart';
import 'package:flatform/screens/addAnnouncement_page.dart';
import 'package:flatform/screens/buyApartment_page.dart';
import 'package:flatform/screens/buyHouse_page.dart';
import 'package:flatform/screens/buyRoom_page.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flatform/screens/rentApartment_page.dart';
import 'package:flatform/screens/rentRoom_page.dart';
import 'package:flatform/screens/saleApartment_page.dart';
import 'package:flatform/screens/saleHouse_page.dart';
import 'package:flatform/screens/saleRoom_page.dart';
import 'package:flatform/screens/takeApartment_page.dart';
import 'package:flatform/screens/takeHouse_page.dart';
import 'package:flatform/screens/takeRoom_page.dart';
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
              padding: EdgeInsets.only(top: 70),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) =>
                                AddAnnouncementPage(
                              param1: BuyApartmentPage(),
                              param2: SaleApartmentPage(),
                              param3: TakeApartmentPage(),
                              param4: RentApartmentPage(),
                            ),
                          ),
                        );
                      },
                      child: PlusAnnouncement('Квартира'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) =>
                                AddAnnouncementPage(
                              param1: BuyRoomPage(),
                              param2: SaleRoomPage(),
                              param3: TakeRoomPage(),
                              param4: RentRoomPage(),
                            ),
                          ),
                        );
                      },
                      child: PlusAnnouncement('Комната'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) =>
                                AddAnnouncementPage(
                              param1: BuyHousePage(),
                              param2: SaleHousePage(),
                              param3: TakeHousePage(),
                              param4: RentHousePage(),
                            ),
                          ),
                        );
                      },
                      child: PlusAnnouncement('Дом'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
      width: 220,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.4, 0.5),
            colors: [Colors.black12, Colors.black26]),
      ),
      child: Center(
        child: Text(
          '${widget.parameter}',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
