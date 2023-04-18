import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HealthServiceQuestion extends StatelessWidget {
  final bool isLandscape;
  final bool landscapOrientation;
  final String? healthServiceName;
  final String npsSTitle;

  const HealthServiceQuestion({
    Key? key,
    required this.healthServiceName,
    required this.isLandscape,
    required this.landscapOrientation,
    required this.npsSTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: Center(
        child: Text('$npsSTitle $healthServiceName?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: textColor,
                  fontSize: isLandscape
                      ? 22
                      : landscapOrientation
                          ? 15
                          : size.height * 0.022,
                )),
      ),
      height: size.height * 0.12,
    );
  }
}
