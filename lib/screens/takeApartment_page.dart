import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TakeApartmentPage extends StatefulWidget {
  @override
  _TakeApartmentPageState createState() => _TakeApartmentPageState();
}

String value1 = 'Посуточно';
String value2 = 'Количество комнат';

class _TakeApartmentPageState extends State<TakeApartmentPage> {
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
                'Сниму',
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
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
              items: <String>['Посуточно', 'На длительный срок']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          PFText('Желаемый район'),
          PText('Укажите место'),
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
          PFText('Описание объявления'),
          PText('Введите описание'),
          PFText('Удобства'),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 380,
              width: MediaQuery.of(context).size.width / 3 * 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Column(
                children: [
                  CCheckBox('Мебель'),
                  CCheckBox('Интернет'),
                  CCheckBox('Телевизор'),
                  CCheckBox('Кондиционер'),
                  CCheckBox('Холодильник'),
                  CCheckBox('Можно с детьми'),
                  CCheckBox('Можно с животными'),
                ],
              ),
            ),
          ),
          PFText('Площадь'),
          SliderSContainer(),
          PFText('Цена'),
          SliderContainer(),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     SwipeablePageRoute(
              //       onlySwipeFromEdge: true,
              //       builder: (BuildContext context) => (),
              //     ),
              //   );
              // },
              child: Button('Разместить'),
            ),
          ),
        ],
      ),
    );
  }
}
