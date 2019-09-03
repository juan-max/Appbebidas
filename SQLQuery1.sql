--criando tabelas banco de dados babidasdb
--criando tabela bebidas


create table categorias
(
id_categoria int primary key identity not null,
nome_categoria varchar(60) not null,

);
go



create table bebidas
(
id_bebida int primary key  identity not null,
nome varchar(60) not null,
valor decimal(10,2) not null,
retornavel bit default'0' not null,
tipo varchar(30) null,
alcoolica bit not null default'0',
safra  char(4) null,
sabor varchar(30) not null,
data_cadastro datetime default getdate(),
id_categoria_bebida int not null foreign key references categorias(id_categoria)
);
go

