import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  _sliderState createState() => _sliderState();
}

double value = 5;
double currentValue = 0;

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    currentValue = value;

    return Slider(
      value: value,
      min: 5,
      max: 30,
      divisions: 5,
      label: value.round().toString(),
      onChanged: (newValue) => setState(() => value = newValue),
    );
  }
}
