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
