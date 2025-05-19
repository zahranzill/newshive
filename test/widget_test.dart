import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newshivez/main.dart';
import 'package:newshivez/views/introduction_screen.dart';
import 'package:newshivez/views/splash_screen.dart';

void main() {
  testWidgets('Splash screen shows and navigates to introduction screen',
      (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const NewsHiveApp());

    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.text('NewsHive'), findsOneWidget);
    expect(find.byIcon(Icons.newspaper_rounded), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle(); // biar selesai semua animasi/navigasi

    expect(find.byType(IntroductionScreen), findsOneWidget);
    expect(find.text('Stay Informed, Anytime'), findsOneWidget);
    expect(find.text('Get Started'), findsOneWidget);
  });
}
