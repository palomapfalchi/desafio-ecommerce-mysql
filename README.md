# <p align="center"> E-commerce Utilizando MySQL </p>

## 📝 Descrição

<h3><p align="center"> Desafio realizado durante o curso da Gama Academy utilizando MySQL para criar um banco de dados de um E-commerce </p></h3>

# 

## 🖥️ Como Executar

1 - Clone o Repositório
    
    $ git clone https://github.com/palomapfalchi/desafio-ecommerce-mysql.git

2 - Abra os arquivos clonados em uma IDE que execute arquivos de formato .SQL


3 - Crie o Banco de Dados DesafioGama
    
    CREATE DATABASE DesafioGama;
    USE DesafioGama;

4 - <a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/dados-tabela.sql#:~:text=USE%20DesafioGama%3B-,%2D%2D%20INSERINDO%20AS%20TABELAS,)%3B,-%2D%2D%20Exerc%C3%ADcio%201%3A%20Inserindo">Criação das Tabelas (cliente, departamento, endereco, item_pedido, pedido, produto)</a>


Exemplo - Formato da Tabela Cliente:

    CREATE TABLE cliente(
        id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
        nome VARCHAR(100) NOT NULL, 
        email VARCHAR(70) NOT NULL UNIQUE, 
        senha VARCHAR(20) NOT NULL, 
        cpf VARCHAR(15) NOT NULL UNIQUE
        );

5 - <a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/dados-tabela.sql#:~:text=%2D%2D%20CLIENTES,4000%2C%209%2C%2012)%3B">Armazenando dados em cada tabela </a>

Exemplo - Alguns clientes da tabela cliente:

    INSERT INTO cliente VALUES (null, "Antonio Carlos","antoniocarlos@mail.com","987654","765.432.987.10");

    INSERT INTO cliente VALUES (null, "Carina Andrade", "carinaandr@mail.com", "659821", "85623614522");

    INSERT INTO cliente VALUES (null, "Andreia Moraes", "andreiam@mail.com", "5891264", "256.215.458-58");
    
6 - Execute as funções


## 🖥️ Instruções SQL geradas nesse projeto

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=select%20count(id)%20from%20cliente%3B">Quantos clientes tenho cadastrado? </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=select%20*%20from%20produto%20where%20preco%20%3D%20(select%20max(preco)%20from%20produto)%3B"> Qual o produto mais caro? </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=select%20*%20from%20produto%20where%20preco%20%3D%20(select%20min(preco)%20from%20produto)%3B">Qual o produto mais barato? </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=select%20produto.nome,departamento.codigo%20%3D%20departamento_codigo%3B">Mostrar todos produtos com os respectivos departamentos.</a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=select%20departamento_codigo%20as,GROUP%20BY%20departamento_codigo%3B">Quantos produtos tem em cada departamento? </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=SELECT%20*%20FROM%20pedido,by%20pedido.numero%3B">Mostrar dados do pedido, incluindo nome dos clientes e nome dos produtos vendidos</a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=SELECT%20Month(data_pedido)%20as%20%22M%C3%AAs%22%2C%20count,group%20by%20month(data_pedido)%3B">Mostrar quantos pedidos foram feitos por mês em 2021 </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=SELECT%20Month(data_pedido)%20as%20%22M%C3%AAs%22%2C%20sum,group%20by%20month(data_pedido)%3B"> Mostre quanto foi faturado por mês </a>

<a href="https://github.com/palomapfalchi/desafio-ecommerce-mysql/blob/main/Query/exercicios.sql#:~:text=SELECT%20departamento.nome,BY%20departamento.codigo%3B">Mostre o valor total do estoque por departamento</a>

## Desenvolvedores

<table>
  <tr>
    <td align="center"><a href="https://github.com/palomapfalchi"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/85750919?v=4" width="100px;" alt=""/><br /><sub><b>Paloma Patrícia Falchi</b></sub></a><br /></a></td>
    <td align="center"><a href="https://github.com/alesalg"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/73660994?v=4" width="100px;" alt=""/><br /><sub><b>Alexandre Salgueiro Barbosa</b></sub></a><br/></a></td>
    
  </tr>
</table>
