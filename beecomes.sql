CREATE DATABASE BeeComes;

USE BeeComes;

CREATE TABLE apicultor (
    idApicultor INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100), 
    cpf CHAR(11), 
    email VARCHAR(50), 
    telefone VARCHAR(15),
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE apiario (
    idApiario INT PRIMARY KEY AUTO_INCREMENT, 
    apelido VARCHAR(45), 
    cidade VARCHAR(45), 
    estado CHAR(2)
);

CREATE TABLE sensor (
    idSensor INT PRIMARY KEY AUTO_INCREMENT, 
    tipo VARCHAR(30), 
    modelo VARCHAR(30), 
    status VARCHAR(15), 
    ultimaManutencao DATE,
    CONSTRAINT chkStatus CHECK (status IN ('Ativo', 'Inativo', 'Alerta'))
);

CREATE TABLE metrica (
    idMetrica INT PRIMARY KEY AUTO_INCREMENT, 
    co2_ppm DECIMAL(7,2), 
    temperatura DECIMAL(4,2), 
    momento DATETIME DEFAULT CURRENT_TIMESTAMP,
    umidade_relativa DECIMAL(4,2)
);

CREATE TABLE log_erro (
    idErro INT PRIMARY KEY AUTO_INCREMENT, 
    descricao VARCHAR(100), 
    dtErro DATETIME
);

INSERT INTO apicultor (nome, cpf, email, telefone) 
VALUES 
    ('Alexandre Silva', '12345678901', 'alexandre@sptech.com', '11999998888'),
    ('Beatriz Souza', '98765432100', 'beatriz@sptech.com', NULL),
    ('Carlos Jose', NULL, 'carlos@gmail.com', NULL);

INSERT INTO apiario (apelido, cidade, estado) 
VALUES 
    ('Recanto das Abelhas', 'Juazeiro', 'BA'),
    ('Colmeia Norte', 'Sobral', 'CE'),
    ('Mel de Ouro', 'Picos', 'PI');

INSERT INTO sensor (tipo, modelo, status, ultimaManutencao) 
VALUES 
    ('Gás', 'MQ-135', 'Ativo', '2024-01-10'),
    ('Gás', 'MQ-135', 'Ativo', '2024-02-15'),
    ('Temperatura', 'DHT11', 'Inativo', NULL),
    ('Gás', 'MQ-135', 'Alerta', NULL);

INSERT INTO metrica (co2_ppm, temperatura) 
VALUES 
    (400.50, 28.5),
    (850.00, 30.2),
    (1500.20, 32.0),
    (350.10, 27.0),
    (2200.00, 35.5),
    (410.00, 28.0);

SELECT * FROM apicultor;

SELECT nome, email FROM apicultor;

SELECT * FROM apiario WHERE estado = 'BA';

SELECT * FROM sensor WHERE status <> 'Ativo';

SELECT * FROM sensor WHERE tipo = 'Gás' AND status = 'Ativo';

SELECT * FROM metrica WHERE co2_ppm > 1000;

SELECT * FROM metrica WHERE temperatura <= 28;

SELECT * FROM metrica WHERE co2_ppm BETWEEN 400 AND 900;

SELECT * FROM sensor WHERE ultimaManutencao IS NULL;

SELECT * FROM sensor WHERE ultimaManutencao IS NOT NULL;

SELECT * FROM apicultor WHERE nome LIKE 'A%';

SELECT * FROM apicultor WHERE nome LIKE '%Souza';

SELECT * FROM apicultor WHERE nome LIKE '%a%';

SELECT * FROM apicultor WHERE nome LIKE '_l%';

SELECT * FROM metrica ORDER BY co2_ppm DESC;

SELECT * FROM metrica ORDER BY temperatura ASC;

SELECT co2_ppm AS 'Nível de CO2', temperatura AS 'Temp' FROM metrica;

SELECT DISTINCT tipo FROM sensor;

SELECT * FROM apiario WHERE estado IN ('BA', 'CE', 'PE');

SELECT * FROM metrica WHERE momento >= '2024-03-01 00:00:00';

UPDATE sensor SET status = 'Inativo' WHERE idSensor = 1;

UPDATE sensor SET status = 'Ativo', ultimaManutencao = '2024-03-05' WHERE idSensor = 3;

UPDATE metrica SET co2_ppm = 390.00 WHERE idMetrica = 1;

UPDATE apicultor SET telefone = '11900000000' WHERE idApicultor = 2;

DELETE FROM metrica WHERE idMetrica = 5;

DELETE FROM log_erro WHERE dtErro < '2024-03-01';

TRUNCATE TABLE log_erro;

DROP TABLE log_erro;

ALTER TABLE metrica DROP COLUMN umidade_relativa;

DROP DATABASE BeeComes;