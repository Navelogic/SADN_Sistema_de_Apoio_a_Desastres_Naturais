CREATE TABLE coletas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    rua VARCHAR(255),
    cidade VARCHAR(255),
    estado VARCHAR(255),
    cep VARCHAR(20),
    numero VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(255)
);

INSERT INTO coletas (nome, descricao, rua, cidade, estado, cep, numero, telefone, email)
VALUES
    ('Associação Viva Cidadania', 'Ponto de coleta de alimentos não perecíveis e roupas.', 'Rua da Assembléia, 100', 'Rio de Janeiro', 'RJ', '20011-000', '100', '(21) 3202-2345', 'contato@vivacidadania.org.br'),

    ('Campanha do Agasalho SP', 'Coleta de agasalhos e roupas para pessoas em situação de rua.', 'Avenida Paulista, 1578', 'São Paulo', 'SP', '01310-200', '1578', '(11) 3113-4200', 'contato@agasalho.org'),

    ('Banco de Alimentos de Porto Alegre', 'Coleta de alimentos para comunidades carentes.', 'Avenida Bento Gonçalves, 1901', 'Porto Alegre', 'RS', '91510-002', '1901', '(51) 3320-4567', 'bancodealimentos@poa.rs.gov.br'),

    ('Fundação Amor Horizontal', 'Coleta de brinquedos e materiais escolares.', 'Rua Gomes de Carvalho, 1507', 'São Paulo', 'SP', '04547-005', '1507', '(11) 3078-9987', 'amorhorizontal@fundacao.org'),

    ('Centro Espírita Nosso Lar', 'Coleta de alimentos e roupas para famílias carentes.', 'Rua Barão de Mesquita, 580', 'Rio de Janeiro', 'RJ', '20540-000', '580', '(21) 2572-8577', 'contato@nosolar.org.br'),

    ('Ação da Cidadania', 'Coleta de alimentos para distribuição em comunidades vulneráveis.', 'Rua da Glória, 344', 'Rio de Janeiro', 'RJ', '20241-180', '344', '(21) 2509-4557', 'contato@acaodacidadania.org.br'),

    ('GRAACC', 'Coleta de alimentos e materiais de higiene para pacientes em tratamento.', 'Rua Pedro de Toledo, 572', 'São Paulo', 'SP', '04039-001', '572', '(11) 5080-8400', 'graacc@graacc.org.br'),

    ('Instituto Vida Livre', 'Coleta de materiais para reabilitação de animais silvestres.', 'Rua Grajaú, 364', 'São Paulo', 'SP', '04746-000', '364', '(11) 5523-7474', 'contato@vidalivre.org'),

    ('Movimento Brasil Sem Fome', 'Coleta de alimentos não perecíveis para comunidades carentes.', 'Rua Major Sertório, 301', 'São Paulo', 'SP', '01222-000', '301', '(11) 3256-4900', 'brasilsemfome@movimento.org'),

    ('Projeto Sementes do Amanhã', 'Coleta de brinquedos e roupas para crianças carentes.', 'Rua Alice, 308', 'Rio de Janeiro', 'RJ', '22241-020', '308', '(21) 2556-9896', 'semente@amanha.org.br'),

    ('ONG Amigos do Bem', 'Coleta de alimentos, roupas e materiais escolares.', 'Rua Dr. Álvaro Alvim, 90', 'São Paulo', 'SP', '04018-010', '90', '(11) 5084-4140', 'contato@amigosdobem.org'),

    ('Lar Escola Cairbar Schutel', 'Coleta de alimentos e roupas para crianças e idosos.', 'Rua Francisco Matarazzo, 100', 'São Paulo', 'SP', '05001-000', '100', '(11) 3868-3600', 'contato@lecschutel.org'),

    ('Associação Aliança de Misericórdia', 'Coleta de alimentos e roupas para pessoas em situação de rua.', 'Rua Doutor Zuquim, 1127', 'São Paulo', 'SP', '02035-020', '1127', '(11) 2958-0210', 'alianca@misericordia.org.br'),

    ('Sociedade Viva Cazuza', 'Coleta de alimentos e roupas para crianças com HIV.', 'Rua Pinheiro Machado, 39', 'Rio de Janeiro', 'RJ', '22231-090', '39', '(21) 2551-5368', 'viva@cazuza.org.br'),

    ('Projeto Mutirão do Bem', 'Coleta de roupas e alimentos para comunidades carentes.', 'Avenida Rio Branco, 1', 'São Paulo', 'SP', '01205-000', '1', '(11) 3231-4343', 'contato@mutiraodobem.org'),

    ('Associação Comunitária Monte Azul', 'Coleta de alimentos e materiais escolares.', 'Rua Mário Lopes Leão, 329', 'São Paulo', 'SP', '05802-090', '329', '(11) 5851-5370', 'comunidade@monteazul.org.br'),

    ('ONG Canto Cidadão', 'Coleta de brinquedos e roupas para crianças carentes.', 'Rua Conselheiro Brotero, 391', 'São Paulo', 'SP', '01154-010', '391', '(11) 3667-0155', 'contato@cantocidadao.org.br'),

    ('Instituto Verdescola', 'Coleta de alimentos e materiais de higiene.', 'Rua Álvaro Rodrigues, 182', 'São Paulo', 'SP', '04582-000', '182', '(11) 3842-1900', 'contato@verdescola.org.br'),

    ('Associação Pão dos Pobres', 'Coleta de alimentos, roupas e brinquedos.', 'Rua da República, 801', 'Porto Alegre', 'RS', '90050-321', '801', '(51) 3223-1642', 'contato@paodospobres.org.br'),

    ('Gotas de Flor com Amor', 'Coleta de alimentos e roupas para crianças e adolescentes.', 'Rua Américo Brasiliense, 1922', 'São Paulo', 'SP', '04715-003', '1922', '(11) 5183-0911', 'contato@gotasdeflor.com.br');

