import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sadn/modules/dist/dist_page.dart';

void main() {
  group('Testes de Widget', () {
    testWidgets('Verifica se os textos, ícones e Tooltips estão presentes', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: CentroDistribuicaoPage(),
      ));

      expect(find.byKey(const Key("BUTTON_SCAN_INPUT")), findsOneWidget);
      expect(find.byKey(const Key("BUTTON_SCAN_OUTPUT")), findsOneWidget);
      expect(find.byKey(const Key("BUTTON_VIEW_STOCK")), findsOneWidget);
      expect(find.byKey(const Key("BUTTON_SEARCH_STOCK")), findsOneWidget);
    });

    testWidgets('Verifica se os dois ícones de scan QR-Code foram carregados', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: CentroDistribuicaoPage(),
      ));

      expect(find.byIcon(Icons.qr_code_scanner), findsNWidgets(2));
    });

  });
  
  group('Testes de Integração', () {
    testWidgets('Verifica se os botões são clicáveis e suas ações', (WidgetTester tester) async {
      //TO-DO

    });
  });
}