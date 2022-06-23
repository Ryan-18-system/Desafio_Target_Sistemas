

-- As Chaves Primarias São  idEstado, idCliente, idTipo, idTelefone
-- As chaves estrangeira são  codEstado, codTipo, codCliente

-- QUERY que retonar os clientes que são do Estado de SP
select nome, RazaoSocial, numero, UF from cliente, telefone, Estado 
where cliente.idCliente = telefone.codCliente and Estado.UF = 'SP';

-- Código de criação das Tabelas no Postgree

CREATE TABLE Estado(
	idEstado	serial,
	UF		char(2),
	CONSTRAINT PK_estado PRIMARY KEY(idEstado)
);

CREATE TABLE Cliente (
	idCliente 		serial,
	Nome			varchar(45),
	RazaoSocial     varchar(250),
	codEstado			int,
	CONSTRAINT PK_cliente PRIMARY KEY(idCliente),
	CONSTRAINT FK_idEstado FOREIGN KEY (codEstado) REFERENCES Estado (idEstado)
);
CREATE TABLE TipoTelefone(
	idTipo		serial,
	descricao	varchar(250),
	CONSTRAINT PK_tipo PRIMARY KEY(idTipo)
);
CREATE TABLE Telefone(
	idTelefone 	serial,
	codTipo		int,
	numero 		varchar(250),
	codCliente	int,
	CONSTRAINT FK_idTipo FOREIGN KEY (codTipo) REFERENCES TipoTelefone (idTipo),
	CONSTRAINT FK_idCliente FOREIGN KEY (codCliente) REFERENCES Cliente (idCliente)
)

insert into Estado values(default, 'SP');
insert into Estado values(default, 'RJ');


insert into Cliente values(default,'Ryan','PicPay',1);
insert into Cliente values(default,'Nicolas','MicroSoft',1);
insert into Cliente values(default,'Alexandra','Nubank',1);
insert into Cliente values(default,'Ronivaldo','Target Sistemas',1);
insert into Cliente values(default,'Valda','INSS',2);



insert into TipoTelefone values(default,'celular');
insert into TipoTelefone values(default,'residencial');
insert into TipoTelefone values(default,'Comercial');



insert into Telefone values(default,4,'322264721',3);
insert into Telefone values(default,5,'988111311',4);
insert into Telefone values(default,6,'988338650',5);
insert into Telefone values(default,4,'986465140',6);