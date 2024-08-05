import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sadn/modules/donation/donation_page.dart';

void main() {
  group('DoacaoPage Teste de Widget', () {
    testWidgets('Verifica se a página foi carregada', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: DoacaoPage(),
      ));

      // Se foi carregada, vai encontrar o botão:
      expect(find.text('Quero fazer uma doação'), findsOneWidget);
      });
  });

  group('Teste Integrado', () {
    testWidgets('Verifica o cadastro e download do QR-Code', (WidgetTester tester) async {
      //TO-DO

    });
  });
}