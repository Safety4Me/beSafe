import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatelessWidget {
  const CheckBoxListTileWidget({
    Key? key,
    required this.title,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final String title;
  final Function(bool?) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Theme(
        data: ThemeData(unselectedWidgetColor: Colors.white),
        child: CheckboxListTile(
          activeColor: Theme.of(context).primaryColor,
          checkColor: Colors.white,
          tileColor: Colors.grey.shade100,
          onChanged: onChanged,
          value: value,
          title: Text(title),
        ),
      ),
    );
  }
}
