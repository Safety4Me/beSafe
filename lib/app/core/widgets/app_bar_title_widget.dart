import 'dart:typed_data';

import 'package:flutter/material.dart';

class AppBarTitleWidget extends StatelessWidget {
  final Uint8List? customLogo;
  final double height;
  final double? widthLogoCustomer;
  final double? heightLogoCustomer;
  final String logoSafety4me;
  final bool isLandscape;
  const AppBarTitleWidget({
    Key? key,
    required this.customLogo,
    required this.height,
    required this.logoSafety4me,
    required this.isLandscape,
    this.widthLogoCustomer,
    this.heightLogoCustomer,
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
                height: heightLogoCustomer != null
                    ? MediaQuery.of(context).size.height * heightLogoCustomer!
                    : MediaQuery.of(context).size.height * 0.25,
                width: widthLogoCustomer != null
                    ? MediaQuery.of(context).size.width * widthLogoCustomer!
                    : MediaQuery.of(context).size.width * 0.25,
              )
            : Image.asset(
                logoSafety4me,
                height: height,
              ),
      ),
    );
  }
}
