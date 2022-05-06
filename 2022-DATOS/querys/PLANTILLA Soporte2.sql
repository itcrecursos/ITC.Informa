--  SET SQL_SAFE_UPDATES = 0;

SELECT `tbl_tipo_afectacion_igv`.`COD_TIP_AFEC_IGV`,
    `tbl_tipo_afectacion_igv`.`TXT_DESCRIP_AFEC`,
    `tbl_tipo_afectacion_igv`.`ESTADO`
FROM `bd_facturadoreinventarios_itc`.`tbl_tipo_afectacion_igv`;
select * from tbl_inv_serie;
sdsdsdsd


-- Portal

select * from tbl_cpe_cabecera where cod_estado_sunat = '101' and COD_CLIENTE_EMIS='1' order by NUM_CPE desc limit 7;
select * from tbl_cpe_cabecera where COD_CLIENTE_EMIS='324' AND TXT_CORRELATIVO='00000034' and TXT_SERIE='FF11' order by NUM_CPE;

-- delete from tbl_cpe_det_cabecera where NUM_CPE in (select NUM_CPE from tbl_cpe_cabecera where 
-- COD_CLIENTE_EMIS='1' and FEC_EMIS = date('2021-05-06') 
-- );

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM bd_fact_itc_portal.tbl_cliente_parametros where NUM_COD_CLIENTE = 466
-- delete from tbl_cpe_cabecera where COD_CLIENTE_EMIS='1' and FEC_EMIS = date('2021-02-10');
select * from tbl_cpe_det_cabecera where `NUM_CPE`='924939' order by NUM_CPE desc limit 3;
select * from tbl_cpe_cabecera where COD_CLIENTE_EMIS='1' and FEC_EMIS = date('2021-05-06') order by NUM_CPE desc;
select * from tbl_cpe_cabecera where COD_CLIENTE_EMIS='1' order by NUM_CPE desc LIMIT 10;


update tbl_cpe_cabecera set RPTA_SUNAT_FINAL=null
 where FEC_EMIS= date('2021-02-10')

select * from tbl_cpe_cabecera order by NUM_CPE desc limit 10;
-- MNT_TOT_GRAVADAS = 1760.76 + MNTO_TOT_IGV 316.94 = MNT_TOT = 2077.70
select * from tbl_cpe_det_cabecera where `NUM_CPE`='1486' order by NUM_CPE desc limit 3;
-- VAL_VTA_ITEM = 1760.76 + MNT_IGV_ITEM 316.94 =  PRC_VTA_UNIT_ITEM = 2077.6968 

select * from tbl_cpe_cabecera_resumen_diario where NUM_CPE_RESUMEN = 28; 
select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where NUM_COD_CLIENTE='190';
select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where COD_PARAMETRO='017';
select  * from  tbl_cpe_cabecera where NUM_CPE in (777943);
/*
update tbl_cpe_cabecera set COD_ESTADO_SUNAT = '101', COD_ESTADO_DOC='02', COD_ERROR_SUNAT=null,
TICKET_ID_RECEP_SUNAT=null, FECHA_ENVIO_SUNAT=null, FECHA_RECP_SUNAT=null, FLAG_NUM_INT=0 
where  
-- COD_CLIENTE_EMIS=1 and COD_IDEN_CB <> 'C' and COD_ESTADO_SUNAT=101;
NUM_CPE in (777943);
*/

--- Portal
select * from `bd_fact_itc_portal`.tbl_cliente Where NOM_RZN_SOC_EMIS like '%psic%';
select * from `bd_fact_itc_portal`.tbl_cliente Where NUM_RUC_EMIS like '%10459855888%';
select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where NUM_COD_CLIENTE='1';
select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where COD_PARAMETRO='022' and TXT_VALOR_PARAMETRO='0';
select distinct(TXT_VALOR_PARAMETRO) from `bd_fact_itc_portal`.tbl_cliente_parametros Where COD_PARAMETRO='022';
-- Clientes OSEs
select C.NUM_COD_CLIENTE,C.NUM_RUC_EMIS,C.NOM_RZN_SOC_EMIS,  CP.TXT_VALOR_PARAMETRO from `bd_fact_itc_portal`.tbl_cliente_parametros CP inner join `bd_fact_itc_portal`.`tbl_cliente` C  
on CP.NUM_COD_CLIENTE = C.NUM_COD_CLIENTE Where
CP.COD_PARAMETRO='001' and CP.TXT_VALOR_PARAMETRO <> 'https://e-factura.sunat.gob.pe/ol-ti-itcpfegem/billService';

-- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='1' Where cod_parametro='022' and num_cod_cliente='1';
-- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='InvoiceFactura_2.1-FormaPago.vm' Where num_cod_cliente='1' and cod_parametro='026';
-- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='https://ose.nubefact.com/ol-ti-itcpe/billService' Where num_cod_cliente='53' and cod_parametro='001';

-- InvoiceFactura_2.1xNoSaga.vm
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' and ORDEN_COMPRA is not null and ORDEN_COMPRA <>'' and NUM_IDEN_RECP='20100128056 ';
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' and NUM_IDEN_RECP='20600184718 ' 
and txt_serie='FF11' and TXT_CORRELATIVO='00004715' order by NUM_CPE desc limit 7;

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=349 --  order by NUM_CPE desc limit 7;
and txt_serie='B008' and TXT_CORRELATIVO='00097921' order by NUM_CPE desc limit 7;
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera_resumen_diario Where NUM_cPE_rESUMEN='220774';

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=349 --  order by NUM_CPE desc limit 7;
and txt_serie='B008' and TXT_CORRELATIVO='00097935' order by NUM_CPE desc limit 7;
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera_resumen_diario Where NUM_cPE_rESUMEN='220735';


select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=349 --  order by NUM_CPE desc limit 7;
and txt_serie='B008' and TXT_CORRELATIVO='00097940' order by NUM_CPE desc limit 7;

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=324  order by NUM_CPE desc;

220774
202208494276069

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera_resumen_diario Where NUM_cPE_rESUMEN='220732';

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=1 --  order by NUM_CPE desc limit 7;
and txt_serie like '%FE%' order by TXT_CORRELATIVO desc limit 7;

CALL `bd_fact_itc_portal`.`SP_FILTRO_RESUMENES_Y_BAJAS`('1', '2021-08-06');


select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='34' -- order by NUM_CPE desc limit 20; -- and NUM_IDEN_RECP='20600184718 ' 
and txt_serie='F006' and TXT_CORRELATIVO='00000396' order by NUM_CPE desc limit 7;

select * from `bd_fact_itc_portal`.tbl_retenciones where num_Cpe='2044099';

select CPE.NUM_CPE, cpe.NUM_RUC_EMIS, cpe.FEC_EMIS, cpe.TXT_SERIE, 
cpe.TXT_CORRELATIVO from `bd_fact_itc_portal`.tbl_cpe_cabecera as cpe inner join
tbl_retenciones ret on cpe.NUM_CPE = ret.NUM_CPE
 Where COD_CLIENTE_EMIS='34' and COD_MND='USD' ORDER by num_cpe desc;


SELECT * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera where num_cpe='9927';
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' -- and NUM_IDEN_RECP='20600184718 ' 
and COD_ESTADO_SUNAT='101' order by NUM_CPE desc limit 7;
SELECT * FROM bd_fact_itc_portal.tbl_cpe_cabecera_resumen_diario where NUM_CPE_RESUMEN='222';
select * from `bd_fact_itc_portal`.tbl_estd_sunat;
select * from `bd_fact_itc_portal`.tbl_estado_doc;
SET FOREIGN_KEY_CHECKS=1;
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_DECLARACION_PENDIENTES`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();

select cab.NUM_CPE, cab.COD_TIP_CPE, cab.TXT_SERIE, cab.COD_ESTADO_DOC, cab.COD_ESTADO_SUNAT, cab.TXT_CORRELATIVO, cab.COD_IDEN_CB,
 cab.ESTAD_ITEM, cab.FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from tbl_cpe_cabecera cab Where COD_CLIENTE_EMIS=1 and NUM_cPE IN ('15622' , '15666')


CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_DECLARACION_PENDIENTES`();



SELECT * FROM tbl_cliente_parametros
where COD_


-- la orden de anulacion empieza en 0 con el resumen sigue en 0 cuando deberia ser uno.

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' order by NUM_CPE desc limit 7;
select NUM_CPE, COD_ESTADO_DOC,
COD_ESTADO_SUNAT, COD_CLIENTE_EMIS, TXT_SERIE, TXT_CORRELATIVO
, TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
MNT_ANTICIPO, MNT_TOT_GRAVADAS, MNT_TOT_IGV, MNT_TOT, GUIA_TXT_DMCL_FISC
 from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' order by NUM_CPE desc limit 7;
select * from `bd_fact_itc_portal`.tbl_anticipo Where num_cpe='9440';
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='245' 
and TXT_CORRELATIVO like '%10213'  -- and TXT_SERIE like 'B008' 
order by NUM_CPE desc limit 7;

