import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'gauge_pointer.dart';
import 'pie_chart.dart';

class Gauge extends StatelessWidget {
  final int npsS;
  final bool isLandscape;
  final bool orientationLandscape;

  const Gauge({
    Key? key,
    required this.npsS,
    required this.isLandscape,
    required this.orientationLandscape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var valueStyle = Theme.of(context).textTheme.bodySmall!.copyWith(
        color: blackSafety4MeColor,
        fontSize: size.height * 0.017,
        fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        alignment: Alignment.topCenter,
        height: size.height * 0.34,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var maxSize = constraints.maxWidth > constraints.maxHeight
                ? constraints.maxHeight
                : constraints.maxWidth;
            return Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: pacificBlue100Color,
                shape: BoxShape.circle,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: maxSize * 0.6,
                    child: CustomPaint(
                      child: Center(),
                      foregroundPainter: PieChart(
                        width: maxSize * 0.38,
                      ),
                    ),
                  ),
                  Container(
                    width: maxSize * 0.6,
                    height: maxSize * 0.95,
                    alignment: Alignment.topCenter,
                    child: Text(
                      '0',
                      style: valueStyle,
                    ),
                  ),
                  Container(
                    width: maxSize,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '-100',
                      textAlign: TextAlign.start,
                      style: valueStyle,
                    ),
                  ),
                  Container(
                    width: maxSize,
                    alignment: Alignment.centerRight,
                    child: Text(
                      '100',
                      textAlign: TextAlign.start,
                      style: valueStyle,
                    ),
                  ),
                  SizedBox(
                    width: maxSize * 0.6,
                    child: CustomPaint(
                      child: Center(),
                      foregroundPainter: GaugePointer(
                        width: maxSize * 0.40,
                        npsS: npsS,
                      ),
                    ),
                  ),
                  Container(
                    height: maxSize * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        npsS.toString(),
                        style: numberStyle(
                            isLandscape, context, orientationLandscape, size),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  TextStyle numberStyle(bool isLandscape, BuildContext context,
      bool orientationLandscape, Size size) {
    return isLandscape
        ? Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: lightPacificBlueColor,
            )
        : orientationLandscape
            ? Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: lightPacificBlueColor,
                )
            : Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: lightPacificBlueColor,
                fontSize: size.height * 0.05,
                fontWeight: FontWeight.bold);
  }
}
