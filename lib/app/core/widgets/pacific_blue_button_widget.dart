import 'package:flutter/material.dart';

import '../utils/constants.dart';



class PacificBlueButtonWidget extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  const PacificBlueButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => pacificBlueColor),
        elevation: MaterialStateProperty.resolveWith<double>((states) => 10),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
