-- bd_fact_itc_portal
-- bd_facturadoreinventarios_itc
SET FOREIGN_KEY_CHECKS = 1;
 SET SQL_SAFE_UPDATES = 0;

sdsdsdsd


-- bk_facturadoreinventarios_certificacion 
-- bk_portal_certificacion

-- consultas especificas con num_Cpe
 select COD_CLIENTE_EMIS, NUM_RUC_EMIS, MNT_TOT_ICBPER, COD_IDEN_cB, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS
 , MNT_TOT, TXT_CORRELATIVO, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where NUM_CPE = 20863 order by NUM_CPE desc limit 200;
 
 select cpeant.TXT_SERIE,cpeant.TXT_CORRELATIVO,cpeant.COD_REL_ATRI,cpeant.MONTO  from tbl_anticipo as cpeant where cpeant.NUM_CPE = 20863
 
 SELECT COD_TIP_CPE, COD_ERROR_SUNAT, count(NUM_CPE) FROM `bd_fact_itc_portal`.tbl_cpe_cabecera 
 where fec_emis >= date('2021-09-01') and COD_ESTADO_SUNAT='104'
 group by COD_ERROR_SUNAT, COD_TIP_CPE;

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
COD_CLIENTE_EMIS = 273 and num_cpe not in ('1503684');
*/

 
 select NUM_RUC_EMIS, MNT_TOT_ICBPER, NUM_CPE, COD_TIP_CPE, TXT_SERIE, TXT_CORRELATIVO, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS
 , MNT_TOT, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS = 273 and COD_IDEN_CB<>'C' order by NUM_CPE desc limit 200;
 
 select NUM_RUC_EMIS, COD_TIP_ESCENARIO, MNT_TOT_ICBPER, NUM_CPE, COD_TIP_CPE, TXT_SERIE, TXT_CORRELATIVO, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS,
 MNT_TOT_BASE_IMPONIBLE , MNT_TOT_GRAVADAS, MNT_TOT_GRATUITAS, MNT_TOT_EXONERADAS, MNT_TOT_INAFECTAS, MNT_TOT, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN 
 from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS = 34 order by NUM_CPE desc limit 200;
 
call `bd_facturadoreinventarios_itc`.`SP_OBTENER_ADQUIRIENTES_AJAX`(1, '222');
 
 
 select * from `bd_fact_itc_portal`.tbl_cpe_cabecera   
 Where PERCENT_DETRAC not in ("0.00", "") order by NUM_CPE desc limit 200;
 
  select * from `bd_fact_itc_portal`.tbl_cpe_cabecera where cod_Cliente_emis='3' order by num_cpe desc;
 
  SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_det_cabecera where NUM_CPE='1719514' order by num_cpe desc;
