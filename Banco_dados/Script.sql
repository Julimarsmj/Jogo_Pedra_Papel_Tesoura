create database dbjogojokenpo;

use dbjogojokenpo;

create table  tbjogador(
id int not null auto_increment primary key,
nomejogador varchar(50) not null,
pontuacao int default 0,
resultado_final varchar(10)
);

create table  tbcpu(
id int not null auto_increment primary key,
nomecpu varchar(3) default 'CPU',
pontuacao int default 0,
resultado_final varchar(10)
);

SELECT
    j.nomejogador,
    j.pontuacao AS Pontos_Jogador,
    j.resultado_final,
    c.resultado_final,
    c.nomecpu,
    c.pontuacao AS Pontos_CPU
FROM
    tbjogador j   -- Tabela do Jogador
CROSS JOIN
    tbcpu c;      -- Tabela do CPU