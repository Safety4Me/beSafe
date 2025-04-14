import 'package:flutter/material.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    Key? key,
    required this.index,
    required this.context,
    required this.groupValue,
    required this.onChanged,
    required this.value,
    this.sizeIcon,
  }) : super(key: key);
  final int index;
  final BuildContext context;
  final dynamic groupValue;
  final Function(dynamic) onChanged;
  final dynamic value;
  final double? sizeIcon;

  @override
  Widget build(BuildContext context) {
    bool selected = (value == groupValue);

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Theme.of(context).primaryColor),
        child: Icon(
          Icons.circle,
          size: sizeIcon ?? 25,
          color: selected ? Theme.of(context).primaryColor : Colors.grey[200],
        ),
      ),
    );
  }
}
