import 'package:flutter/material.dart';

class SliderContainer extends StatefulWidget {
  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', '100');

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: Colors.grey[850],
      inactiveColor: Colors.grey[400],
      min: 1,
      max: 100,
      values: values,
      labels: labels,
      divisions: 100,
      onChanged: (value) {
        print('START: ${value.start}, END: ${value.end}');
        setState(() {
          values = value;
          labels = RangeLabels('${value.start.toInt().toString()}\₽',
              '${value.end.toInt().toString()}\₽');
        });
      },
    );
  }
}

class SliderSContainer extends StatefulWidget {
  @override
  _SliderSContainerState createState() => _SliderSContainerState();
}

class _SliderSContainerState extends State<SliderSContainer> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', '100');

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: Colors.grey[850],
      inactiveColor: Colors.grey[400],
      min: 1,
      max: 100,
      values: values,
      labels: labels,
      divisions: 100,
      onChanged: (value) {
        print('START: ${value.start}, END: ${value.end}');
        setState(() {
          values = value;
          labels = RangeLabels('${value.start.toInt().toString()}\м²',
              '${value.end.toInt().toString()}\м²');
        });
      },
    );
  }
}
