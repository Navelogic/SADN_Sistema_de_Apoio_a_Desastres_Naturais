# SADN_Sistema_de_Apoio_a_Desastres_Naturais

Projeto de Aplicativo para Organização de Doações em Situações de Crise

## Desenvolvedores

[Arian Wesley](https://github.com/Navelogic)
[Wagner S Chittó](https://github.com/Treorai)

## Tecnologias
- FrontEnd
    - Flutter
- Backend (API)
    - Java
    
## Introdução

A recente tragédia no Rio Grande do Sul evidenciou a importância da tecnologia em situações de crise. Diversos aplicativos de ajuda humanitária foram desenvolvidos para auxiliar na organização e distribuição de recursos nos núcleos de suporte às vítimas das enchentes. No entanto, a eficácia dessas ferramentas foi prejudicada pela necessidade de constante atualização manual das informações sobre as demandas de cada ponto de apoio, que resultou em um cenário de confusão geral pois as informações sobre demandas, necessidades e disponibilidades estavam frequentemente desatualizadas.

### Relato de voluntários sobre sua experiência durante as enchentes no Rio Grande do Sul em 2023 e 2024:

> "Não existiu uma organização entre as entidades públicas de gerenciar voluntários e recursos, de forma que foi totalmente organizada por organizações privadas. [...] Isso cansou muita gente e foi fonte de perda."
<div style="text-align: right"><i> - M.</i></div>

> "Da minha esperiencia, um app que facilitasse gestão de estoque poderia ser útil. Algo q facilitasse vizualizar e atualizar o que se recebe de roupas e mantimentos"
<div style="text-align: right"><i> - A.</i></div>

> "Aconteceu muito de haver doações que chegavam em locais que já não precisavam daque tipo de doação, criando uma situação em que sobrava doações em um local e faltava em outro."
<div style="text-align: right"><i> - W.</i></div>

> "Haviam vários aplicativos, fora as inúmeras planilhas. O problema é que sem atualização constante, não funciona."
<div style="text-align: right"><i> - J.</i></div>

> "A maioria dos aplicativos mais atrapalhavam do que ajudavam porque nunca eram atualizados"
<div style="text-align: right"><i> - S.</i></div>

A falta de atualização em tempo real dos dados sobre as necessidades de cada ponto de apoio gerou caos e ineficiência na distribuição de recursos. Voluntários e doações eram direcionados para locais que já estavam abastecidos, enquanto outros permaneciam com carências críticas.

Com base nessa problemática, nosso projeto visa acelerar o processo de catalogar as doações, tirando essa responsabilidade do centro de distribuição e alocando-a para o próprio doador.

> "Imagine que leva 2 minutos para pré cadastrar uma doação. Se 3000 pessoas que doarem investirem esses 2 minutos, o centro de distribuição ganhou 100 horas. Imagine o impacto."
<div style="text-align: right"><i> - Watto.</i></div>

## Escopo do Aplicativo

### Entidade 'Doador'

- Entra no aplicativo
- Faz o cadastro de um item para doação
- Imprime um QR code que vai como um identificador sobre a doação

### Entidade 'Local de Coleta'

- Se cadastra como local de coleta
- Usado para aparecer em uma tela 'Encontre os locais de doação próximos'
- Recebe e encaminha doações para os locais de distribuição

### Entidade 'Local de Distribuição'

- Recebe doações identificadas
- Scaneia o QR code, que gera um JSON para rápido cadastro em um sistema interno
- A doação é armazenada no local até que possa ser encaminhada
- Quando estiver pronta para ser doada, é novamente scaneada dando baixa no estoque

### Observações sobre doação

Classificação de doação sob sugestão de voluntários que experienciaram o processo:

- Entidade `Doação`
    - **Roupa**
        - Camisetas (`bool`, `Tamanho`)
        - Calças (`M/F`, `Tamanho`)
        - Abrigo ao Frio [Casacos, Moletons, Blusões, etc] (`M/F`, `Tamanho`)
        - Sutiã (`Tamanho`)
        - Calcinha (`Tamanho`)
        - Cueca (`Tamanho`)
        - Meias (`Tamanho`)
    
    - **Casa, Mesa, Banho**
        - Lençol (`Adulto/Bebê`)
        - Lençol Elástico (`Adulto/Bebê`)
        - Coberta (`Adulto/Bebê`)
        - Edredom (`Adulto/Bebê`)
        - Travesseiro (`Adulto/Bebê`)
        - Fronha (`Adulto/Bebê`)
        - Coberta Peluciada (`Adulto/Bebê`)
        - Toalha de Rosto
        - Toalha de Banho
        - Toalha de Cozinha
    
    - **Alimentos**  
    São recebidos aleatoriamente, mas são doados em cestas báscias:
        - `2kg` Arroz
        - `1 a 1.5kg` Feijão
        - `1kg` Açúcar
        - `1kg` Farinha
        - `1kg` Massa
        - `2 pacotes` Molho de Tomate
        - `1L` Óleo
        - `1 pacote` Café
        - `1L` Leite
        - Adicionais [Nescau, bolacha, leite em pó, etc,... "O que estivesse sobrando"]
    
    - **Produtos de Higiene**
        - Shampoo
        - Condicionador
        - Sabonetes
        - Escova de dente
        - Pasta de dente

    - **Produtos de Limpeza**  
    Também enviados como kit (cesta básica)
        - `2un` Detergente
        - Pacote de esponja
        - Água sanitária
        - Limpador multiuso
        - Desinfetante
        - Pano de chão
        - *Algum tipo de cheirinho* [eg. Ajax]
        - Sabão para roupa
        - Amaciante para roupa
        - Adicionais [Desengordurante, saponáceo, limpa-vidros, etc]
