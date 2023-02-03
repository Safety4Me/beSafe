// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color? buttonColor;
  final double percentualWidth;
  final double? padding;
  final double? height;
  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.buttonColor,
    required this.percentualWidth,
    this.padding,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(padding ?? 4.0),
      child: Container(
        width: size.width * percentualWidth,
        height: height ?? 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              spreadRadius: -2,
              blurRadius: 5,
              offset: Offset(2, 2),
              color: blackSafety4MeColor.withOpacity(0.5),
            ),
          ],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onPressed,
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