select date(FEC_EMIS),count(*) from `bd_fact_itc_portal`.tbl_cpe_cabecera Where  COD_CLIENTE_EMIS ='213'  
-- cod_iden_cb='C' -- and TXT_DESCR_MOTIVO_BAJA is  null 
and COD_ESTADO_SUNAT = '101' --  and date(FEC_RECP_DOC2) < date('2020-10-04');  -- date(now()-7)
Group by date(FEC_EMIS);
/*
 update `bd_fact_itc_portal`.tbl_cpe_cabecera set COD_ESTADO_SUNAT = '101' where 
 COD_CLIENTE_EMIS ='213' and COD_ESTADO_SUNAT = '666' and  date(FEC_EMIS) = '2020-10-30';
 */

/* rechazar anulaciones mayor a 7 dias.
update `bd_fact_itc_portal`.tbl_cpe_cabecera set COD_ESTADO_DOC = '01', COD_ESTADO_SUNAT = '104',
COD_ERROR_SUNAT=2108 Where cod_iden_cb='C' -- and TXT_DESCR_MOTIVO_BAJA is  null 
and COD_ESTADO_SUNAT = '101' and date(FEC_RECP_DOC2) < date('2020-10-04');
*/
-- order by num_cpe desc limit 7;
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='18'  and COD_ESTADO_SUNAT='101' and TXT_SERIE like 'F___' 
and date(FEC_RECP_DOC1) = date('2020-12-09')
 -- and NUM_IDEN_RECP='20551874011' a
 order by NUM_CPE desc  limit 90;
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='212' -- order by NUM_CPE desc;
and TXT_SERIE = 'B006'  and TXT_CORRELATIVO = '00005299';
select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera where num_cpe='2050575';
select * from `bd_fact_itc_portal`.tbl_credito_cuota where num_cpe='2050575';
SELECT `tbl_estd_sunat`.`COD_ESTD_SUNAT`,`tbl_estd_sunat`.`TXT_DESCR`FROM `bd_fact_itc_portal`.`tbl_estd_sunat`;
select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera Where num_cpe=895321;
select * from `bd_fact_itc_portal`.tbl_cliente_parametros where NUM_COD_CLIENTE='5';
select * from `bd_fact_itc_portal`.tbl_cliente Where NOM_RZN_SOC_EMIS like '%psic%';
select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera Where num_cpe in (830420,830070,829694,829650);
select * from `bd_fact_itc_portal`.tbl_usuario where NUM_RUC_EMIS='20147736739';
select U.cod_usuario,U.password, u.Flag_Estado,u.NUM_RUC_EMIS from `bd_fact_itc_portal`.tbl_usuario u inner join `bd_fact_itc_portal`.tbl_cliente c
on u.NUM_RUC_EMIS = c.NUM_RUC_EMIS Where c.NOM_RZN_SOC_EMIS like '%DIVAR%';
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera_resumen_diario Where num_cpe_resumen=115444 and date(FEC_BOL_RESUM_AFEC) ='2020-10-21'; -- =114641;

CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();
CALL `bd_fact_itc_portal`.`SP_FILTRO_RESUMENES_Y_BAJAS`('1', '2021-04-01');

CALL `bd_fact_itc_portal`.`SP_OBTENER_PENDIENTE_COMUNICACION_BAJA`('1');


CALL `bd_fact_itc_portal`.`SP_VERIFICAR_CREDENCIALES_Y_RESTRICCION`('WsC0nexItc@', 'puzA+Uo5RyBPJovLXWDnLQ==',  @outvalue);

select @outvalue;

CALL `bd_fact_itc_portal`.`SP_CONSULTA_PENDIENTES_ESTADO_RESUMEN_BOL_NOTAS_BAJAS`('1');

CALL `bd_facturadoreinventarios_itc`.`SP_CARGAR_DATOS_CABECERA`('1');
CALL `bd_fact_itc_portal`.`SP_CONSULTA_PENDIENTES_ESTADO_RESUMEN_BOL_NOTAS_BAJAS`('1');
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_DECLARACION_PENDIENTES`();

select * from tbl_cpe_Cabecera where num_cpe=1325272
-- 484 603 485 486 603 168
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_COMUNICACION_BAJA_PENDIENTES`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_TICKETS_COMUNICACION_BAJA_PENDIENTES`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_TICKETS_RESUMEN_PENDIENTES`();
Select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_ESTADO_SUNAT='101'  and COD_ESTADO_DOC='02';

select * from tbl_cpe_cabecera  where COD_IDEN_CB='C' and COD_ESTADO_SUNAT='101' and date(FEC_EMIS)>='2021-02-01'
order by NUM_CPE DESC limit 1000;



-- Facturador

select * from `bd_facturadoreinventarios_itc_bk`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS='1' -- and FLAG_CARGA = '7'
 order by NUM_CPE desc;
