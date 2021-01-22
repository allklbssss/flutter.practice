import 'package:flutter/material.dart';

class CCheckBox extends StatefulWidget {
  CCheckBox(this.parameter);
  final String parameter;
  @override
  _CCheckBoxState createState() => _CCheckBoxState();
}

class _CCheckBoxState extends State<CCheckBox> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${widget.parameter}',
          style: TextStyle(fontSize: 15),
        ),
        Checkbox(
            activeColor: Colors.grey[850],
            value: val,
            onChanged: (bool value) {
              setState(() {
                val = value;
              });
            })
      ],
    );
  }
}

class PFText extends StatefulWidget {
  PFText(this.parameter);
  final String parameter;
  @override
  _PFTextState createState() => _PFTextState();
}

class _PFTextState extends State<PFText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Text(
        '${widget.parameter}',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          letterSpacing: 2.0,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class PText extends StatefulWidget {
  PText(this.parameter);
  final String parameter;
  @override
  _PTextState createState() => _PTextState();
}

class _PTextState extends State<PText> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: widget.parameter,
          hintStyle: TextStyle(
            color: Colors.black54,
            fontSize: 15,
            letterSpacing: 2.0,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
