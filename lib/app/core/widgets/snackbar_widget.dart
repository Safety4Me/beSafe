import 'package:besafe/app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../utils/snackbar_status_enum.dart';

class SnackBarWidget extends SnackBar {
  final Widget content;
  final SnackBarStatusEnum status;
  final Duration? time;

  const SnackBarWidget(
      {Key? key, required this.content, required this.status, this.time})
      : super(
          duration: time ?? const Duration(seconds: 4),
          key: key,
          content: content,
          backgroundColor: status == SnackBarStatusEnum.error
              ? errorStatusSnackBarColor
              : status == SnackBarStatusEnum.warning
                  ? warningStatusSnackBarColor
                  : successStatusSnackBarColor,
        );
}
