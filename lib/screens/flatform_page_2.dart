import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:flatform/screens/componentss/rentAndSellTopBar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class FlatformPage2 extends StatefulWidget {
  @override
  _FlatformPage2State createState() => _FlatformPage2State();
}

class _FlatformPage2State extends State<FlatformPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              CustomTopNavigationBar(label: 'Покупка'),
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
              ...List.generate(
                Hive.box('sell').get('content').length,
                (int index) => AdContainer(
                  image: Hive.box('sell').get('content')[index].image,
                  price: Hive.box('sell').get('content')[index].price,
                  name: Hive.box('sell').get('content')[index].name,
                  isFavorite: Hive.box('sell').get('content')[index].isFavorite,
                  category: 'sell',
                  id: index,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
