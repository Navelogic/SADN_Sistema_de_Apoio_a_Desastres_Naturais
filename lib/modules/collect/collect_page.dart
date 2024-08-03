import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PontosColetaPage extends StatelessWidget {
  const PontosColetaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quero ser um ponto de coleta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Para se anunciar como ponto de coleta para doações, clique no botão abaixo e insira as informações do seu estabelecimento:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // to-do: GOTO DIST-FORM
                    },
                    child: const Text('Quero ser um ponto de coleta'),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Pontos de Coleta perto de mim:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 10),
            
                // map widget
                const SizedBox(
                  height: 300, // Ajuste a altura conforme necessário
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-23.550520, -46.633308), // Exemplo: São Paulo, Brasil
                      zoom: 12,
                    ),
                    // Aqui você pode usar a chave da API carregada das variáveis de ambiente, se necessário
                  ),
                ),
            
                
                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
