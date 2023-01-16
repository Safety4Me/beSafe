import 'package:flutter/material.dart';

class CustomButtonNoShadow extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final Color? buttonColor;
  final double percentualWidth;
  final double? padding;
  final double? height;
  final bool? boxShadowEnable;
  const CustomButtonNoShadow({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.buttonColor,
    required this.percentualWidth,
    this.padding,
    this.height,
    this.boxShadowEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(padding ?? 8.0),
      child: Container(
        width: size.width * percentualWidth,
        height: height ?? 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor,
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
