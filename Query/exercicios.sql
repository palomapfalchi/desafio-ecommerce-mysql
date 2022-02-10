-- Exercício 2: Quantos clientes tenho cadastrado? 
select count(id) from cliente;

-- Exercício 3: Qual o produto mais caro? 
select * from produto where preco = (select max(preco) from produto);

-- Exercício 4: Qual o produto mais barato? 
select * from produto where preco = (select min(preco) from produto);

-- Exercício 5: Mostrar todos produtos com os respectivos departamentos
select produto.nome, produto.departamento_codigo from produto inner join departamento
	on departamento.codigo = departamento_codigo;

-- Exercício 6: Quantos produtos tem em cada departamento?  
select departamento_codigo as "Codigo depart", sum(estoque) as "Qtde em estoque" from produto
	GROUP BY departamento_codigo;
    
-- Exercício 7: Mostrar dados do pedido, incluindo nome dos clientes e nome dos produtos vendidos
SELECT * FROM pedido INNER JOIN item_pedido ON pedido.numero = item_pedido.pedido_numero
	INNER JOIN produto ON produto.codigo = item_pedido.produto_codigo
	INNER JOIN cliente ON pedido.cliente_id = cliente.id
	order by pedido.numero;
    
-- Exercício 8: Mostrar quantos pedidos foram feitos por mês em 2021
SELECT Month(data_pedido) as "Mês", count(*) as "Pedidos" FROM pedido WHERE YEAR(data_pedido) = 2021
	group by month(data_pedido);

-- Exercício 9: Mostre quanto foi faturado por mês 
SELECT Month(data_pedido) as "Mês", sum(valor_final) as "Valor vendido" FROM pedido WHERE YEAR(data_pedido) = 2021
	group by month(data_pedido);

-- Exercício 10: Mostre o valor total do estoque por departamento
SELECT departamento.nome as "Departamento", sum(produto.estoque * produto.preco) as "Total do estoque" FROM departamento 
	INNER JOIN produto ON produto.departamento_codigo = departamento.codigo 
	GROUP BY departamento.codigo;
