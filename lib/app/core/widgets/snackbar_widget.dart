// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';


class SnackBarWidget extends SnackBar {
  final Widget content;
  final Enum status;
  final Duration? time;

  SnackBarWidget(
      {Key? key, required this.content, required this.status, this.time})
      : super(
          duration: time ?? Duration(seconds: 4),
          key: key,
          content: content,
          backgroundColor: describeEnum(status) == "error"
              ? errorStatusSnackBarColor
              : describeEnum(status) == "warning"
                  ? warningStatusSnackBarColor
                  : successStatusSnackBarColor,
        );
}
