import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_personal_finance_app/main.dart';

void main() {
  testWidgets('Splash screen shows and navigates to logo screen', (WidgetTester tester) async {
    // App build karo
    await tester.pumpWidget(MyApp());

    // Splash screen content check karo
    expect(find.byIcon(Icons.flash_on), findsOneWidget);

    // Timer ke liye 3 seconds wait simulate karo
    await tester.pump(Duration(seconds: 3));

    // LogoScreen pe pohch gaye ya nahi, check karo
    expect(find.text('Welcome to Logo Screen!'), findsOneWidget);
  });
}
