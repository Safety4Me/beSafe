import 'package:besafe/besafe.dart';
import 'package:flutter/material.dart';

class SliderAnswerEvaluationWidget extends StatefulWidget {
  final double value;
  final bool isLandscape;
  final String neutralImageSource;
  final String sadImageSource;
  final String veryGoodImageSource;
  final Function(double value) updateValue;
  const SliderAnswerEvaluationWidget(
      {Key? key,
      required this.value,
      required this.isLandscape,
      required this.updateValue,
      required this.neutralImageSource,
      required this.sadImageSource,
      required this.veryGoodImageSource})
      : super(key: key);

  @override
  State<SliderAnswerEvaluationWidget> createState() =>
      _SliderAnswerEvaluationWidgetState();
}

class _SliderAnswerEvaluationWidgetState
    extends State<SliderAnswerEvaluationWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: widget.isLandscape ? 2.0 : 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImagesOfEvaluation(
              neutralImageSource: widget.neutralImageSource,
              sadImageSource: widget.sadImageSource,
              veryGoodImageSource: widget.veryGoodImageSource,
              value: widget.value.toInt(),
              setValue0: () => widget.updateValue(0.0),
              setValue1: () => widget.updateValue(1.0),
              setValue2: () => widget.updateValue(2.0),
              setValue3: () => widget.updateValue(3.0),
              setValue4: () => widget.updateValue(4.0),
              setValue5: () => widget.updateValue(5.0),
              setValue6: () => widget.updateValue(6.0),
              setValue7: () => widget.updateValue(7.0),
              setValue8: () => widget.updateValue(8.0),
              setValue9: () => widget.updateValue(9.0),
              setValue10: () => widget.updateValue(10.0),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: EvaluateSliderWidget(
                    value: widget.value, updateValue: widget.updateValue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
