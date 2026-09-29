DROP DATABASE IF EXISTS gestao;
CREATE DATABASE gestao;
USE gestao;
CREATE TABLE cliente(
    id int primary key not null auto_increment,
    nome varchar (100) not null,
    cep varchar (11) not null,
    numero int not null,
    complemento varchar (100) not null
);

-- cliente tem telefone

CREATE TABLE telefone(
    id int primary key not null auto_increment,
    id_cliente int not null,
    numero varchar (15) not null,
    tipo varchar (20) not null
);

-- cliente faz pedido

CREATE TABLE pedido(
    id int primary key not null auto_increment,
    id_cliente int not null,
    id_produto int not null,
    valor_unitario decimal (10,2) not null,
    quantidade int not null,
    subtotal decimal (10,2) not null
);

-- pedido possui produto

CREATE TABLE produto(
    id int primary key not null auto_increment,
    nome varchar (100) not null
);

alter table telefone add constraint a foreign key (id_cliente) references cliente(id);
alter table pedido add constraint b foreign key (id_cliente) references cliente(id);
alter table pedido add constraint c foreign key (id_produto) references produto(id);

describe cliente;
describe telefone;
describe pedido;
describe produto;