select * from `bd_facturadoreinventarios_itc`.tbl_usuario where NUM_RUC_EMIS='20601183731';


 10944.92
 
 1719514
 
 20469962246‬
 
  select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=126 and NUM_IDEN_RECP='20565282965'
 -- and TXT_SERIE = 'FF11' and TXT_CORRELATIVO = '00007373' 
 order by NUM_CPE desc limit 20;
 
   select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=126 and TXT_SERIE='F001' and TXT_CORRELATIVO='00001311'
 -- and TXT_SERIE = 'FF11' and TXT_CORRELATIVO = '00007373' 
 order by NUM_CPE desc limit 20;
 
    select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=126 and NUM_IDEN_RECP='20565282965'
 -- and TXT_SERIE = 'FF11' and TXT_CORRELATIVO = '00007373' 
 order by NUM_CPE desc limit 20;
 
 select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=126 and TXT_SERIE='F001' and TXT_CORRELATIVO='00001312'
 -- and TXT_SERIE = 'FF11' and TXT_CORRELATIVO = '00007373' 
 order by NUM_CPE desc limit 20;
 
 
   select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=1 and NUM_IDEN_RECP='20294866117'
 and COD_IDEN_CB != 'C' and COD_ESTADO_SUNAT='102' order by NUM_CPE desc;
 
 select * from `bd_fact_itc_portal`.tbl_credito_cuota order by   CUOTA_ID desc;
 
  select * from `bd_fact_itc_portal`.tbl_credito_cuota where num_cpe ='2223988';
 
  select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS=75 and TXT_SERIE = 'F002' and TXT_CORRELATIVO = '00000056' order by NUM_CPE desc limit 7;
 
 
  select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS = 234 order by NUM_CPE desc limit 200;

 -- F001 00001086 ddeben enviar el COD_TIP_NIF_RECP segun el excel catalogo N 6  1792453 1792466
 --      00001104 el mnt_tot_igv es 377.0532 pero por una razon estan enviando 377.06 redondeado 1806109
 -- B001 00000932 EL NUM_IDEN_RECP es un dni y el cod_tip_nif_recep debe ser segun catalogo N 6 el numero 1.  1805924
 
 
   select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera  
 Where NUM_CPE = 1768466 order by NUM_CPE desc limit 200;
 
 -- 1687149
 
   select * from `bd_facturadoreinventarios_itc`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS <> 1 order by NUM_CPE desc limit 200;
     select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera order by num_cpe desc; 
    select * from `bd_facturadoreinventarios_itc`.tbl_cpe_det_cabecera where num_cpe='5740'; 
 
 	select count(*) from tbl_cpe_cabecera where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT('FF11','', '00000001') AND COD_TIP_CPE = '01' 
				AND COD_IDEN_CB = 'C' AND COD_CLIENTE_EMIS = 1;
 
 alter table `bd_intermedia`.tbl_cpe_cabecera_inter
 modify DATO_EXTRA_1 VARCHAR(120);
  alter table `bd_intermedia`.tbl_cpe_cabecera_inter
 modify DATO_EXTRA_2 VARCHAR(120);
  alter table `bd_intermedia`.tbl_cpe_cabecera_inter
 modify DATO_EXTRA_3 VARCHAR(120);
  alter table `bd_intermedia`.tbl_cpe_cabecera_inter
 modify DATO_EXTRA_4 VARCHAR(120);
 
 SELECT TXT_CORRELATIVO_BAJA FROM tbl_cpe_cabecera cpe where cpe.COD_CLIENTE_EMIS= '1' and TXT_SERIE='FF11' and TXT_CORRELATIVO='00000006' and COD_TIP_CPE='01' and COD_IDEN_CB='C' LIMIT 1
 
 SELECT rd.TXT_CORRELATIVO_RESUMEN FROM tbl_cpe_cabecera cpe inner join tbl_cpe_cabecera_resumen_diario rd 
 on cpe.NUM_CPE_RESUMEN = rd.NUM_CPE_RESUMEN where cpe.COD_CLIENTE_EMIS= '1' and TXT_SERIE='FF11' and TXT_CORRELATIVO='00000006' 
 and COD_TIP_CPE='01' and COD_IDEN_CB='C' LIMIT 1
 
 SELECT rd.TXT_CORRELATIVO_RESUMEN FROM tbl_cpe_cabecera cpe inner join tbl_cpe_cabecera_resumen_diario rd
 on cpe.NUM_CPE_RESUMEN = rd.NUM_CPE_RESUMEN 
