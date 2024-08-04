import 'package:flutter/material.dart';

class CentroDistribuicaoPage extends StatelessWidget {
  const CentroDistribuicaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // String temporária para representar o login do centro
    String loginLabel = '\$identificador_login';

    /// Haverá uma página para login/cadastro do centro.
    /// Voluntários poderam logar no estoque para fazer os cadastros.
    /// Cada centro terá seu próprio estoque.
    /// Também haverá um estoque geral de todos os centros.
    /// Quando um centro carecer de alguma coisa, ele pode pesquisar no estoque geral para ver se outros centros podem conceder o item necessário.

    return Scaffold(
      appBar: AppBar(
        title: Text(loginLabel),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Tooltip(
              message: 'Cadastrar uma doação no estoque',
              child: TextButton.icon(
                onPressed: () {
                    /// TO-DO:
                    /// Vai para uma página que scaneia o QR-Code que foi impresso em cima da doação.
                    /// O QR-Code vem estruturado como um JSON que é diretamente colocado no estoque do centro.
                },
                icon: const Icon(Icons.qr_code_scanner, size: 40, color: Colors.green),
                label: const Text(
                  'Entrada de Doação',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Tooltip(
              message: 'Tirar uma doação do estoque',
              child: TextButton.icon(
                onPressed: () {
                    /// TO-DO:
                    /// Vai para uma página que scaneia o QR-Code que foi impresso em cima da doação.
                    /// O QR-Code vem estruturado como um JSON que é rapidamente removido do estoque do centro.
                },
                icon: const Icon(Icons.qr_code_scanner, size: 40, color: Colors.red),
                label: const Text(
                  'Saída de Doação',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Tooltip(
              message: 'Visão geral das doações disponíveis',
              child: TextButton.icon(
                onPressed: () {
                    /// TO-DO:
                    /// Vai para uma página que lista todos os itens que estão no estoque do centro logado.
                },
                icon: const Icon(Icons.inventory_2_outlined, size: 40, color: Colors.black),
                label: const Text(
                  'Consulta de Estoque',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Tooltip(
              message: 'Visão geral das doações disponíveis',
              child: TextButton.icon(
                onPressed: () {
                    /// TO-DO:
                    /// Vai para uma página que lista todos os itens que estão no estoque do centro logado.
                    /// É possível pesquisar por um item específico que vai mostrar qual centro tem o item.
                    /// Assim, um centro pode entrar em contato com o outro para pedir se podem ter o item desejado.
                    ///   TO-DO:
                    ///   in-app messaging/notification system pra englobar essa necessidade.
                },
                icon: const Icon(Icons.content_paste_search, size: 40, color: Colors.black),
                label: const Text(
                  'Buscar em outros centros',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
