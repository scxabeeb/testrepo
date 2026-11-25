import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_4/main.dart';

void main() {
  testWidgets('Onboarding shows first page and swipes through pages',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // First page is visible.
    expect(find.text('Online Payment'), findsOneWidget);
    expect(find.text('Quickly Transfer'), findsNothing);
    expect(find.text('Get Started'), findsOneWidget);

    // Swipe to the second page.
    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();
    expect(find.text('Quickly Transfer'), findsOneWidget);

    // Swipe to the third page.
    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();
    expect(find.text('Saving Online'), findsOneWidget);
  });
}
