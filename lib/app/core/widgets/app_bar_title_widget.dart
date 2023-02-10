import 'dart:typed_data';

import 'package:flutter/material.dart';

class AppBarTitleWidget extends StatelessWidget {
  final Uint8List? customLogo;
  final double height;
  final String logoSafety4me;
  final bool isLandscape;
  const AppBarTitleWidget({
    Key? key,
    required this.customLogo,
    required this.height,
    required this.logoSafety4me,
    required this.isLandscape,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: customLogo != null || isLandscape
          ? Alignment.center
          : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
        child: customLogo != null
            ? Image.memory(
                customLogo!,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
              )
            : Image.asset(
                logoSafety4me,
                height: height,
              ),
      ),
    );
  }
}
