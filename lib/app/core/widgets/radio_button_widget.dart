import 'package:flutter/material.dart';

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
    bool selected = (value == groupValue);

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xff059CB7)),
        child: Icon(
          Icons.circle,
          size: 25,
          color: selected ? Color(0xff059CB7) : Colors.grey[200],
        ),
      ),
    );
  }
}
