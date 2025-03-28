import 'package:besafe/besafe.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/custom_scroll_behavior.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  final bool showButtons;
  final Function? disagreOnPressed;
  final Function? agreOnPressed;
  final double cardHeight;
  final bool? showTitle;
  final bool isLandscapeOrientation;
  final bool isLandscape;
  final double getCardWidth;
  final double getCardButtonRowPercentualWidth;
  final String privacyPolicyPageTitle;
  final String privacyPolicyPageDisagree;
  final String privacyPolicyPageAgree;
  final String privacyPolicyPageText;
  final String privacyPolicyPageTextTitle;
  final Color? titleColor;

  const PrivacyPolicyWidget({
    Key? key,
    required this.showButtons,
    required this.cardHeight,
    this.disagreOnPressed,
    this.agreOnPressed,
    this.showTitle,
    this.titleColor,
    required this.isLandscapeOrientation,
    required this.isLandscape,
    required this.getCardWidth,
    required this.getCardButtonRowPercentualWidth,
    required this.privacyPolicyPageTitle,
    required this.privacyPolicyPageDisagree,
    required this.privacyPolicyPageAgree,
    required this.privacyPolicyPageText,
    required this.privacyPolicyPageTextTitle,
  }) : super(key: key);

  @override
  _PrivacyPolicyWidget createState() => _PrivacyPolicyWidget();
}

class _PrivacyPolicyWidget extends State<PrivacyPolicyWidget> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Visibility(
          visible: widget.showTitle ?? false,
          child: SizedBox(
            height: selectHeight(
                size, widget.isLandscape, widget.isLandscapeOrientation),
            width: size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8.0, top: 8.0),
              child: SelectableText(
                widget.privacyPolicyPageTitle,
                cursorColor: blackSafety4MeColor,
                textAlign:
                    widget.isLandscape ? TextAlign.center : TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: widget.showTitle ?? Theme.of(context).primaryColor, fontSize: 22),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: selectPadding(size, widget.isLandscapeOrientation)),
          child: CardWidget(
            cardAlignment: Alignment.topCenter,
            cardHeight: widget.cardHeight,
            isLandscape: widget.isLandscape,
            borderRadius: 5,
            getCardWidth: widget.getCardWidth,
            children: [
              buildTitle(context),
              buildBody(context),
              buildButtonRow(context),
            ],
          ),
        ),
      ],
    );
  }

  double selectPadding(Size size, bool isLandscapeOrientation) {
    return size.height *
        (widget.showButtons
            ? isLandscapeOrientation
                ? 0.1
                : 0.09
            : isLandscapeOrientation
                ? 0.08
                : 0.05);
  }

  double selectHeight(
      Size size, bool isLandscape, bool isLandscapeOrientation) {
    return size.height *
        (widget.showButtons
            ? 0.1
            : isLandscape
                ? 0.1
                : isLandscapeOrientation
                    ? 0.18
                    : 0.1);
  }

  Widget buildButtonRow(BuildContext context) {
    return Visibility(
      visible: widget.showButtons,
      child: ButtonRowCardWidget(
        children: [
          CustomButton(
            child: Center(
              child: Text(
                widget.privacyPolicyPageDisagree,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
            onPressed: widget.disagreOnPressed as dynamic Function()?,
            buttonColor: darkAlabasterColor,
            percentualWidth: widget.getCardButtonRowPercentualWidth,
          ),
          CustomButton(
            child: Center(
              child: Text(
                widget.privacyPolicyPageAgree,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
            onPressed: widget.agreOnPressed as dynamic Function()?,
            buttonColor: Theme.of(context).primaryColor,
            percentualWidth: widget.getCardButtonRowPercentualWidth,
          ),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: Scrollbar(
          controller: _scrollController,
          thickness: 10,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SelectableText(
                widget.privacyPolicyPageText,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Align(
          alignment: Alignment.center,
          child: SelectableText(
            widget.privacyPolicyPageTextTitle,
            style: titleTextStyle(
                widget.isLandscape, context, widget.isLandscapeOrientation),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  TextStyle titleTextStyle(
      bool isLandscape, BuildContext context, bool isLandscapeOrientation) {
    return isLandscape
        ? Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)
        : isLandscapeOrientation
            ? Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)
            : Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold);
  }
}
