# SADN_Sistema_de_Apoio_a_Desastres_Naturais

Projeto de Aplicativo para Organização de Doações em Situações de Crise.

## Desenvolvedores

[Arian Weslley](https://github.com/Navelogic)  
[Wagner Spinato Chittó](https://github.com/Treorai)

## Tecnologias
- FrontEnd
    - Flutter
        - [flutter_google_maps](https://pub.dev/packages/google_maps_flutter)
- Backend (API)
    - Java
    
## Introdução

Este projeto foi concebido durante a [Hackathon da Fernanda Kipper](https://github.com/Fernanda-Kipper/hackathon-2024).
A proposta é maravilhosa e acreditamos que tem muito potencial para ajudar todos os envolvidos quando uma próxima catástrofe infelizmente voltar a acontecer.
Infelizmente o prazo dessa Hackathon foi muito apertado e não conseguimos finalizar o programa todo, mas pretendemos seguir com esse projeto mesmo após o fim do Hackathon.

## Motivação

A recente tragédia no Rio Grande do Sul evidenciou a importância da tecnologia em situações de crise. Diversos aplicativos de ajuda humanitária foram desenvolvidos para auxiliar na organização e distribuição de recursos nos núcleos de suporte às vítimas das enchentes. No entanto, a eficácia dessas ferramentas foi prejudicada pela necessidade de constante atualização manual das informações sobre as demandas de cada ponto de apoio, que resultou em um cenário de confusão geral pois as informações sobre demandas, necessidades e disponibilidades estavam frequentemente desatualizadas.

### Relato de voluntários sobre sua experiência durante as enchentes no Rio Grande do Sul em 2023 e 2024:

> "Não existiu uma organização entre as entidades públicas de gerenciar voluntários e recursos, de forma que foi totalmente organizada por organizações privadas. [...] Isso cansou muita gente e foi fonte de perda."
<div dir="rtl"><i> .M -</i></div>

> "Da minha esperiencia, um app que facilitasse gestão de estoque poderia ser útil. Algo q facilitasse vizualizar e atualizar o que se recebe de roupas e mantimentos"
<div dir="rtl"><i> .A -</i></div>

> "Aconteceu muito de haver doações que chegavam em locais que já não precisavam daque tipo de doação, criando uma situação em que sobrava doações em um local e faltava em outro."
<div dir="rtl"><i> .W -</i></div>

> "Haviam vários aplicativos, fora as inúmeras planilhas. O problema é que sem atualização constante, não funciona."
<div dir="rtl"><i> .J -</i></div>

> "A maioria dos aplicativos mais atrapalhavam do que ajudavam porque nunca eram atualizados"
<div dir="rtl"><i> .S -</i></div>

A falta de atualização em tempo real dos dados sobre as necessidades de cada ponto de apoio gerou caos e ineficiência na distribuição de recursos. Voluntários e doações eram direcionados para locais que já estavam abastecidos, enquanto outros permaneciam com carências críticas.

Com base nessa problemática, nosso projeto visa acelerar o processo de catalogar as doações, tirando essa responsabilidade do centro de distribuição e alocando-a para o próprio doador.

> "Imagine que leva 2 minutos para pré cadastrar uma doação. Se 3000 pessoas que doarem investirem esses 2 minutos, o centro de distribuição ganhou 100 horas. Imagine o impacto."
<div dir="rtl"><i> .Watto -</i></div>

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
- Ao mesmo tempo, há um cadastro automático que guarda todas as doações de todos os centros de distribuição. Um centro que tiver carente de alguma demanda pode pedir para outros centros. (Temos intenção de montar um contato dentro do app para isso)

## PITCH

[Link para o pitch](https://youtu.be/aQ8GutxM8Q0)