select * from `bd_facturadoreinventarios_itc_bk`.tbl_emisor Where `NOM_RZN_SOC_EMIS` like '%aq%';
select * from `bd_facturadoreinventarios_itc_bk`.tbl_usuario where NUM_RUC_EMIS='20480674414';
select * from `bd_facturadoreinventarios_itc_bk`.tbl_emisor where num_cod_emisor='296';
select * from `bd_facturadoreinventarios_itc_bk`.tbl_cliente_parametros where COD_EMISOR='1';


select * from `bd_facturadoreinventarios_itc`.tbl_cliente_parametros Where txt_valor_parametro='I'

-- jose.carlos Jose.c@ITC2018
select * from `bd_facturadoreinventarios_itc`.tbl_series Where COD_EMISOR='195';
/*  serie para cotizaciones.
Insert into `bd_facturadoreinventarios_itc`.tbl_series (COD_EMISOR, COD_LOCAL, TXT_SERIE, COD_TIP_CPE) values 
('195',208,'C002',98); */

-- update `bd_facturadoreinventarios_itc`.tbl_cliente_parametros set txt_valor_parametro='P' Where COD_EMISOR='1' and cod_parametro='037';

-- Template_pdf_INTEGRACION-GENERICO.html
-- Template_pdf_itc.html


-- RELANZAR COMUNICACION DE BAJA a la ba de facturas y notas asociadas 
/*
update tbl_cpe_cabecera SET 
COD_ESTADO_DOC = '02',
COD_ESTADO_SUNAT = '101',
TICKET_ID_RECEP_SUNAT = null, 
COD_RPTA_ENVIO_SUNAT = '',
FECHA_ENVIO_SUNAT = null, 
FECHA_RECP_SUNAT = null, 
FEC_GENE_DOC_SUNAT = null, 
COD_ERROR_SUNAT = '', 
FLAG_NUM_INT = '0'
WHERE NUM_CPE in (9446);
*/
/* Actulizar campo TXT_DESCR_MOTIVO_BAJA para que no sea nulo y se declare anulacion.
update `bd_fact_itc_portal`.tbl_cpe_cabecera set 
TXT_DESCR_MOTIVO_BAJA='Anulacion de la operacion x Campo Nulo'  Where 
COD_CLIENTE_EMIS <=325 and cod_iden_cb='C' and
TXT_DESCR_MOTIVO_BAJA is  null
*/

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=34 --  order by NUM_CPE desc limit 7;
and txt_serie='F011' and TXT_CORRELATIVO='00002869' order by NUM_CPE desc limit 7;

select * from `bd_fact_itc_portal`.tbl_cpe_cabecera Where COD_CLIENTE_EMIS=34 --  order by NUM_CPE desc limit 7;
and txt_serie='F011' and TXT_CORRELATIVO='00002870' order by NUM_CPE desc limit 7;
-- 2044404 2044406
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
NUM_CPE in (2058925)
*/
-- 10070
-- 10033 10032 10031  10029 10028
select * from tbl_cpe_cabecera where cod_cliente_emis=1 order by num_cpe desc; 
select * from tbl_anticipo where num_cpe=10080;
here num_cpe=9471;

-- RELANZAR NUM_CPE Boletas, Notas asociadas y CBs de boletas
/*
update tbl_cpe_cabecera set
COD_ESTADO_SUNAT = '101',
    COD_ESTADO_DOC='02',
    FLAG_ENVIO_BOLETAS = '0',
    ESTAD_ITEM='1',
    COD_ERROR_SUNAT=null,
    TICKET_ID_RECEP_SUNAT=null,
    COD_ERROR_SUNAT = '',
    FECHA_ENVIO_SUNAT=null,
    FECHA_RECP_SUNAT=null,
    FLAG_NUM_INT=0,
    NUM_CPE_RESUMEN=null
WHERE
NUM_CPE in (1963760)
 COD_CLIENTE_EMIS ='213' and COD_ESTADO_SUNAT = '666' and  date(FEC_EMIS) = '2020-10-28'
 and
COD_ESTADO_SUNAT='101' and TXT_SERIE like 'B___' and COD_CLIENTE_EMIS='399'
and date(FEC_EMIS) = '2020-07-20' and COD_ESTADO_SUNAT='101';
*/


-- Por Eliminar

update tbl_cpe_cabecera set
COD_ESTADO_SUNAT = '777'
WHERE  COD_CLIENTE_EMIS='1'and NUM_CPE in (

883894,
883822,
883820,
883819,
883818,
883817,
883816,
883815,
883814,
883813,
883812,
883811,
883810,
883809,
883808,
883807,
883806,
883805,
883804,
883803,
883802)


