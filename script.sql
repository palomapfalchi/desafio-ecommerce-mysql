-- criação do banco de dados chamado desafioGama
CREATE DATABASE desafioGama;
-- utilizando o banco de dados criado
use desafioGama;

-- Exercício 1: Inserindo dados na tabela
-- cliente
INSERT INTO cliente VALUES (null, "Antonio Carlos","antoniocarlos@mail.com","987654","765.432.987.10");
INSERT INTO cliente VALUES (null, "Carina Andrade", "carinaandr@mail.com", "659821", "85623614522");
INSERT INTO cliente VALUES (null, "Andreia Moraes", "andreiam@mail.com", "5891264", "256.215.458-58");
INSERT INTO cliente VALUES (null, "Alessandro Gonçalves", "alegoncalves@mail.com", "459595", "658.256.245-36");
INSERT INTO cliente VALUES (null, "Renato Oliveira", "reoliveira@mail.com", "8446666", "45523625622");

-- departamento
INSERT INTO departamento VALUES (null, "Móveis", "Móveis para sua casa");
INSERT INTO departamento VALUES (null, "Celulares", "Celulares para se comunicar");
INSERT INTO departamento VALUES (null, "Eletrodomésticos", "Conforto para sua casa");
INSERT INTO departamento VALUES (null, "Informática", "Tudo pra se manter atualizado");
select * from departamento;
-- endereco
INSERT INTO endereco VALUES (null, "Rua", "Itabira", "256", "Ap 802", "Centro", "São Roque", "SP", "85536325", 1);
INSERT INTO endereco VALUES (null, "Av.", "Otavio Costa", "589", "Ed. Arantes", "Centro", "São Paulo", "SP", 98563256, 1);
INSERT INTO endereco VALUES (null, "Rua", "Tamoio", "963", "12A", "São Cristovão", "Paranaguá", "PR", "36638145", 2);
INSERT INTO endereco VALUES (null, "Rua", "João Paulo II", "25", "Ap 201", "Fraron", "Niterói", "RJ", "89651236", 3);
INSERT INTO endereco VALUES (null, "Av.", "Irineu Ramos", "9866", "Ed. Flores", "Santa Cecilia", "Porto Alegre", "RS", "58697125", 4);
INSERT INTO endereco VALUES (null, "Rua", "Assis Soares", "365", "Casa do fundo", "Sto Antonio", "Blumenau", "SC", "85623048", 5);

-- pedido
INSERT INTO pedido VALUES (null, "T", "2018-03-26", 4000, 200, 3800, 1); 
INSERT INTO pedido VALUES (null, "S", "2019-04-12", 450, 0, 450, 2); 
INSERT INTO pedido VALUES (null, "F", "2021-09-21", 1800, 200, 1600, 3); 
INSERT INTO pedido VALUES (null, "F", "2022-01-19", 650, 0, 650, 1); 
INSERT INTO pedido VALUES (null, "F", "2022-02-01", 3700, 200, 3500, 4); 
INSERT INTO pedido VALUES (null, "T", "2022-02-08", 950, 0, 950, 5); 
INSERT INTO pedido VALUES (null, "T", "2022-02-03", 120, 0, 120, 3);

-- produto
INSERT INTO produto VALUES (null, "Smartphone LG K52", "64GB Verde 4G Octa-Core 3GB RAM", 950, 5, "www.googe.com.br", 2);
INSERT INTO produto VALUES (null, "Guarda Roupa Casal com Espelho", "3 Portas 2 Gavetas Istambul Espresso Móveis Branco", 650, 2, "www.google.com.br", 1);
INSERT INTO produto VALUES (null, "Micro-ondas Electrolux 34 Litros", "Função Tira Odor e Manter Aquecido Branco MEO44 127 Volts", 450, 3, "www.google.com.br", 3);
INSERT INTO produto VALUES (null, "Notebook HP Intel Core i3", "8GB 256GB SSD 15,6” - HD Windows 11 256 G8", 2800, 3, "www.google.com", 4);
INSERT INTO produto VALUES (null, "Cadeira Gamer XT Racer", "Reclinável Preta e Laranja - Speed Series XTS120", 900, 5, "www.google.com", 4);
INSERT INTO produto VALUES (null, "Geladeira/Refrigerador Consul", "Frost Free Duplex - Evox 397L CRE44AK 127 volts", 3550, 6, "www.google.com", 3);
INSERT INTO produto VALUES (null, "Smartphone Nokia 5.4 128GB", "Azul 4G Octa-Core - 4GB RAM Tela 6,39” Câm. Quádrupla + Selfie 16MP", 1800, 6, "www.google.com.br", 2);
INSERT INTO produto VALUES (null, "Conjunto Mesas Sala Retrô", "Pés Palito Mesas Apoio / Lateral / Centro Cores Diversas - ORB - Lojas GD", 120, 4, "www.google.com", 1);

-- item_pedido
INSERT INTO item_pedido VALUES (null, 1, 3550, 3500, 6, 1);
INSERT INTO item_pedido VALUES (null, 1, 450, 450, 3, 1);
INSERT INTO item_pedido VALUES (null, 1, 450, 450, 3, 2);
INSERT INTO item_pedido VALUES (null, 1, 1800, 1800, 7, 3);
INSERT INTO item_pedido VALUES (null, 1, 650, 650, 2, 4);
INSERT INTO item_pedido VALUES (null, 1, 2800, 2800, 4, 5);
INSERT INTO item_pedido VALUES (null, 1, 900, 900, 5, 5);
INSERT INTO item_pedido VALUES (null, 1, 950, 950, 1, 6);
INSERT INTO item_pedido VALUES (null, 1, 120, 120, 8, 7);

-- Exercício 2: Quantos clientes tenho cadastrado? 
select count(id) from cliente;
-- 5 clientes

-- Exercício 3: Qual o produto mais caro? 
select * from produto order by preco desc;
-- Geladeira: 3550,00

-- Exercício 4: Qual o produto mais barato? 
select * from produto order by preco asc;
-- Conjunto mesas: 120,00

-- Exercício 5: Mostrar todos produtos com os respectivos departamentos
select produto.nome, produto.departamento_codigo from produto inner join departamento
	on departamento.codigo = departamento_codigo;



