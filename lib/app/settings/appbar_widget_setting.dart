// ignore_for_file: prefer_const_constructors

import 'package:besafe/app/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidgetSetting extends StatelessWidget {
  final Widget title;
  const AppBarWidgetSetting({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBarWidget(
          toolbarHeight: 20,
          title: title,
        ),
        body: Center(
          child: Text('message'),
        ),
      ),
    );
  }
}
