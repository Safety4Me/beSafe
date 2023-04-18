import 'package:flutter/material.dart';

class NpsSTitle extends StatelessWidget {
  final String ipsp;
  final bool isLandscape;
  final bool orientationLandscape;
  const NpsSTitle(
      {super.key,
      required this.ipsp,
      required this.isLandscape,
      required this.orientationLandscape});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: orientationLandscape ? size.height * 0.12 : size.height * 0.09,
      child: Center(
        child: Text(ipsp,
            textAlign: TextAlign.center,
            style: isLandscape
                ? Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: size.height * 0.035)
                : orientationLandscape
                    ? Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: size.height * 0.035)
                    : Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: size.height * 0.024)),
      ),
    );
  }
}
