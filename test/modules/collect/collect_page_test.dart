import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sadn/modules/collect/collect_page.dart';

void main() {
  group('Testes de Widget', () {
    testWidgets('Verifica se o botão está presente', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: PontosColetaPage(),
      ));

      expect(find.byKey(const Key('ELEVATEDBUTTON_BEAMARKER')), findsOneWidget);
    });

    testWidgets('Verifica se o GoogleMapsWidget está presente', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: PontosColetaPage(),
      ));

      expect(find.byType(GoogleMap), findsOneWidget);
    });
  });

  //TO-DO: Teste de integração com o mapa
}
