import 'package:flatform/screens/componentss/button.dart';
import 'package:flatform/screens/componentss/components.dart';
import 'package:flatform/screens/componentss/sliderContainer.dart';
import 'package:flatform/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class SearchRent extends StatefulWidget {
  @override
  _SearchRentState createState() => _SearchRentState();
}

String value1 = 'Квартира';

class _SearchRentState extends State<SearchRent> {
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
                items: <String>['Квартира', 'Комната']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            PFText('Цена за месяц'),
            SliderContainer(),
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
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
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
                child: Button('Показать объявления'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
