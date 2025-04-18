DATA;REG_ANS;CD_CONTA_CONTABIL;DESCRICAO;VL_SALDO_INICIAL;VL_SALDO_FINAL

CREATE TABLE tb_4T2023 (
    DATA DATA,
    REG_ANS INT,
    CD_CONTA_CONTABIL VARCHAR(20),
    DESCRICAO VARCHAR(255),
    VL_SALDO_FINAL NUMERIC(15, 2),
    VL_SALDO_INICIAL NUMERIC(15, 2)
);

COPY tb_4T2023
FROM 'src/main/java/br/com/test/niv/intuitive/test3/tarefa_preparo/4T2023.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ';',
    ENCODING 'LATIN1'
);