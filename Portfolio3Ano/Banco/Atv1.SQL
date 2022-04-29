Motivo da escolha: Achei um tema divertido.
create table animais(
	codAnimal int primary key, 
	nome varchar,
	anoNas date,
	setor varchar,
	especie varchar,
	observacoes varchar,
	peso decimal (7,2),
	ultimoVeterinario date
);
insert into animais
(codAnimal, nome, anoNas, setor, especie, observacoes, peso, ultimoVeterinario)
values
();
----------------------------------------------------------------------------------------------------------------------
create table funcionarios(
	PIS int primary key,
	nome varchar,
	dataNas date,
	cargaHoraria int,
	salario decimal(7,2),
	email varchar,
	cpf varchar,
	cargo varchar
);

insert into funcionarios
(PIS, nome, dataNas, cargaHoraria, salario, email, cpf, cargo)
values
();
----------------------------------------------------------------------------------------------------------------------
create table estoque(
	produto varchar primary key,
	marca varchar,
	validade date,
	preco decimal (7,2),
	codigo varchar,
	qtd int,
	dataCompra date
);
insert into estoque
(produto, marca, validade, preco, codigo, qtd, dataCompra)
values
();
----------------------------------------------------------------------------------------------------------------------



create table Fornecedores(
	cnpj varchar primary key,
	nome varchar,
	local varchar,
	email varchar,
	produto varchar references estoque(produto)
);
insert into Fornecedores
(cnpj, nome, local, email, produto)
values
('745854758', 'Jorge Alimentos','Rio de Janeiro', 'jorgealimentos@gmail.com', 'Racao'),
('145287459', 'Julia Cadeiras', 'Belo Horizonte', 'juliacadeiras@gmail.com', 'cadeira'),
('985742156', 'Eba Sorvetes', 'Santa Catarina', 'ebasorvetes@gmail.com', 'sorvete' );
----------------------------------------------------------------------------------------------------------------------
create table visitantes(
	cpf varchar primary key,
	idade int,
	nome varchar,
	chekin date
);
insert into visitantes
(cpf, idade, nome, chekin)
values
('145875421', '14', 'Julia Silva', '2012-06-18'),
('965214575', '54', 'Jeferson Gomes', '2015-04-15'),
('652415785', '35', 'Livia Rosa', '2016-04-18');
----------------------------------------------------------------------------------------------------------------------
create table bilheteria(
	numPulseira int primary key,
	inZoo boolean,
	codVisit varchar references visitantes(cpf) 
);
insert into bilheteria
(numPulseira, inZoo, codVisit)
values
('78', true, '145875421'),
('65', false, '965214575'),
('95', true, '652415785');
----------------------------------------------------------------------------------------------------------------------
create table contas(
	valorTotalEstoque decimal(8,2),
	mes varchar,
	valorTotalBilheteria decimal(10,2),
	valorTotalFuncionario decimal(9,2),
	gastosExtras decimal (6,2),
	lucro decimal (11,2)
);
insert into contas
(valorTotalEstoque, mes, valorTotalBilheteria, valorTotalFuncionario, gastosExtras, lucro)
values
('15425', 'janeiro', '45214', '14527', '7854', '96587'),
('65248', 'abril', '36587', '96587', '4528', '96578'),
('96587', 'fevereiro', '45219', '14528', '3658', '74521');
----------------------------------------------------------------------------------------------------------------------
create table empresasParceiras(
	cod int primary key,
	aluguel decimal (7,2),
	nome varchar,
	funcao varchar,
	email varchar
);
insert into empresasParceiras
(cod, aluguel, nome, funcao, email)
values
('58', '6524', 'Ihul hamburgueria', 'vender hamburguer', 'ihulhamburgueria@gmail.com'),
('14', '6458', 'Careca Chapeus', 'vender chapeus', 'carecachapeus@gmail.com'),
('85', '5478', 'Ana Banana Cabeleireiros', 'arrumar cabelo', 'anabanana@gmail.com');
