import 'package:flatform/models/ad.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Announcement extends StatefulWidget {
  String image;
  int price;
  String name;
  bool isFavorite;
  String category;
  int id;

  Announcement({
    @required this.image,
    @required this.price,
    @required this.name,
    @required this.category,
    @required this.id,
    @required this.isFavorite,
  });
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  bool number = true;
  Box favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment(0.5, 0.8), colors: [Colors.grey[850], Colors.black87]),
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
                      padding: EdgeInsets.only(left: 50),
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(widget.image),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 50, top: 5),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: IconButton(
                          onPressed: () {
                            var favorites = Hive.box('favorites');
                            var obj = Ad(image: widget.image, name: widget.name, price: widget.price, isFavorite: true);
                            if (widget.isFavorite) {
                              favorites.add(obj);
                            } else {
                              favorites.delete(obj);
                            }
                            Hive.box(widget.category).get('content')[widget.id].isFavorite = !widget.isFavorite;
                            setState(() {
                              widget.isFavorite = !widget.isFavorite;
                            });
                          },
                          icon: widget.isFavorite
                              ? SvgPicture.asset(
                                  'asset/icons/likss.svg',
                                  width: 25,
                                  height: 25,
                                )
                              : SvgPicture.asset(
                                  'asset/icons/like.svg',
                                  width: 25,
                                  height: 25,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '${widget.price} руб',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  'Адрес',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Container(
                height: 150,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white60, Colors.grey[300]]),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/user.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 25),
                          child: Text(
                            'Алина',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 200,
                          margin: EdgeInsets.only(top: 20, left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.5, 0.8),
                                colors: [Colors.grey[850], Colors.black87]),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                number = !number;
                              });
                            },
                            icon: number
                                ? Text(
                                    'Узнать номер',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                    ),
                                  )
                                : Text(
                                    'Какой-то номер',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 230,
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment(0.5, 0.8), colors: [Colors.white, Colors.grey[300]]),
                ),
                child: Column(
                  children: [
                    Text(
                      'Основные характеристики',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextLinear('Категория', 'Продажа'),
                    TextLinear('Право собственности', 'Собственник'),
                    TextLinear('Общая площадь', '60 кв.м'),
                    TextLinear('Отделка', 'С отделкой'),
                    TextLinear('Вид объекта', 'Вторичка'),
                    TextLinear('Количество комнат', '3'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft, end: Alignment(0.5, 0.8), colors: [Colors.white, Colors.grey[300]]),
                ),
                child: Text(
                  'Какое-то супер крутое описание',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextLinear extends StatefulWidget {
  TextLinear(this.parameter, this.value);

  final String value;
  final String parameter;

  @override
  _TextLinearState createState() => _TextLinearState();
}

class _TextLinearState extends State<TextLinear> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(3, 8, 0, 0),
                  child: Text('${widget.parameter}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ))),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 5, 0),
                child: Text('${widget.value}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          Container(
            child: Divider(
              color: Colors.black,
              height: 0,
              thickness: 0,
              indent: 0,
              endIndent: 5,
            ),
          ),
        ],
      ),
    );
  }
}
