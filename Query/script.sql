-- CRIAÇÃO DO BANCO DE DADOS CHAMADO DESAFIOGAMA
CREATE DATABASE DesafioGama;
-- UTILIZAÇÃO DO BANCO DE DADOS DESAFIOGAMA
USE DesafioGama;

-- INSERINDO AS TABELAS
CREATE TABLE cliente(
id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, 
email VARCHAR(70) NOT NULL UNIQUE, 
senha VARCHAR(20) NOT NULL, 
cpf VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE departamento(
codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome   VARCHAR(50) NOT NULL, 
descricao TEXT
);

CREATE TABLE endereco(
num_seq    INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
tipo       VARCHAR(5) NOT NULL, 
logradouro VARCHAR(45) NOT NULL, 
numero     INTEGER, 
complemento VARCHAR(20), 
bairro     VARCHAR(30), 
cidade     VARCHAR(50),
estado     VARCHAR(2),
cep        VARCHAR(10), 
cliente_id INTEGER NOT NULL,
CONSTRAINT endereco_cliente FOREIGN KEY 
(cliente_id) REFERENCES cliente(id)
);

CREATE TABLE pedido(
numero INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
status VARCHAR(1) NOT NULL, 
data_pedido DATE, 
valor_bruto DOUBLE, 
desconto    DOUBLE, 
valor_final   DOUBLE, 
cliente_id INTEGER NOT NULL,
	CONSTRAINT cliente_pedido FOREIGN KEY 
	(cliente_id) REFERENCES cliente(id)
);

CREATE TABLE produto(
codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(45) NOT NULL, 
descricao TEXT,
preco DOUBLE, 
estoque INTEGER, 
link_foto VARCHAR(255), 
departamento_codigo INTEGER NOT NULL,
	CONSTRAINT produto_depto FOREIGN KEY 
	(departamento_codigo) REFERENCES departamento(codigo)

);

CREATE TABLE item_pedido(
num_sequencial INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
quantidade INTEGER, 
valor_unitario DOUBLE, 
valor_total DOUBLE, 
produto_codigo INTEGER NOT NULL, 
pedido_numero INTEGER NOT NULL,
	CONSTRAINT item_produto FOREIGN KEY 
	(produto_codigo) REFERENCES produto(codigo),
	CONSTRAINT item_pedido FOREIGN KEY 
    	(pedido_numero) REFERENCES pedido(numero)
);


-- Exercício 1: Inserindo dados nas tabelas
-- CLIENTES
INSERT INTO cliente VALUES (null, "Antonio Carlos","antoniocarlos@mail.com","987654","765.432.987.10");
INSERT INTO cliente VALUES (null, "Carina Andrade", "carinaandr@mail.com", "659821", "85623614522");
INSERT INTO cliente VALUES (null, "Andreia Moraes", "andreiam@mail.com", "5891264", "256.215.458-58");
INSERT INTO cliente VALUES (null, "Alessandro Gonçalves", "alegoncalves@mail.com", "459595", "658.256.245-36");
INSERT INTO cliente VALUES (null, "Renato Oliveira", "reoliveira@mail.com", "8446666", "45523625622");
INSERT INTO cliente VALUES (null, "Paula Garcia", "garciapaula@mail.com", "556566", "58963214588");
INSERT INTO cliente VALUES (null, "Gabriel Barreto", "gabbareeto@mail.com", "895223", "58963214988");
INSERT INTO cliente VALUES (null, "Fernanda Silva", "fesilva@mail.com", "6253984", "98512536488");
INSERT INTO cliente VALUES (null, "Beatriz Andrade", "biandrade@mail.com", "12536585", "125.365.365-96");
INSERT INTO cliente VALUES (null, "Arthur Oliveira", "arthuro@mail.com", "985632", "25814923699");

-- DEPARTAMENTOS
INSERT INTO departamento VALUES (null, "Móveis", "Móveis para sua casa");
INSERT INTO departamento VALUES (null, "Celulares", "Celulares para se comunicar");
INSERT INTO departamento VALUES (null, "Eletrodomésticos", "Conforto para sua casa");
INSERT INTO departamento VALUES (null, "Informática", "Tudo pra se manter atualizado");

-- ENDEREÇOS
INSERT INTO endereco VALUES (null, "Rua", "Itabira", "256", "Ap 802", "Centro", "São Roque", "SP", "85536325", 1);
INSERT INTO endereco VALUES (null, "Av.", "Otavio Costa", "589", "Ed. Arantes", "Centro", "São Paulo", "SP", 98563256, 1);
INSERT INTO endereco VALUES (null, "Rua", "Tamoio", "963", "12A", "São Cristovão", "Paranaguá", "PR", "36638145", 2);
INSERT INTO endereco VALUES (null, "Rua", "João Paulo II", "25", "Ap 201", "Fraron", "Niterói", "RJ", "89651236", 3);
INSERT INTO endereco VALUES (null, "Av.", "Irineu Ramos", "9866", "Ed. Flores", "Santa Cecilia", "Porto Alegre", "RS", "58697125", 4);
INSERT INTO endereco VALUES (null, "Rua", "Assis Soares", "365", "Casa do fundo", "Sto Antonio", "Blumenau", "SC", "85623048", 5);
INSERT INTO endereco VALUES (null, "Rua", "Andre Ribeiro", "658", "", "St.Lucia", "Belo Horizonte", "MG", "853690126", 6);
INSERT INTO endereco VALUES (null, "Av.", "Sergio Paes", "1235", "sala 2", "Centro", "Vitória", "ES", "98563014", 6);
INSERT INTO endereco VALUES (null, "Rua", "Artur Veslasq", "985", "", "St.Luzia", "Goiania", "GO", "98523025", 7);
INSERT INTO endereco VALUES (null, "Av.", "General Carneiro", "925", "", "Centro", "Natal", "RN", "98562147", 8);
INSERT INTO endereco VALUES (null, "Rua", "Itapua", "63", "Casa azul", "Sto Espedito", "Santos", "SP", "58862147", 9);
INSERT INTO endereco VALUES (null, "Rua", "Iguaçu", "89", "", "Tapir", "Foz do Iguaçu", "PR", "58896365", 10);

-- PRODUTOS
INSERT INTO produto VALUES (null, "Smartphone LG K52", "64GB Verde 4G Octa-Core 3GB RAM", 950, 5, "www.googe.com.br", 2);
INSERT INTO produto VALUES (null, "Guarda Roupa Casal com Espelho", "3 Portas 2 Gavetas Istambul Espresso Móveis Branco", 650, 2, "www.google.com.br", 1);
INSERT INTO produto VALUES (null, "Micro-ondas Electrolux 34 Litros", "Função Tira Odor e Manter Aquecido Branco MEO44 127 Volts", 450, 3, "www.google.com.br", 3);
INSERT INTO produto VALUES (null, "Notebook HP Intel Core i3", "8GB 256GB SSD 15,6” - HD Windows 11 256 G8", 2800, 3, "www.google.com", 4);
INSERT INTO produto VALUES (null, "Cadeira Gamer XT Racer", "Reclinável Preta e Laranja - Speed Series XTS120", 900, 5, "www.google.com", 4);
INSERT INTO produto VALUES (null, "Geladeira/Refrigerador Consul", "Frost Free Duplex - Evox 397L CRE44AK 127 volts", 3550, 6, "www.google.com", 3);
INSERT INTO produto VALUES (null, "Smartphone Nokia 5.4 128GB", "Azul 4G Octa-Core - 4GB RAM Tela 6,39” Câm. Quádrupla + Selfie 16MP", 1800, 6, "www.google.com.br", 2);
INSERT INTO produto VALUES (null, "Conjunto Mesas Sala Retrô", "Pés Palito Mesas Apoio / Lateral / Centro Cores Diversas - ORB - Lojas GD", 120, 4, "www.google.com", 1);
INSERT INTO produto VALUES (null, "iPhone 11", "Apple 64GB Branco 6,1” 12MP iOS", 4000, 9, "", 2);
INSERT INTO produto VALUES (null, "Painel Nairóbi para TV", "Multimóveis para TV de até 60 Polegadas com Nicho - Preto", 350, 10, "", 1);
INSERT INTO produto VALUES (null, "Cozinha Completa", "Madesa Reims 260001 com Armário e Balcão - Preto/Rustic", 1500, 5, "", 1);
INSERT INTO produto VALUES (null, "Escrivaninha", "Lindóia 2 Gavetas - Politorno 1194", 250, 7, "", 1);
INSERT INTO produto VALUES (null, "Impressora Multifuncional Epson Ecotank", "L3250 - Tanque de Tinta Colorida USB Wi-Fi", 1200, 6, "", 4);

-- PEDIDOS
INSERT INTO pedido VALUES (null, "F", "2021-01-02", 4000, 200, 3800, 1); 
INSERT INTO pedido VALUES (null, "F", "2021-01-26", 450, 0, 450, 3); 
INSERT INTO pedido VALUES (null, "F", "2021-02-08", 1800, 200, 1600, 5); 
INSERT INTO pedido VALUES (null, "F", "2021-02-27", 650, 0, 650, 7);     
INSERT INTO pedido VALUES (null, "F", "2021-06-01", 3700, 200, 3500, 9); 
INSERT INTO pedido VALUES (null, "F", "2021-06-21", 950, 0, 950, 2); 
INSERT INTO pedido VALUES (null, "F", "2021-08-03", 120, 0, 120, 4);
INSERT INTO pedido VALUES (null, "F", "2021-08-23", 1500, 50, 1450, 6);
INSERT INTO pedido VALUES (null, "F", "2021-10-12", 4000, 100, 3900, 8);
INSERT INTO pedido VALUES (null, "F", "2021-10-30", 1450, 50, 1400, 10);
INSERT INTO pedido VALUES (null, "F", "2021-12-15", 3900, 50, 3850, 7);
INSERT INTO pedido VALUES (null, "F", "2021-12-30", 4000, 100, 3900, 5);


-- ITEM_PEDIDO
INSERT INTO item_pedido VALUES (null, 1, 3550, 3500, 6, 1);
INSERT INTO item_pedido VALUES (null, 1, 450, 450, 3, 1);
INSERT INTO item_pedido VALUES (null, 1, 450, 450, 3, 2);
INSERT INTO item_pedido VALUES (null, 1, 1800, 1800, 7, 3);
INSERT INTO item_pedido VALUES (null, 1, 650, 650, 2, 4);
INSERT INTO item_pedido VALUES (null, 1, 2800, 2800, 4, 5);
INSERT INTO item_pedido VALUES (null, 1, 900, 900, 5, 5);
INSERT INTO item_pedido VALUES (null, 1, 950, 950, 1, 6);
INSERT INTO item_pedido VALUES (null, 1, 120, 120, 8, 7);
INSERT INTO item_pedido VALUES (null, 1, 1500, 1500, 11, 8);
INSERT INTO item_pedido VALUES (null, 1, 4000, 4000, 9, 9);
INSERT INTO item_pedido VALUES (null, 1, 250, 250, 12, 10);
INSERT INTO item_pedido VALUES (null, 1, 1200, 1200, 13, 10);
INSERT INTO item_pedido VALUES (null, 1, 350, 350, 10, 11);
INSERT INTO item_pedido VALUES (null, 1, 3550, 3550, 6, 11);
INSERT INTO item_pedido VALUES (null, 1, 4000, 4000, 9, 12);


-- Exercício 2: Quantos clientes tenho cadastrado? 
select count(id) from cliente;
-- 5 clientes

-- Exercício 3: Qual o produto mais caro? 
select * from produto where preco = (select max(preco) from produto);
-- Geladeira: 3550,00

-- Exercício 4: Qual o produto mais barato? 
select * from produto where preco = (select min(preco) from produto);
-- Conjunto mesas: 120,00

-- Exercício 5: Mostrar todos produtos com os respectivos departamentos
select produto.nome, produto.departamento_codigo from produto inner join departamento
	on departamento.codigo = departamento_codigo;

-- Exercício 6: Quantos produtos tem em cada departamento?  
select departamento_codigo, sum(estoque) from produto
	GROUP BY departamento_codigo;
-- Outra Solução para o exercicio 6 -----
SELECT departamento_codigo, sum(produto.estoque) AS "Qtde produtos por departamento", 
	departamento.nome  FROM produto INNER JOIN departamento
    ON departamento.codigo = produto.departamento_codigo
	GROUP BY departamento.nome;

-- Exercício 7: Mostrar dados do pedido, incluindo nome dos clientes e nome dos produtos vendidos
SELECT * FROM pedido INNER JOIN item_pedido ON pedido.numero = item_pedido.pedido_numero
	INNER JOIN produto ON produto.codigo = item_pedido.produto_codigo
    INNER JOIN cliente ON pedido.cliente_id = cliente.id;

-- Exercício 8: Mostrar quantos pedidos foram feitos por mês em 2022
SELECT count(*) FROM pedido WHERE data_pedido >= "2022-01-01";

-- Exercício 9: Mostre quanto foi faturado por mês 
SELECT data_pedido, sum(valor_final) AS "Faturamento por mês"  FROM pedido GROUP BY data_pedido;

-- Exercício 10: Mostre o valor total do estoque por departamento
SELECT departamento_codigo, sum(preco*estoque) AS "Total departamento", departamento.nome  FROM produto INNER JOIN departamento
    ON departamento.codigo = produto.departamento_codigo
	GROUP BY departamento.nome;


