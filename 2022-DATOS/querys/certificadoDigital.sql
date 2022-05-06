select * from `bd_fact_itc_portal`.tbl_cpe_cabecera
where cod_Estado_sunat='104' and COD_ERROR_SUNAT='2325'
and FEC_EMIS > date('2022-03-17') order by num_Cpe desc;

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera
where COD_CLIENTE_EMIS=17 order by num_cpe desc;

select * from `bd_fact_itc_portal`.tbl_cliente_parametros where NUM_COD_CLIENTE='17';



-- RELANZAR NUM_CPE factura y boletas
/*
update tbl_cpe_cabecera set
	COD_ESTADO_SUNAT = '101',
    COD_ESTADO_DOC='02',
    COD_RPTA_ENVIO_SUNAT=null,
    COD_ERROR_SUNAT=null,
    TICKET_ID_RECEP_SUNAT=null,
    FECHA_ENVIO_SUNAT=null,
    FECHA_RECP_SUNAT=null,
    FEC_GENE_DOC_SUNAT=null,
    ESTAD_ITEM='1',
    FLAG_ENVIO_BOLETAS='0',
    FLAG_NUM_INT=0
WHERE   
-- COD_ESTADO_SUNAT='101' and COD_CLIENTE_EMIS='438'
-- `COD_CLIENTE_EMIS`='450'
NUM_CPE in (2242922,
2242921,
2242920,
2242919,
2242918,
2242917,
2242915)
*/



-- NUEVO CERTIFICADO
-- C22031859814-20220318-20240317.pfx
-- CHRESTIoUSeU

-- ANTIGUO CERTIFICADO
-- C20031727159-20210323-20220322.pfx
-- 6umlSCMmUn

-- nombre certifado
update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='C20031727159-20210323-20220322.pfx'
where NUM_COD_CLIENTE='17' and cod_parametro='015';

-- clave
update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='6umlSCMmUn'
where NUM_COD_CLIENTE='17' and cod_parametro='014';