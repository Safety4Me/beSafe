// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../utils/constants.dart';


class CircularProgressIndicatorWidget extends StatelessWidget {
  final Widget child;
  final bool? isLoading;

  const CircularProgressIndicatorWidget({
    Key? key,
    required this.child,
    required this.isLoading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading!,
      progressIndicator: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(pacificBlueColor),
      ),
      child: child,
    );
  }
}
