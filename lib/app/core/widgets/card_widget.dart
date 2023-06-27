import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double cardHeight;
  final double? cardWidth;

  final List<Widget> children;

  final Alignment? cardAlignment;
  final double? borderRadius;
  final double getCardWidth;

  final MainAxisAlignment? columnAligment;
  final bool isLandscape;

  const CardWidget({
    Key? key,
    required this.cardHeight,
    required this.children,
    required this.cardAlignment,
    this.cardWidth,
    this.borderRadius,
    this.columnAligment,
    required this.isLandscape,
    required this.getCardWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: isLandscape
          ? EdgeInsets.zero
          : EdgeInsets.only(top: size.height * 0.04),
      child: Align(
        alignment: cardAlignment ?? Alignment.center,
        child: SizedBox(
          height: cardHeight,
          width: cardWidth ?? getCardWidth,
          child: Card(
            color: Colors.white,
            elevation: 15,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(borderRadius ?? 5))),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: columnAligment == null
                    ? MainAxisAlignment.center
                    : columnAligment!,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
