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
                  'Quer se registrar como um ponto de coleta?',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Se você possui um estabelecimento comercial e quer colaborar, pode colocar no mapa abaixo sua localização. Seu estabelecimento vai aparecer no mapa para todos doadores próximos. \nPara se anunciar como ponto de coleta para doações, clique no botão abaixo e insira as informações do seu estabelecimento.',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      /// TO-DO:
                      /// Vai para um formulário onde o estabelecimento coloca seu endereço no mapa.
                      /// Este endereço vira um marker no mapa e fica visível para todos nesta página.
                    },
                    child: const Text('Quero ser um ponto de coleta'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Pontos de Coleta perto de mim:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 10),
            
                const SizedBox(
                  height: 300,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(-23.550520, -46.633308),
                      /// TO-DO:
                      /// Montar um getter da localização atual do usuário do app.
                      zoom: 12,
                    ),
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
