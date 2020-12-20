import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button(this.parameter);
  final String parameter;
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.1, 0.9),
            colors: [Colors.black54, Colors.black87]),
      ),
      child: Center(
        child: Text(
          '${widget.parameter}',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
