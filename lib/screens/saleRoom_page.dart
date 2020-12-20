import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaleRoomPage extends StatefulWidget {
  @override
  _SaleRoomPageState createState() => _SaleRoomPageState();
}

class _SaleRoomPageState extends State<SaleRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.5, 0.8),
                    colors: [Colors.white, Colors.grey[300]]),
              ),
              child: Text(
                'Продам',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          PFText('Адрес'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.only(left: 5, top: 5),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Text('Укажите место',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      letterSpacing: 1.0,
                      decoration: TextDecoration.none,
                    ))),
          ),
          PFText('Площадь комнаты'),
          SliderSContainer(),
          PFText('Описание объявления'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.only(left: 5, top: 5),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Text('Введите описание',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      letterSpacing: 1.0,
                      decoration: TextDecoration.none,
                    ))),
          ),
          PFText('Цена'),
          SliderContainer(),
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Center(
              child: SvgPicture.asset(
                'asset/icons/camera.svg',
                width: 60,
                height: 60,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   SwipeablePageRoute(
                //     onlySwipeFromEdge: true,
                //     builder: (BuildContext context) => (),
                //   ),
                // );
              },
              child: Button('Разместить'),
            ),
          ),
        ],
      ),
    );
  }
}
