// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:besafe/app/settings/appbar_widget_setting.dart';

void main() {
  testWidgets('AppBarWidget Scenary Text', (tester) async {
    await tester.pumpWidget(AppBarWidgetSetting(title: Text('Safety4Me')));

    // Create the Finders.
    final titleFinder = find.text('Safety4Me');

    expect(titleFinder, findsOneWidget);
  });

  testWidgets('AppBarWidget Scenary Size', (tester) async {
    await tester.pumpWidget(AppBarWidgetSetting(title: Text('Safety4Me')));

    // Create the Finders.
    final Size baseSize = tester.getSize(find.byType(AppBar));
    debugPrint(baseSize.toString());

    expect(baseSize.height, equals(20.0));
  });

  testWidgets('AppBarWidget Scenary Error', (tester) async {
    await tester.pumpWidget(AppBarWidgetSetting(title: Text('Safety4Me')));

    // Create the Finders.
    final type = find.byType(Column);

    expect(type, findsNothing);
  });
}
