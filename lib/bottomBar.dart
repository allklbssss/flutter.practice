import 'package:flatform/screens/favorites_page.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flatform/screens/newAnnouncement_page.dart';
import 'package:flatform/screens/profile_page.dart';
import 'package:flatform/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    NewAnnouncementPage(),
    FavoritesPage(),
    ProfilePage(),
  ];
  void onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 3,
              ),
            ],
            gradient:
                LinearGradient(colors: [Colors.grey[850], Colors.black87]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: currentIndex == 0
                    ? SvgPicture.asset(
                        'asset/icons/home1.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/home.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                onPressed: () {
                  onTappedBar(0);
                },
              ),
              IconButton(
                icon: currentIndex == 1
                    ? SvgPicture.asset(
                        'asset/icons/search1.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/search.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                onPressed: () {
                  onTappedBar(1);
                },
              ),
              IconButton(
                icon: currentIndex == 2
                    ? SvgPicture.asset(
                        'asset/icons/plus1.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/plus.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                onPressed: () {
                  onTappedBar(2);
                },
              ),
              IconButton(
                icon: currentIndex == 3
                    ? SvgPicture.asset(
                        'asset/icons/like1.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/like.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                onPressed: () {
                  onTappedBar(3);
                },
              ),
              IconButton(
                icon: currentIndex == 4
                    ? SvgPicture.asset(
                        'asset/icons/user1.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/user.svg',
                        color: Colors.white,
                        width: 25,
                        height: 25,
                      ),
                onPressed: () {
                  onTappedBar(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
