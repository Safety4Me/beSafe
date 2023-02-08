// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomAlertWidget extends StatelessWidget {
  final Widget title;
  final Widget content;
  final List<Widget>? actions;

  const CustomAlertWidget({
    Key? key,
    required this.title,
    required this.content,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 10,
      backgroundColor: darkAlabasterColor,
      title: title,
      content: content,
      actions: actions ??
          [
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
      scrollable: true,
    );
  }
}
