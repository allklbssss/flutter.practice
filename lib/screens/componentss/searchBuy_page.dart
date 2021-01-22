import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SearchBuy extends StatefulWidget {
  @override
  _SearchBuyState createState() => _SearchBuyState();
}

String value1 = 'Вторичка';
String value2 = 'Количество комнат';

class _SearchBuyState extends State<SearchBuy> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PFText('Район'),
            PText('Укажите место'),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              margin: EdgeInsets.only(left: 10, right: 10),
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
                items: <String>['Вторичка', 'Новостройка', 'Дом'].map<DropdownMenuItem<String>>((String value) {
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
                items: <String>['Количество комнат', 'Студия', '1', '2', '3', '4+']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            PFText('Цена'),
            SliderContainer(),
            PFText('Общая площадь'),
            SliderSContainer(),
            Container(
              // padding: EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    SwipeablePageRoute(
                      onlySwipeFromEdge: true,
                      builder: (BuildContext context) => SearchAnnouncement(),
                    ),
                  );
                },
                child: Center(child: Button('Показать объявления')),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
