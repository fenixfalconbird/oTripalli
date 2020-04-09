create database depcompras;

/*drop database depcompras;*/

use depcompras;

create table produto(
codigoProduto int not null,
nomeProduto varchar (50) not null,
descricaoProduto varchar (100) not null,
dataFabricacao date not null,
dataValidade date not null,
precoUnidade float not null,
primary key  (codigoProduto),
foreign key (cnpj) references fornecedor(cnpj)
);

create table  oferece(
  codigo_oferece int not  null,	
  codigoTransportador int not null,
  cnpj  varchar(18),
  codigoProduto int not null,
  foreign key codigoTransportador references transportadora(codigoTransportador),
  foreign key cnpj references fornecedor(cnpj),
  foreign key codigoProduto references produto(codigoProduto),
  primary key (codigo_oferece)
)

create table fornecedor(

nomeFornecedor varchar(100) not null,
cnpj varchar(18) not null,
endereco varchar(300) not null,
formaDePagamento varchar (10) not null,
telefone varchar(10) not null,
email varchar(100) not null,
primary key (cnpj)
);
/*drop table notaFiscal;*/
create table notaFiscal(
codigoNotaFiscal int not null,
codigoCompra int not null,
cnpj varchar(15) not null,
codigoProduto int not null,
codigoTransportador int not null,
primary key (codigoNotaFiscal) ,
foreign key (cnpj) references fornecedor (cnpj),
foreign key (codigoCompra) references compra(codigoCompra),
foreign key (codigoProduto) references produto(codigoCompra),
foreign key (codigoTransportador) references transportadora(codigoTransportador)
);

create table compra(
codigoCompra int not null,
statusCompra varchar (20),
codigoOrcamento int,
codigoTransportador int,
produto
dataCompra date not null,
dataEntrega date not null,
valorTotal float not null,
primary key(codigoCompra),

);

create table transportadora(
codigoTransportador int not null,
nomeTransportador varchar (100) not null,
cnpj varchar (15) not null,
areaDeAtuacao varchar(50),
precoTransporte float not null,
primary key (codigoTransportador) ,

);

create table transportadora_fornecedor(
  codigoTransportador int,
  cnpj varchar(18),
  foreign key codigoTransportador references transportadora(codigoTransportador),
  foreign key cnpj references fornecedor (cnpj)
)

create table orcamento(
  codigoOrcamento int not null auto_increment,
  produto varchar (100) not null,
  quantidade int,
  prazo date,
  tipoPagamento varchar(10),
primary key (codigoOrcamento),
);
-- composicao varchar(100)*/
-- precoProduto float not null,*/
-- create table requisicaoDeCompras(
-- status char(1)  ,
-- codigoRequisicao int not null ,
-- codigoOrcamento int not null,
-- quantidade int not null,
-- descricao varchar (300) not null,
-- prazo date not null,
-- primary key (codigoRequisicao),
-- foreign key (codigoOrcamento) references orcamento(codigoOrcamento)
-- );
