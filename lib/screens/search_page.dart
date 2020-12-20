import 'package:flatform/screens/componentss/searchBuy_page.dart';
import 'package:flatform/screens/componentss/searchDay_page.dart';
import 'package:flatform/screens/componentss/searchRent_page.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentPage = 0;
  final List<Widget> _children = [SearchBuy(), SearchRent(), SearchDay()];
  void onTapped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HomeAppBar(),
            Padding(
              padding: EdgeInsets.only(top: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Покупка',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: currentPage == 0
                                  ? Colors.black
                                  : Colors.black54,
                              fontSize: 17),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 2,
                          width: 55,
                          color: currentPage == 0 ? Colors.black : Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      onTapped(0);
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Аренда',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: currentPage == 1
                                  ? Colors.black
                                  : Colors.black54,
                              fontSize: 17),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 2,
                          width: 55,
                          color: currentPage == 1 ? Colors.black : Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      onTapped(1);
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Посуточно',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: currentPage == 2
                                  ? Colors.black
                                  : Colors.black54,
                              fontSize: 17),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 2,
                          width: 55,
                          color: currentPage == 2 ? Colors.black : Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      onTapped(2);
                    },
                  ),
                ],
              ),
            ),
            Expanded(flex: 2, child: _children[currentPage]),
          ],
        ),
      ),
    );
  }
}