where cpe.COD_CLIENTE_EMIS= '1' 
and TXT_SERIE='BB11' and TXT_CORRELATIVO='00000002' and COD_TIP_CPE='03' and cod_iden_cb='C'

 
 CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CORREOS_PENDIENTES_ENVIO`();

-- 
 
 10:30AM - 5:00AM > 3 
 select * from `bd_fact_itc_portal`.tbl_cliente_parametros where num_cod_cliente=1;
 
  select DATE_FORMAT((DATE_SUB(now(), INTERVAL 2 HOUR)), "%H") from `bd_fact_itc_portal`.tbl_cpe_cabecera where date(FEC_EMIS) = "2021-10-12";


 
 select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera WHERE NUM_cPE='20879' order by NUM_DET_CABECERA desc;

 CALL `bd_fact_itc_portal`.`sp_consultaResp_EnvioASunat`('1', '02');
 
 

CALL `bd_facturadoreinventarios_itc`.`SP_LISTAR_GUIA_REMISION_PENFAC`('', 3, 0, false);


 -- 20635 00000986
  select COD_CLIENTE_EMIS, NUM_RUC_EMIS, COD_ERROR_SUNAT, COD_RPTA_ENVIO_SUNAT,
  MNT_TOT_ICBPER, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS
 , MNT_TOT, TXT_CORRELATIVO, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_ERROR_SUNAT='9999' and COD_ESTADO_SUNAT='104' order by NUM_CPE desc limit 200;
 
 select COD_OPERACION, NUM_CPE, COD_TIP_ESCENARIO, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS = 232  order by NUM_CPE desc limit 200;
 
  select COD_CLIENTE_EMIS, NUM_RUC_EMIS, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS, TXT_CORRELATIVO, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_ESTADO_DOC='01' and COD_ESTADO_SUNAT='104' -- AND COD_ERROR_SUNAT='1032' 
 AND NUM_RUC_EMIS='20343081368'
 order by NUM_CPE desc limit 200;
 
 
  select COD_CLIENTE_EMIS, NUM_RUC_EMIS, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT,
  COD_ERROR_SUNAT, COD_RPTA_ENVIO_SUNAT, FEC_EMIS, TXT_CORRELATIVO, FLAG_NUM_INT, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_ESTADO_DOC='02' and COD_ESTADO_SUNAT='101' AND COD_CLIENTE_EMIS = '460' order by NUM_CPE desc limit 200;
 

select NUM_RUC_EMIS, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS,  TXT_CORRELATIVO, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera
 Where COD_CLIENTE_EMIS=232 and NUM_cPE = 15622 order by NUM_CPE desc limit 7;

select NUM_RUC_EMIS, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, FEC_EMIS,  TXT_CORRELATIVO, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN  from `bd_fact_itc_portal`.tbl_cpe_cabecera
 Where COD_CLIENTE_EMIS=1 and NUM_cPE IN ('15622' , '15666') order by NUM_CPE desc limit 7;
 
 select NUM_CPE, COD_CLIENTE_EMIS, NUM_RUC_EMIS, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, TXT_CORRELATIVO, FEC_EMIS,  COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera
 Where NUM_cPE IN ('1506448' , '1506412', '1506314') order by NUM_CPE desc limit 7;
 
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera
Where COD_CLIENTE_EMIS=126 and TXT_SERIE = 'B001' and TXT_CORRELATIVO = '00001291' order by NUM_CPE desc limit 7;

select * from `bd_facturadoreinventarios_itc`.tbl_cpe_cabecera where COD_ESTADO_DOC = '06' and FEC_EMIS > '2022-01-01'
order by NUM_CPE desc;


select * from `bd_facturadoreinventarios_itc`.tbl_cpe_cabecera where COD_CLIENTE_EMIS = 126 order by num_cpe desc;

select NUM_RUC_EMIS, NUM_CPE, COD_TIP_CPE, TXT_SERIE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, TXT_CORRELATIVO,  FEC_EMIS, COD_IDEN_CB,
 ESTAD_ITEM, FLAG_ENVIO_BOLETAS, TXT_RESP, NUM_CPE_RESUMEN from `bd_fact_itc_portal`.tbl_cpe_cabecera
 Where NUM_RUC_EMIS='205652123482' and NUM_cPE = 15622 order by NUM_CPE desc limit 7;
 
 select * from `bd_facturadoreinventarios_itc`.`tbl_cpe_cabecera`
Where COD_CLIENTE_EMIS=126  order by num_cpe desc;

 select * from `bd_facturadoreinventarios_itc`.`tbl_cpe_det_cabecera`
Where NUM_CPE=1005423  order by num_cpe desc;
 -- retenciones 
select * from `bd_fact_itc_portal`.`tbl_cpe_cabecera`
Where COD_CLIENTE_EMIS=157 and TXT_SERIE = 'B001' and TXT_CORRELATIVO = '00056687' order by NUM_CPE desc limit 7;

select * from `bd_facturadoreinventarios_itc`.`tbl_cpe_det_cabecera`
Where  num_Cpe = 1007456;
select * from `bd_fact_itc_portal`.`tbl_retenciones` order by ID desc;
select * from `bd_fact_itc_portal`.`tbl_cpe_cabecera` where num_cpe = 2176377;
 select * from `bd_fact_itc_portal`.`tbl_cpe_cabecera` where COD_TIP_CPE = '03' and cod_cliente_emis != '30' and COD_ESTADO_DOC='05' and COD_IDEN_CB != 'C'
 order by NUM_CPE desc;
 
  select DISTINCT(cod_cliente_Emis) from `bd_fact_itc_portal`.`tbl_cpe_cabecera` where COD_TIP_CPE = '03' and cod_cliente_emis != '30' and COD_ESTADO_DOC='05' and COD_IDEN_CB != 'C'
 order by NUM_CPE desc;

   select NUM_CPE, COD_MND, COD_TIP_CPE, COD_ESTADO_DOC, COD_ESTADO_SUNAT, COD_CLIENTE_EMIS, NUM_RUC_EMIS, fec_emis, NOM_RZN_SOC_EMIS, TXT_SERIE, 
   TXT_CORRELATIVO, MNT_TOT_GRAVADAS, MNT_TOT, FLAG_NUM_INT, FLAG_ENVIO_BOLETAS,NUM_CPE_RESUMEN  from `bd_fact_itc_portal`.`tbl_cpe_cabecera` where COD_TIP_CPE = '03' and COD_ESTADO_DOC='05'
 order by NUM_CPE desc;
 
 
 
 -- 274
  select * from `bd_fact_itc_portal`.`tbl_cpe_cabecera_resumen_diario` where NUM_CPE_RESUMEN='216555';
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_TICKETS_RESUMEN_PENDIENTES`();


 
  select * from `bd_fact_itc_portal`.tbl_cliente_parametros where COD_USUARIO like '%remo%';
	select * from `bd_fact_itc_portal`.tbl_cliente_parametros where num_Cod_cliente = 1;
 select * from `bd_fact_itc_portal`.tbl_usuario where COD_USUARIO like '%pol%';
