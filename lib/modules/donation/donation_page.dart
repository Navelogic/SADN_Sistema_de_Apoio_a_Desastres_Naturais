import 'package:flutter/material.dart';

class DoacaoPage extends StatelessWidget {
  const DoacaoPage({super.key});

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
                  'Somos profundamente gratos pela sua doação! As vítimas necessitam imensamente do seu apoio. Utilizando nosso app, além de ajudar as vítimas, sua contribuição também auxilia os voluntários dedicados que estão trabalhando incansavelmente para ajudar todos os envolvidos.',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Como utilizar este app ajuda os voluntários?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 10),
                const Text(
                  'Um dos principais problemas relatados em operações anteriores foi a falta de organização e controle das doações nos centros de distribuição. Nosso aplicativo visa aliviar essa responsabilidade dos voluntários, transferindo para os doadores a tarefa de identificar suas doações. Com apenas 1 ou 2 minutinhos do seu tempo para fazer essa identificação, podemos economizar várias horas de trabalho voluntário, que podem ser direcionadas para salvar vidas ativamente.',
                  style: TextStyle(fontSize: 13),
                ),
                const Text(
                  'Você só precisa clicar no botão abaixo, onde você irá completar um minúsculo formulário para descrever o que você está doando; imprimir um QR-Code e anexá-lo à sua doação. Esse QR-Code contém um pré-cadastro da sua doação que será escaneado no centro de distribuição em poucos segundos.',
                  style: TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      /// TO-DO:
                      /// Vai para uma página onde o doador completa informações sobre sua doação.
                      /// As informações classifiam a doação e geram um QR-Code de um JSON que contem essas informações cadastrais.
                    },
                    child: const Text('Quero fazer uma doação'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
