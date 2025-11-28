create database dbjogojokenpo;

use dbjogojokenpo;

CREATE TABLE tbregistro (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomejogador VARCHAR(50) NOT NULL,
    pontuacao_jogador INT DEFAULT 0,
    resultado_final VARCHAR(10),
    
    -- Colunas do CPU que você quer exibir para comparação:
    pontuacao_cpu INT DEFAULT 0,
    nomecpu VARCHAR(3) DEFAULT 'CPU'
);

select * from tbregistro;

ALTER TABLE tbregistro
MODIFY COLUMN nomecpu VARCHAR(12) DEFAULT 'CPU';

desc tbregistro;