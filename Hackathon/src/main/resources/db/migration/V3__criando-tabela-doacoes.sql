CREATE TABLE doacoes (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         coleta_id BIGINT,
                         FOREIGN KEY (coleta_id) REFERENCES coletas(id)
);

CREATE TABLE itens (
                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       quantidade INT NOT NULL,
                       categoria VARCHAR(255),
                       doacao_id BIGINT,
                       item_type VARCHAR(255) NOT NULL, -- Coluna discriminadora para identificar o tipo de item

    -- Campos específicos para a subclasse Roupa
                       tamanho VARCHAR(255),
                       genero VARCHAR(255),
                       material VARCHAR(255),
                       observacao TEXT,

    -- Campos específicos para a subclasse Alimento
                       tipo VARCHAR(255),
                       validade DATE,
                       peso VARCHAR(255),

    -- Chave estrangeira para a tabela doacoes
                       CONSTRAINT fk_doacao FOREIGN KEY (doacao_id) REFERENCES doacoes(id)
);

-- Inserindo registros na tabela doacoes
INSERT INTO doacoes (coleta_id) VALUES (1);
INSERT INTO doacoes (coleta_id) VALUES (2);
INSERT INTO doacoes (coleta_id) VALUES (3);

-- Inserindo registros para Alimentos na tabela itens
INSERT INTO itens (quantidade, doacao_id, item_type, tipo, validade, categoria, peso)
VALUES (50, 1, 'Alimento', 'Enlatado', '2025-12-31', 'Conserva', '500g');

INSERT INTO itens (quantidade, doacao_id, item_type, tipo, validade, categoria, peso)
VALUES (30, 2, 'Alimento', 'Grão', '2024-06-30', 'Leguminosas', '1kg');

INSERT INTO itens (quantidade, doacao_id, item_type, tipo, validade, categoria, peso)
VALUES (20, 3, 'Alimento', 'Perecível', '2024-01-15', 'Laticínios', '200g');

-- Inserindo registros na tabela itens para Roupa
INSERT INTO itens (quantidade, doacao_id, item_type, tamanho, genero, material, observacao, categoria)
VALUES (10, 1, 'Roupa', 'M', 'Masculino', 'Algodão', 'Nenhuma observação', 'Camiseta');

INSERT INTO itens (quantidade, doacao_id, item_type, tamanho, genero, material, observacao, categoria)
VALUES (5, 1, 'Roupa', 'G', 'Feminino', 'Lã', 'Tricô manual', 'Suéter');

INSERT INTO itens (quantidade, doacao_id, item_type, tamanho, genero, material, observacao, categoria)
VALUES (7, 2, 'Roupa', 'P', 'Unissex', 'Poliéster', 'Com estampa', 'Calça');

INSERT INTO itens (quantidade, doacao_id, item_type, tamanho, genero, material, observacao, categoria)
VALUES (3, 2, 'Roupa', 'M', 'Masculino', 'Jeans', 'Levemente usada', 'Calça Jeans');

INSERT INTO itens (quantidade, doacao_id, item_type, tamanho, genero, material, observacao, categoria)
VALUES (12, 3, 'Roupa', 'Único', 'Feminino', 'Seda', 'Nenhuma observação', 'Vestido');