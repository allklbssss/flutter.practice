import 'package:flatform/models/ad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../announcement_page.dart';

class AdContainer extends StatefulWidget {
  String image;
  int price;
  String name;
  bool isFavorite = false;
  String category;
  int id;

  AdContainer({
    @required this.image,
    @required this.price,
    @required this.name,
    @required this.category,
    @required this.id,
    this.isFavorite = false,
  });

  @override
  _AdContainerState createState() => _AdContainerState();
}

class _AdContainerState extends State<AdContainer> {
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
            begin: Alignment.topLeft, end: Alignment(0.5, 0.8), colors: [Colors.white60, Colors.grey[300]]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            height: 130,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.image),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
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
                      widget.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    '${widget.price} руб',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
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
                onPressed: () async {
                  var favorites = Hive.box('favorites');
                  var obj = Ad(image: widget.image, name: widget.name, price: widget.price, isFavorite: true);
                  if (widget.isFavorite) {
                    favorites.add(obj);
                  } else {
                    favorites.delete(obj);
                  }
                  Hive.box(widget.category).get('content')[widget.id].isFavorite = !widget.isFavorite;
                  setState(() {
                    widget.isFavorite = !widget.isFavorite;
                  });
                },
                icon: widget.isFavorite
                    ? SvgPicture.asset(
                        'asset/icons/likss.svg',
                        width: 25,
                        height: 25,
                      )
                    : SvgPicture.asset(
                        'asset/icons/like.svg',
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
