import 'package:flatform/screens/flatform_page_1.dart';
import 'package:flatform/screens/flatform_page_2.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeAppBar(),
            Container(
              height: MediaQuery.of(context).size.height / 4 * 3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      height: MediaQuery.of(context).size.height / 15,
                      child: TextField(
                        cursorColor: Colors.black,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          labelText: 'Поиск',
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => FlatformPage1(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width -
                          MediaQuery.of(context).size.width / 12,
                      height: MediaQuery.of(context).size.height / 3 -
                          MediaQuery.of(context).size.height / 20,
                      margin: EdgeInsets.only(
                        top: 25,
                        left: 15,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Аренда',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            letterSpacing: 12.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SwipeablePageRoute(
                          onlySwipeFromEdge: true,
                          builder: (BuildContext context) => FlatformPage2(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width -
                          MediaQuery.of(context).size.width / 12,
                      height: MediaQuery.of(context).size.height / 3 -
                          MediaQuery.of(context).size.height / 20,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/2.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Купить',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            letterSpacing: 8.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({
    Key key,
  }) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
          ),
        ],
        gradient: LinearGradient(colors: [Colors.grey[850], Colors.black87]),
      ),
      child: Center(
        child: Text(
          'flatform',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 12.0,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
