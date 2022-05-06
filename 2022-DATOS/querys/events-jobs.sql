CREATE EVENT E_REENVIAR_CPES_ENVIO_INTENTO_MAXIMO
ON SCHEDULE EVERY 2 HOUR ON COMPLETION PRESERVE
DO 
	update tbl_cpe_cabecera set
	COD_ESTADO_SUNAT = '101',
    COD_ESTADO_DOC='02', -- 02 para envio y CB y 05 para resumen.
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
		COD_ESTADO_SUNAT='101'  and FLAG_NUM_INT =15;

show events;

ALTER EVENT E_REENVIAR_CPES_ENVIO_INTENTO_MAXIMO ENABLE;





ALTER event E_REENVIAR_CPES_RESUMEN_INTENTO_MAXIMO
ON SCHEDULE EVERY 2 HOUR ON COMPLETION PRESERVE
DO 
	update tbl_cpe_cabecera set
	COD_ESTADO_SUNAT = '101',
    COD_ESTADO_DOC='05', -- 02 para envio y CB y 05 para resumen.
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
	COD_ESTADO_SUNAT='104' and txt_serie like 'B___' and FLAG_NUM_INT =14;