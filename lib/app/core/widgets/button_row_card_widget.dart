import 'package:flutter/material.dart';

class ButtonRowCardWidget extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment alignment;

  const ButtonRowCardWidget({
    Key? key,
    required this.children,
    this.alignment = MainAxisAlignment.spaceAround,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: alignment,
      children: children,
    );
  }
}
