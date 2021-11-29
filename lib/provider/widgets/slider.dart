import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double value = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 0,
      max: 100,
      divisions: 5,
      label: value.round().toString(),
      onChanged: (value) => setState(() => this.value = value),
    );
  }
}
