import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  final String imageSource;
  final int? flex;
  final bool isLandscape;

  const ImageCardWidget({
    Key? key,
    required this.imageSource,
    this.flex, 
    required this.isLandscape,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var imageWidth = size.width * (isLandscape ? 0.4 : 0.5);
    return Expanded(
      flex: flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Image.asset(
          imageSource,
          width: imageWidth,
        ),
      ),
    );
  }
}
