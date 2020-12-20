import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyApartmentPage extends StatefulWidget {
  @override
  _BuyApartmentPageState createState() => _BuyApartmentPageState();
}

String value1 = 'Вторичка';
String value2 = 'Собственник';
String value3 = 'С отделкой';
String value4 = 'Количество комнат';

class _BuyApartmentPageState extends State<BuyApartmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.5, 0.8),
                    colors: [Colors.white, Colors.grey[300]]),
              ),
              child: Text(
                'Куплю',
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
          PFText('Желаемый район'),
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
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[350], width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: DropdownButton<String>(
              value: value1,
              isExpanded: true,
              icon: SvgPicture.asset(
                'asset/icons/down-arrow.svg',
                color: Colors.black,
                height: 15,
                width: 15,
              ),
              underline: Container(
                height: 0,
              ),
              style: TextStyle(color: Colors.black, fontSize: 17),
              onChanged: (String newValue1) {
                setState(() {
                  value1 = newValue1;
                });
              },
              items: <String>['Вторичка', 'Новостройка']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[350], width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: DropdownButton<String>(
              value: value2,
              isExpanded: true,
              icon: SvgPicture.asset(
                'asset/icons/down-arrow.svg',
                color: Colors.black,
                height: 15,
                width: 15,
              ),
              underline: Container(
                height: 0,
              ),
              style: TextStyle(color: Colors.black, fontSize: 17),
              onChanged: (String newValue1) {
                setState(() {
                  value2 = newValue1;
                });
              },
              items: <String>['Собственник', 'Застройщик', 'Посредник']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[350], width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: DropdownButton<String>(
              value: value3,
              isExpanded: true,
              icon: SvgPicture.asset(
                'asset/icons/down-arrow.svg',
                color: Colors.black,
                height: 15,
                width: 15,
              ),
              underline: Container(
                height: 0,
              ),
              style: TextStyle(color: Colors.black, fontSize: 17),
              onChanged: (String newValue1) {
                setState(() {
                  value3 = newValue1;
                });
              },
              items: <String>['С отделкой', 'Без отделки']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[350], width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: DropdownButton<String>(
              value: value4,
              isExpanded: true,
              icon: SvgPicture.asset(
                'asset/icons/down-arrow.svg',
                color: Colors.black,
                height: 15,
                width: 15,
              ),
              underline: Container(
                height: 0,
              ),
              style: TextStyle(color: Colors.black, fontSize: 17),
              onChanged: (String newValue1) {
                setState(() {
                  value4 = newValue1;
                });
              },
              items: <String>[
                'Количество комнат',
                'Студия',
                '1',
                '2',
                '3',
                '4+'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          PFText('Общая площадь'),
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
