import 'package:flutter/material.dart';

import '../utils/constants.dart';

class DefaultStackWidget extends StatelessWidget {
  final Widget foregroundWidget;
  final bool? defaultSplash;
  final bool isDesktop;
  final String currentBackgroundImageMobile;
  final String currentBackgroundImage;

  const DefaultStackWidget({
    Key? key,
    required this.foregroundWidget,
    this.defaultSplash, 
    required this.isDesktop, 
    required this.currentBackgroundImageMobile, 
    required this.currentBackgroundImage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      defaultSplash != null
          ? Image.asset(
              isDesktop
                  ? desktopBackgroundEmptyImageSource
                  : mobileBackgroundEmptyImageSource,
              fit: BoxFit.cover,
            )
          : Image.asset(
              isDesktop
                  ? currentBackgroundImage
                  : currentBackgroundImageMobile,
              fit: BoxFit.cover,
            )
    ];
    children.add(foregroundWidget);
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.center,
      children: children,
    );
  }
}
