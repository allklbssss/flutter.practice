import 'package:flatform/bottomBar.dart';
import 'package:flatform/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String value1 = 'Купить';
  String value2 = 'Квартиру';
  String value3 = 'Вторичка';
  String value4 = 'Количество комнат';
  // String value5 = 'Тип дома';  ['Кирпичный', 'Монолитный', 'Панельный', 'Блочный']

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              HomeAppBar(),
              Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    margin: EdgeInsets.only(top: 25, left: 15, right: 15),
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
                      items: <String>['Купить', 'Снять посуточно', 'Снять на длительный срок']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    margin: EdgeInsets.only(top: 20, left: 15),
                    width: 150,
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
                      items: <String>['Квартиру', 'Комнату', 'Дом']
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
                    margin: EdgeInsets.only(top: 20, left: 10),
                    width: 170,
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
                      items: <String>['Вторичка', 'Новостройка']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
                 
              ),
            ],
          ),
          Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                      items: <String>['Количество комнат', 'Студия', '1', '2', '3', '4+']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
