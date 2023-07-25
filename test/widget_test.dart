// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled22/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Bottom Navigation Bar Test', (WidgetTester tester) async {
    // Uygulamayı başlatın
    await tester.pumpWidget(MyApp());

    // Başlangıçta sayfa 1 (Ana Sayfa) gösteriliyor olmalı
    expect(find.text('Sayfa 1'), findsOneWidget);
    expect(find.text('Sayfa 2'), findsNothing);
    expect(find.text('Sayfa 3'), findsNothing);

    // "Ara" sekmesine tıklayın
    await tester.tap(find.byIcon(SvgPicture.asset('assets/icons/search.svg') as IconData));
    await tester.pumpAndSettle();

    // Şimdi sayfa 2 (Ara) gösteriliyor olmalı
    expect(find.text('Sayfa 1'), findsNothing);
    expect(find.text('Sayfa 2'), findsOneWidget);
    expect(find.text('Sayfa 3'), findsNothing);

    // "Ayarlar" sekmesine tıklayın
    await tester.tap(find.byIcon(SvgPicture.asset('assets/icons/settings.svg') as IconData));
    await tester.pumpAndSettle();

    // Şimdi sayfa 3 (Ayarlar) gösteriliyor olmalı
    expect(find.text('Sayfa 1'), findsNothing);
    expect(find.text('Sayfa 2'), findsNothing);
    expect(find.text('Sayfa 3'), findsOneWidget);

    // "Ana Sayfa" sekmesine tıklayın
    await tester.tap(find.byIcon(SvgPicture.asset('assets/icons/home.svg') as IconData));
    await tester.pumpAndSettle();

    // Son olarak tekrar sayfa 1 (Ana Sayfa) gösteriliyor olmalı
    expect(find.text('Sayfa 1'), findsOneWidget);
    expect(find.text('Sayfa 2'), findsNothing);
    expect(find.text('Sayfa 3'), findsNothing);
  });
}
