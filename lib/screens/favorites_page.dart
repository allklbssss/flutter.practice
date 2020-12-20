import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 60,
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
                gradient:
                    LinearGradient(colors: [Colors.grey[850], Colors.black87]),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
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
                        'Избранное',
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
    );
  }
}
