import 'package:flatform/bottomBar.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flatform/pages/adContainer.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class FlatformPage1 extends StatefulWidget {
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
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
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
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
              AdContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