select * from `bd_fact_itc_portal`.tbl_usuario where NUM_RUC_EMIS='20546138578';
select * from `bd_fact_itc_portal`.`tbl_cliente` WHERE NUM_RUC_EMIS='20513263423';
select * from `bd_fact_itc_portal`.tbl_cliente where NOM_RZN_SOC_EMIS like '%pol%';
select * from `bd_fact_itc_portal`.tbl_cliente where NOM_RZN_SOC_EMIS like '%remol%';
select * from `bd_facturadoreinventarios_itc`.tbl_usuario where NUM_RUC_EMIS='20471229530';

select * from `bd_facturadoreinventarios_itc`.`tbl_inv_serie` where id_emisor='201';
select * from `bd_facturadoreinventarios_itc`.`tbl_inv_serie` where id_emisor='278';

insert into `bd_facturadoreinventarios_itc`.`tbl_inv_serie` values('GR00', '0', '', '278', '1', 'F');
insert into `bd_facturadoreinventarios_itc`.`tbl_inv_serie` values('0001', '0', '', '278', '2', 'F');
insert into `bd_facturadoreinventarios_itc`.`tbl_inv_serie` values('T001', '0', 'Guia Remision Electronica', '278', '2', 'E');
insert into `bd_facturadoreinventarios_itc`.`tbl_inv_serie` values('T002', '0', 'Guia Remision Electronica', '278', '2', 'E');

delete from `bd_facturadoreinventarios_itc`.`tbl_inv_serie` where id_emisor='278';


 -- 20608468651
 
 
CALL `bd_facturadoreinventarios_itc`.`SP_CARGAR_DATOS_CABECERA_GUIA_REMISION`(201);

 CALL `bd_facturadoreinventarios_itc`.`SP_CONSULTA_SI_EXISTEN_CPES_GUIA_REMISION_POR_CARGAR_PENDIENTES`();
select * from `bd_facturadoreinventarios_itc`.`tbl_guia_remision` order by id_guia desc; 
  select * from `bd_facturadoreinventarios_itc`.tbl_cliente_parametros Where COD_EMISOR='201';
 
 select * from `bd_facturadoreinventarios_itc`.tbl_cliente_parametros Where COD_EMISOR='168';
 
  select * from `bd_fact_itc_portal`.tbl_cliente_parametros  where txt_valor_parametro='https://demo-ose.nubefact.com/ol-ti-itcpe/billService';
 
  select distinct(txt_valor_parametro) from `bd_facturadoreinventarios_itc`.tbl_cliente_parametros WHERE COD_PARAMETRO='037';
 
  -- smtp.office365.com
 -- cobranza@itc.com.pe
 -- KpisGestion@2019
 -- 587
 -- 1
 select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where NUM_COD_CLIENTE='1';
