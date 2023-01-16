import 'package:flutter/material.dart';


import '../utils/constants.dart';
import 'custom_slider_thumb_rect_widget.dart';

class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;
  final bool fullWidth;
  final double value;
  final Function(double)? onChanged;

  SliderWidget({
    super.key, 
    this.sliderHeight = 48,
    this.max = 10,
    this.min = 0,
    required this.value,
    this.onChanged,
    this.fullWidth = false,
  });

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    var paddingFactor = .0;

    if (widget.fullWidth) paddingFactor = .0;

    return Container(
      width: widget.fullWidth ? double.infinity : (widget.sliderHeight) * 5.5,
      height: (widget.sliderHeight),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular((widget.sliderHeight * .3)),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(widget.sliderHeight * paddingFactor, 2,
            widget.sliderHeight * paddingFactor, 2),
        child: Center(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white,
              trackHeight: 4.0,
              thumbShape: CustomSliderThumbRect(
                thumbRadius: widget.sliderHeight * .4,
                thumbHeight: widget.sliderHeight,
                min: widget.min,
                max: widget.max,
              ),
              overlayColor: Colors.white.withOpacity(.4),
              activeTickMarkColor: alabasterColor,
              inactiveTickMarkColor: alabasterColor,
            ),
            child: Slider(
              value: widget.value,
              min: widget.min.toDouble(),
              max: widget.max.toDouble(),
              onChanged: widget.onChanged,
              divisions: 10,
            ),
          ),
        ),
      ),
    );
  }
}
