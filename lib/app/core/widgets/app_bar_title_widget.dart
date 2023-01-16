import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AppBarTitleWidget extends StatelessWidget {
  final Uint8List? customLogo;
  const AppBarTitleWidget({
    Key? key,
    required this.customLogo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
      child: customLogo != null
          ? Image.memory(
              customLogo!,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.25,
            )
          : Image.asset(
              logoSafety4MeWhiteImageSource,
              height: kToolbarHeight * 0.8,
            ),
    );
  }
}