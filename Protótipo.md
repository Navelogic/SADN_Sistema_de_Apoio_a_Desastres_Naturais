# Protótipo

## Escopo do Aplicativo

![alt text](https://github.com/Navelogic/SADN_Sistema_de_Apoio_a_Desastres_Naturais/blob/3e7b59ec7d2623bb17ee16d38eaee14fdb8e8a5e/assets/images/page00.png?raw=true)
![alt text](https://github.com/Navelogic/SADN_Sistema_de_Apoio_a_Desastres_Naturais/blob/3e7b59ec7d2623bb17ee16d38eaee14fdb8e8a5e/assets/images/page01.png?raw=true)
![alt text](https://github.com/Navelogic/SADN_Sistema_de_Apoio_a_Desastres_Naturais/blob/3e7b59ec7d2623bb17ee16d38eaee14fdb8e8a5e/assets/images/page02.png?raw=true)

### Doação

Na tela de doação, o doador preencherá um formulário com informações da doação. A mesma pode ser - por exemplo - uma roupa, um alimento, um item de higiene, etc.  
O aplicativo cria um QR-Code com um objeto JSON que será impresso pelo doador.  
O doador entrega para um local de coleta que cadastrou seu estabelecimento atráves da página "Pontos de Coleta".  

### Pontos de Coleta

Um estabelecimento pode se cadastrar como ponto de coleta.
O mesmo recebe as doações devidamente identificadas com o QR-Code e as encaminha para um centro de distribuição (local onde os voluntários estão em atividade).  

### Centros de Distribuição

Através de Login, os centros de distribuição abrem um estoque no aplicativo.  
O centro irá escanear o QR-Code que automaticamente realiza o cadastro da doação no estoque.  
Quando uma doação é efetuada, escaneia-se novamente o QR-Code para removê-lo do estoque.  
Ainda é possível consultar um estoque geral, onde um centro que careça de algum item pode pedir para outros centros de distribuição se há possibilidade de buscar essa necessidade.