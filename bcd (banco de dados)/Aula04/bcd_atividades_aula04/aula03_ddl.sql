DROP DATABASE IF EXISTS consulta;
CREATE DATABASE consulta;
USE consulta;
CREATE TABLE paciente(
    id int primary key not null auto_increment,
    nome varchar (40) not null,
    sintoma varchar (100) not null,
    idade int (3) not null
);

CREATE TABLE consulta(
    id int primary key not null auto_increment,
    sala int (5) not null,
    dat date (8) not null,
    id_paciente int not null,
    cpf_medico int not null
);

CREATE TABLE medico(
    cpf int primary key not null auto_increment,
    nome varchar (40) not null,
    especialidade varchar (40) not null,
    anos_de_carreira int (3) not null
);

alter table consulta add constraint a foreign key (id_paciente) references paciente(id);
alter table consulta add constraint b foreign key (cpf_medico) references medico(cpf);

describe paciente;
describe consulta;
describe medico;