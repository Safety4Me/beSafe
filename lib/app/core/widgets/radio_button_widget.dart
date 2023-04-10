import 'package:flutter/material.dart';

import '../utils/constants.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    Key? key,
    required this.index,
    required this.context,
    required this.groupValue,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final int index;
  final BuildContext context;
  final dynamic groupValue;
  final Function(dynamic) onChanged;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Radio(
      activeColor: Theme.of(context).primaryColor,
      hoverColor: darkAlabasterColor,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
