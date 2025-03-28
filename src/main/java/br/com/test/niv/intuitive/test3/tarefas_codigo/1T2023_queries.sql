"DATA";"REG_ANS";"CD_CONTA_CONTABIL";"DESCRICAO";"VL_SALDO_INICIAL";"VL_SALDO_FINAL"

CREATE TABLE tb_1T2023 (
    data DATE,
    reg_ans INT,
    cd_conta_contabil VARCHAR(20),
    descricao VARCHAR(255),
    vl_saldo_inicial NUMERIC(15,2),
    vl_saldo_final NUMERIC(15,2)
);

COPY tb_1T2023
FROM 'src/main/java/br/com/test/niv/intuitive/test3/tarefa_preparo/1T2023.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ';',
    ENCODING 'LATIN1'
);
