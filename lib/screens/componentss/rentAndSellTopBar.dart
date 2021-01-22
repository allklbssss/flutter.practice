import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTopNavigationBar extends StatelessWidget {
  String label;

  CustomTopNavigationBar({@required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
          ),
        ],
        gradient: LinearGradient(colors: [Colors.grey[850], Colors.black87]),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset(
                'asset/icons/left-arrow.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Padding(
                //   padding: EdgeInsets.only(
                //     right: 260,
                //     top: 15,
                //   ),
                // ),
                Container(
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
                Container(
                  child: Text(
                    this.label,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      letterSpacing: 3.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 10),
        ],
      ),
    );
  }
}
