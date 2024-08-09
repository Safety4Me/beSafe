import 'package:besafe/besafe.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class NpsSCardWidget extends StatefulWidget {
  final int npsS;
  final String? healthServiceName;
  final String yes;
  final String no;
  final String ipsp;
  final String npsSTitle;
  final String npsSText;
  final bool isLandscape;
  final bool orientationLandscape;
  final Function onConfirmPressed;
  final Function onPressed;

  const NpsSCardWidget({
    Key? key,
    required this.npsS,
    required this.healthServiceName,
    required this.onConfirmPressed,
    required this.yes,
    required this.no,
    required this.isLandscape,
    required this.onPressed,
    required this.orientationLandscape,
    required this.ipsp,
    required this.npsSTitle,
    required this.npsSText,
  }) : super(key: key);

  @override
  _NpsSCardWidgetState createState() => _NpsSCardWidgetState();
}

class _NpsSCardWidgetState extends State<NpsSCardWidget> {
  bool? isLoading;

  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var buttonWidth = widget.isLandscape ? 0.1 : 0.35;
    return CircularProgressIndicatorWidget(
      isLoading: isLoading,
      child: Padding(
        padding: widget.isLandscape
            ? EdgeInsets.symmetric(
                horizontal: size.width * 0.3, vertical: size.height * 0.05)
            : EdgeInsets.all(size.height * 0.04),
        child: Card(
          color: alabasterColor,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          shadowColor: blackSafety4MeColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(size.height * 0.02),
                child: NpsSTitle(
                    ipsp: widget.ipsp,
                    isLandscape: widget.isLandscape,
                    orientationLandscape: widget.orientationLandscape),
              ),
              Gauge(
                npsS: widget.npsS,
                isLandscape: widget.isLandscape,
                orientationLandscape: widget.orientationLandscape,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: NpsSExplanationWidget(npsSText: widget.npsSText),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: HealthServiceQuestion(
                  healthServiceName: widget.healthServiceName,
                  isLandscape: widget.isLandscape,
                  landscapOrientation: widget.orientationLandscape,
                  npsSTitle: widget.npsSTitle,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomButton(
                        child: Center(
                          child: Text(
                            widget.no,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () => widget.onPressed(),
                        buttonColor: alabasterButton,
                        percentualWidth: buttonWidth,
                      ),
                      CustomButton(
                        child: Center(
                          child: Text(
                            widget.yes,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: alabasterColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          widget.onConfirmPressed();
                          setState(() {
                            isLoading = true;
                          });
                        },
                        buttonColor: Theme.of(context).primaryColor,
                        percentualWidth: buttonWidth,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
