import 'package:flutter/material.dart';

class ArrowWidget extends StatelessWidget {
  final double? arrowWidth;
  final bool? visible;
  final bool? isNext;
  final Function? onPressed;

  const ArrowWidget({
    Key? key,
    this.arrowWidth,
    this.visible,
    this.isNext,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: arrowWidth,
      alignment: Alignment.centerRight,
      child: Visibility(
        visible: visible!,
        child: IconButton(
          onPressed: onPressed as void Function()?,
          icon: Icon(
            isNext! ? Icons.chevron_right : Icons.chevron_left,
            color: const Color.fromARGB(255, 247, 247, 247),
          ),
        ),
      ),
    );
  }
}
