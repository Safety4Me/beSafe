import 'package:flutter/material.dart';

import 'card_widget.dart';

class CardWidgetWithScroll extends StatelessWidget {

   final double cardHeight;
  final double? cardWidth;
  final double getCardWidth;

  final List<Widget> children;

  final Alignment cardAlignment;
  final ScrollController? scrollController;
  final ScrollBehavior customScrollBehavior;
  final bool isLandscape;

  const CardWidgetWithScroll(
      {Key? key,
      required this.cardHeight,
      required this.children,
      required this.cardAlignment,
      this.cardWidth,
      this.scrollController, 
      required this.customScrollBehavior, 
      required this.isLandscape, 
      required this.getCardWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: customScrollBehavior,
      child: SingleChildScrollView(
        controller: scrollController,
        child: CardWidget(
            cardHeight: cardHeight,
            children: children,
            cardAlignment: cardAlignment,
            isLandscape: isLandscape,
            getCardWidth: getCardWidth,),
      ),
    );
  }
}
