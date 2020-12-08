import 'package:flatform/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                  ),
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.1, 0.8),
                    colors: [Colors.grey[850], Colors.black87]),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'flatform',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 12.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Профиль',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          letterSpacing: 4.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset/images/user.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Алина',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  TextLinearArrow('Мои объявления'),
                  TextLinearArrow('Изменить номер  телефона'),
                  TextLinearArrow('Настройки'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextLinearArrow extends StatefulWidget {
  TextLinearArrow(this.parameter);

  final String parameter;

  @override
  _TextLinearArrowState createState() => _TextLinearArrowState();
}

class _TextLinearArrowState extends State<TextLinearArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Text('${widget.parameter}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ))),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 8, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'asset/icons/right-arrow.svg',
                    color: Colors.black,
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Divider(
              color: Colors.black,
              height: 3,
              thickness: 0,
              indent: 5,
              endIndent: 8,
            ),
          ),
        ],
      ),
    );
  }
}
