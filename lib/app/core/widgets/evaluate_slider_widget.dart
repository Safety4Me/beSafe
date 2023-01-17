import 'package:besafe/besafe.dart';
import 'package:flutter/material.dart';

class EvaluateSliderWidget extends StatelessWidget {
  const EvaluateSliderWidget({
    Key? key,
    required double value,
    required this.updateValue,
  })  : _value = value,
        super(key: key);

  final double _value;
  final Function(double) updateValue;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context),
      child: SliderWidget(
        fullWidth: true,
        min: 0,
        max: 10,
        value: _value,
        onChanged: updateValue,
        sliderHeight: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}
