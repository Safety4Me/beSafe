import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Container(
        height: 0.2,
        color: Colors.black,
      ),
    );
  }
}
