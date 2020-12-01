import 'package:flutter/material.dart';
import 'package:flatform/my_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page.dart';

// ignore: must_be_immutable
class FlatformPage1 extends StatefulWidget {
  bool isLikes;

  FlatformPage1({this.isLikes});

  @override
  _FlatformPage1State createState() => _FlatformPage1State();
}

class _FlatformPage1State extends State<FlatformPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                height: 70,
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
                  gradient: LinearGradient(
                      colors: [Colors.grey[850], Colors.black87]),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'asset/icons/left-arrow.svg',
                          color: Colors.white,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 260,
                              top: 15,
                            ),
                          ),
                          Container(
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
                          Container(
                            child: Text(
                              'Аренда',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                letterSpacing: 3.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
              Container(
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
                          image: AssetImage('asset/images/4.png'),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 20),
                            child: Text(
                              'Название \n объявления',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none,
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
                      padding: EdgeInsets.only(left: 20, bottom: 100),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          child: widget.isLikes
                              ? SvgPicture.asset(
                                  'asset/icons/like.svg',
                                  color: Colors.black,
                                  width: 25,
                                  height: 25,
                                )
                              : SvgPicture.asset('asset/images/likss.svg'),
                          onTap: () => setState(
                            () {
                              widget.isLikes = !widget.isLikes;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
                          image: AssetImage('asset/images/4.png'),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 20),
                            child: Text(
                              'Название \n объявления',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                // letterSpacing: 12.0,
                                decoration: TextDecoration.none,
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
                                // letterSpacing: 3.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, bottom: 100),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'asset/icons/like.svg',
                          color: Colors.black,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
                          image: AssetImage('asset/images/4.png'),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 20),
                            child: Text(
                              'Название \n объявления',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                // letterSpacing: 12.0,
                                decoration: TextDecoration.none,
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
                                // letterSpacing: 3.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, bottom: 100),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'asset/icons/like.svg',
                          color: Colors.black,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
                          image: AssetImage('asset/images/4.png'),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 20),
                            child: Text(
                              'Название \n объявления',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                // letterSpacing: 12.0,
                                decoration: TextDecoration.none,
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
                                // letterSpacing: 3.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, bottom: 100),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'asset/icons/like.svg',
                          color: Colors.black,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
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
                          image: AssetImage('asset/images/4.png'),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 10, top: 10, right: 20),
                            child: Text(
                              'Название \n объявления',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                // letterSpacing: 12.0,
                                decoration: TextDecoration.none,
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
                                // letterSpacing: 3.0,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, bottom: 100),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'asset/icons/like.svg',
                          color: Colors.black,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                },
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

// void setState(Null Function() param0) {}
