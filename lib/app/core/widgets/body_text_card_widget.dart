import 'package:flutter/material.dart';

class BodyTextCardWidget extends StatelessWidget {
  final int? flex;
  final String? text;
  final TextStyle textStyle;
  final TextAlign? textAlign;
  final Alignment? elementAlign;

  BodyTextCardWidget({
    Key? key,
    required this.flex,
    required this.text,
    required this.textStyle,
    required this.textAlign,
    required this.elementAlign,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Align(
          alignment: elementAlign ?? Alignment.center,
          child: SelectableText(
            text!,
            style: textStyle,
            textAlign: textAlign ?? TextAlign.center,
          ),
        ),
      ),
    );
  }
}
