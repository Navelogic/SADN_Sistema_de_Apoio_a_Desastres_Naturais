import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sadn/main.dart';

void main() {
  group('Teste de Widget', () {
    testWidgets('Verifica existência dos botões de navecação', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.byKey(const Key("DOACAO_NAVIGATION_BUTTON")), findsOneWidget);
      expect(find.byKey(const Key("COLETA_NAVIGATION_BUTTON")), findsOneWidget);
      expect(find.byKey(const Key("CENTRO_NAVIGATION_BUTTON")), findsOneWidget);
    });
  });

  group('Teste de Navegação', () {
    testWidgets('Navegar para Pontos de Coleta', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byKey(const Key("COLETA_NAVIGATION_BUTTON")));
      await tester.pumpAndSettle();
      expect(find.text('Pontos de Coleta'), findsExactly(2)); // Encontrar 2 widgets: buttonText and Appbar label
    });
  });

    testWidgets('Navegar para Centro de Distribuição', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byKey(const Key("CENTRO_NAVIGATION_BUTTON")));
      await tester.pumpAndSettle();
      expect(find.text('Centro de Distribuição'), findsExactly(2)); // Encontrar 2 widgets: buttonText and Appbar label
    });

    testWidgets('Navegar de volta para Doação', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byKey(const Key("DOACAO_NAVIGATION_BUTTON")));
      await tester.pumpAndSettle();
      expect(find.text('Doação'), findsExactly(2)); // Encontrar 2 widgets: buttonText and Appbar label
  });
}
