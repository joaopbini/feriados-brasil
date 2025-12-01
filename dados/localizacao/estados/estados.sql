-- Tabela de Estados Brasileiros
-- Fonte: API de Localidades do IBGE
-- https://servicodados.ibge.gov.br/api/docs/localidades
CREATE TABLE IF NOT EXISTS estados
(
    codigo_uf INTEGER      NOT NULL,
    uf        VARCHAR(2)   NOT NULL PRIMARY KEY,
    nome      VARCHAR(100) NOT NULL,
    latitude  REAL         NOT NULL,
    longitude REAL         NOT NULL,
    regiao    VARCHAR(12)  NOT NULL
);

INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (11, 'RO', 'Rondônia', -10.83, -63.34, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (12, 'AC', 'Acre', -8.77, -70.55, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (13, 'AM', 'Amazonas', -3.47, -65.1, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (14, 'RR', 'Roraima', 1.99, -61.33, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (15, 'PA', 'Pará', -3.79, -52.48, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (16, 'AP', 'Amapá', 1.41, -51.77, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (17, 'TO', 'Tocantins', -9.46, -48.26, 'Norte');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (21, 'MA', 'Maranhão', -5.42, -45.44, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (22, 'PI', 'Piauí', -6.6, -42.28, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (23, 'CE', 'Ceará', -5.2, -39.53, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (24, 'RN', 'Rio Grande do Norte', -5.81, -36.59, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (25, 'PB', 'Paraíba', -7.28, -36.72, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (26, 'PE', 'Pernambuco', -8.38, -37.86, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (27, 'AL', 'Alagoas', -9.62, -36.82, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (28, 'SE', 'Sergipe', -10.57, -37.45, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (29, 'BA', 'Bahia', -13.29, -41.71, 'Nordeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (31, 'MG', 'Minas Gerais', -18.1, -44.38, 'Sudeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (32, 'ES', 'Espírito Santo', -19.19, -40.34, 'Sudeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (33, 'RJ', 'Rio de Janeiro', -22.25, -42.66, 'Sudeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (35, 'SP', 'São Paulo', -22.19, -48.79, 'Sudeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (41, 'PR', 'Paraná', -24.89, -51.55, 'Sul');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (42, 'SC', 'Santa Catarina', -27.45, -50.95, 'Sul');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (43, 'RS', 'Rio Grande do Sul', -30.17, -53.5, 'Sul');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (50, 'MS', 'Mato Grosso do Sul', -20.51, -54.54, 'Centro-Oeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (51, 'MT', 'Mato Grosso', -12.64, -55.42, 'Centro-Oeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (52, 'GO', 'Goiás', -15.98, -49.86, 'Centro-Oeste');
INSERT INTO estados (codigo_uf, uf, nome, latitude, longitude, regiao) VALUES (53, 'DF', 'Distrito Federal', -15.83, -47.86, 'Centro-Oeste');
