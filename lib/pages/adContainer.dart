import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'announcement_page.dart';

class AdContainer extends StatefulWidget {
  @override
  _AdContainerState createState() => _AdContainerState();
}

class _AdContainerState extends State<AdContainer> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 150,
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.5, 0.8),
            colors: [Colors.white60, Colors.grey[300]]),
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 130,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/images/5.jpg'),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => Announcement(),
                        ),
                      );
                    },
                    child: Text(
                      'Название \n объявления',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    'Цена, руб',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, bottom: 100),
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                  });
                },
                icon: pressed
                    ? SvgPicture.asset(
                        'asset/icons/like.svg',
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/likss.svg',
                        width: 25,
                        height: 25,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
