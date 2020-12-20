import 'package:flatform/screens/home_page.dart';
import 'package:flatform/screens/newAnnouncement_page.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// ignore: must_be_immutable
class AddAnnouncementPage extends StatefulWidget {
  Widget param1;
  Widget param2;
  Widget param3;
  Widget param4;
  AddAnnouncementPage({
    this.param1,
    this.param2,
    this.param3,
    this.param4,
  });
  @override
  _AddAnnouncementPageState createState() => _AddAnnouncementPageState();
}

class _AddAnnouncementPageState extends State<AddAnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
            Padding(
              padding: EdgeInsets.only(top: 100),
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
                            builder: (BuildContext context) => widget.param1,
                          ),
                        );
                      },
                      child: PlusAnnouncement('Куплю'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) => widget.param2,
                          ),
                        );
                      },
                      child: PlusAnnouncement('Продам'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) => widget.param3,
                          ),
                        );
                      },
                      child: PlusAnnouncement('Сниму'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SwipeablePageRoute(
                            onlySwipeFromEdge: true,
                            builder: (BuildContext context) => widget.param4,
                          ),
                        );
                      },
                      child: PlusAnnouncement('Сдам'),
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