select * from `bd_fact_itc_portal`.tbl_cliente_parametros Where COD_PARAMETRO='026' and NUM_COD_CLIENTE='187';
select distinct(TXT_VALOR_PARAMETRO) from `bd_fact_itc_portal`.tbl_cliente_parametros Where COD_PARAMETRO='022';
 
 -- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='1' Where cod_parametro='022' and num_cod_cliente='1';
-- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='Template_pdf_itc.html' Where num_cod_cliente='1' and cod_parametro='032';
-- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='https://e-beta.sunat.gob.pe/ol-ti-itcpfegem-beta/billService' Where num_cod_cliente='270' and cod_parametro='001';

CALL `bd_facturadoreinventarios_itc`.`SP_OBTENER_ADQUIRIENTES_AJAX`(1, '222');


CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_DECLARACION_PENDIENTES`();
CALL `bd_facturadoreinventarios_itc`.`SP_OBTENER_TIPO_DETRACCION`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();


SELECT * FROM tbl_cpe_cabecera order by num_Cpe desc;
SELECT * FROM tbl_cpe_det_cabecera order by NUM_DET_CABECERA desc;

CALL `bd_fact_itc_portal`.`SP_CONSULTA_CORREOS_PENDIENTES_POR_CLIENTE`(1);

create table tokens
(
id int primary key auto_increment,
token varchar(1100),
fecha_creacion datetime,
fecha_modificacion datetime
)

call ObtenerToken(@outvalue);
select @outvalue;

update `bd_facturadoreinventarios_itc`.tbl_cliente_parametros set txt_valor_parametro='P' Where COD_EMISOR='1' and cod_parametro='037';

select * from `bd_facturadoreinventarios_itc`.tbl_cliente_parametros where COD_EMISOR=1;

select DATE_ADD(NOW(), interval 58 minute) into fecha_vencimiento;
 
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
FLAG_ENVIO_BOLETAS = 0,
COD_ERROR_SUNAT = '', 
FLAG_NUM_INT = '0'
WHERE NUM_CPE in (1739054);
*/
/* Actulizar campo TXT_DESCR_MOTIVO_BAJA para que no sea nulo y se declare anulacion.
update `bd_fact_itc_portal`.tbl_cpe_cabecera set 
TXT_DESCR_MOTIVO_BAJA='Anulacion de la operacion x Campo Nulo'  Where 
COD_CLIENTE_EMIS <=325 and cod_iden_cb='C' and
TXT_DESCR_MOTIVO_BAJA is  null
*/




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
NUM_CPE in (2223988)
*/
 select TXT_VALOR_PARAMETRO from tbl_cliente_parametros where NUM_COD_CLIENTE=1 and COD_PARAMETRO='020';
select * from `bd_fact_itc_portal`.tbl_cpe_cabecera order by num_cpe desc;
select * from `bd_fact_itc_portal`.tbl_cliente_parametros where num_cod_cliente='295';
UPDATE tbl_cpe_cabecera SET FLAG_NUM_INT = IF(FLAG_NUM_INT = 5, ))   cast(FLAG_NUM_INT as unsigned) + 1 , FECHA_ENVIO_SUNAT = NOW() WHERE  NUM_CPE = 20908
WsC0nexVIROFFISOCIEANONI@:y6KOlGB2mcX3aiKnXFCDwXa/smWWmFtt3nkyN3h1IEU=
call SP_ACTUALIZAR_NUM_INTENTOS_MAX_RECHAZADO(20908, 1);

-- RELANZAR NUM_CPE Boletas, Notas asociadas y CBs de boletas
/*
update tbl_cpe_cabecera set
COD_ESTADO_SUNAT = '101',
    COD_ESTADO_DOC='05',
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
NUM_CPE in (721,722,723)
 COD_CLIENTE_EMIS ='213' and COD_ESTADO_SUNAT = '666' and  date(FEC_EMIS) = '2020-10-28'
 and
COD_ESTADO_SUNAT='101' and TXT_SERIE like 'B___' and COD_CLIENTE_EMIS='399'
and date(FEC_EMIS) = '2020-07-20' and COD_ESTADO_SUNAT='101';
*/


 

                               