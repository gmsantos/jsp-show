USE mydb;

-- Create your tables here
DROP TABLE IF EXISTS pessoa;
CREATE TABLE pessoa (
id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
email VARCHAR(50) NOT NULL,
endereco VARCHAR(50) NOT NULL,
telefone VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);
