import 'package:flutter/material.dart';

import '../utils/constants.dart';

class NpsSExplanationWidget extends StatelessWidget {
  final String npsSText;
  const NpsSExplanationWidget({super.key, required this.npsSText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(color: pacificBlueColor, fontSize: size.height * 0.02);

    return SizedBox(
      height: size.height * 0.16,
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.03),
        child: Text(
          npsSText,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
