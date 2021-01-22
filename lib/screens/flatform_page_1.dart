import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:flatform/screens/componentss/rentAndSellTopBar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class FlatformPage1 extends StatefulWidget {
  // var _hiveBox;
  // var _data;
  // List<AdContainer> content = [];
  // @override
  // void initState() async {
  //   _hiveBox = Hive.box('rent');
  //   _data = await _hiveBox.get('content');
  //   print('jjjjjjjjjjjjjjjjjjj');
  //   print(_data);
  // content = await _generate();
  // print(content);
  // super.initState();
  // }

  // Future<List<AdContainer>> _generate() async {
  //   return List.generate(
  //     _data.length,
  //     (int index) => AdContainer(
  //       image: _data[index].image,
  //       price: _data[index].price,
  //       name: _data[index].name,
  //       isFavorite: _data[index].isFavorite,
  //     ),
  //   );
  // }

  @override
  _FlatformPage1State createState() => _FlatformPage1State();
}

class _FlatformPage1State extends State<FlatformPage1> {
  // List<AdContainer> content = [];
  // _FlatformPage1State({@required this.content});

  @override
  Widget build(BuildContext context) {
    // var _hiveBox;
    // var _data;
    // List<AdContainer> content = [];

    // Future<List<AdContainer>> _generate() async {
    //   return List.generate(
    //     _data.length,
    //     (int index) => AdContainer(
    //       image: _data[index].image,
    //       price: _data[index].price,
    //       name: _data[index].name,
    //       isFavorite: _data[index].isFavorite,
    //     ),
    //   );
    // }

    // @override
    // void initState() async {
    //   print(2);
    //   _hiveBox = await Hive.openBox('rent');
    //   _data = await _hiveBox.get('content');
    //   print('jjjjjjjjjjjjjjjjjjj');
    //   print(_data);
    //   content = await _generate();
    //   print(content);

    //   super.initState();
    //   print(1);
    // }

    // // _init();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              CustomTopNavigationBar(label: "Аренда"),
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
                Hive.box('rent').get('content').length,
                (int index) => AdContainer(
                  image: Hive.box('rent').get('content')[index].image,
                  price: Hive.box('rent').get('content')[index].price,
                  name: Hive.box('rent').get('content')[index].name,
                  isFavorite: Hive.box('rent').get('content')[index].isFavorite,
                  category: 'rent',
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
