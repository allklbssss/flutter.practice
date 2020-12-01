import 'package:flutter/material.dart';
import 'package:flatform/pages/flatform_page_1.dart';
import 'package:flatform/my_icons.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                  ),
                ],
                gradient:
                    LinearGradient(colors: [Colors.grey[850], Colors.black87]),
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
            ),
            Container(
              padding: EdgeInsets.only(
                top: 8,
                left: 10,
                right: 10,
              ),
              height: 35,
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
                width: 330,
                height: 200,
                margin: EdgeInsets.only(
                  top: 25,
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Аренда',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
                    builder: (BuildContext context) => FlatformPage1(),
                  ),
                );
              },
              child: Container(
                width: 330,
                height: 200,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Купить',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 12.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
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
                icon: Icon(
                  MyIcons.home,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MyIcons.search,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MyIcons.plus,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MyIcons.like,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  MyIcons.user,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
