CREATE TABLE doadores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    rua VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(2),
    cep VARCHAR(10),
    numero VARCHAR(10)
);

INSERT INTO doadores (nome, email, telefone, rua, cidade, estado, cep, numero)
VALUES ('Maria Silva', 'maria.silva@example.com', '(11) 98765-4321', 'Rua das Flores', 'São Paulo', 'SP', '12345-678', '101');

INSERT INTO doadores (nome, email, telefone, rua, cidade, estado, cep, numero)
VALUES ('João Pereira', 'joao.pereira@example.com', '(21) 99876-5432', 'Avenida Central', 'Rio de Janeiro', 'RJ', '22333-445', '202');

INSERT INTO doadores (nome, email, telefone, rua, cidade, estado, cep, numero)
VALUES ('Ana Costa', 'ana.costa@example.com', '(31) 91234-5678', 'Rua das Acácias', 'Belo Horizonte', 'MG', '30456-789', '303');

INSERT INTO doadores (nome, email, telefone, rua, cidade, estado, cep, numero)
VALUES ('Carlos Souza', 'carlos.souza@example.com', '(41) 92345-6789', 'Rua do Limoeiro', 'Curitiba', 'PR', '80740-110', '404');

INSERT INTO doadores (nome, email, telefone, rua, cidade, estado, cep, numero)
VALUES ('Juliana Mendes', 'juliana.mendes@example.com', '(51) 93456-7890', 'Avenida das Américas', 'Porto Alegre', 'RS', '91750-000', '505');
