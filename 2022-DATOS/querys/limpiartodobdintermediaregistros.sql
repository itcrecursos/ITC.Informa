delete from bd_intermedia.tbl_cpe_det_cabecera_inter;
delete from bd_intermedia.tbl_credito_cuota_inter;
delete from bd_intermedia.tbl_cpe_cabecera_inter;
delete from bd_intermedia.tbl_retenciones;


delete from bd_facturadoreinventarios_itc.`tbl_log_excel_carga`;
delete from bd_facturadoreinventarios_itc.tbl_cpe_det_cabecera;
delete from bd_facturadoreinventarios_itc.tbl_credito_cuota;
delete from bd_facturadoreinventarios_itc.tbl_anticipo;
-- delete from bd_facturadoreinventarios_itc.tbl_retenciones;
delete from bd_facturadoreinventarios_itc.tbl_cpe_cabecera;

delete from bd_fact_itc_portal.tbl_cpe_det_cabecera;
delete from bd_fact_itc_portal.tbl_anticipo;
delete from bd_fact_itc_portal.tbl_credito_cuota;
delete from bd_fact_itc_portal.tbl_cpe_cabecera;

 SET SQL_SAFE_UPDATES = 0;
SET GLOBAL log_bin_trust_function_creators = 1

select * from bd_intermedia.tbl_cpe_cabecera_inter order by NUM_CPE_INTERMEDIA desc limit 10;
select * from bd_intermedia.tbl_cpe_det_cabecera_inter
WHERE NUM_CPE_INTERMEDIA='406'


select * from bd_fact_itc_portal.tbl_cpe_cabecera where COD_CLIENTE_EMIS in ('1','2') order by num_cpe desc limit 10;
select * from bd_fact_itc_portal.tbl_cpe_det_cabecera where NUM_CPE = '140'


select * from bd_intermedia.tbl_cpe_cabecera_inter;
SELECT * FROM victor_bd_produccion.tbl_cpe_cabecera_inter order by NUM_CPE_INTERMEDIA desc limit 10;

select * from bd_fact_itc_portal.tbl_credito_cuota  where NUM_CPE = (select NUM_CPE from bd_fact_itc_portal.tbl_cpe_cabecera
where COD_CLIENTE_EMIS in ('1','2'));


-- ---------

delete from bd_fact_itc_portal.tbl_credito_cuota  where NUM_CPE iN (select NUM_CPE from bd_fact_itc_portal.tbl_cpe_cabecera
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_fact_itc_portal.tbl_cpe_det_cabecera where NUM_CPE iN (select NUM_CPE from bd_fact_itc_portal.tbl_cpe_cabecera
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_fact_itc_portal.tbl_cpe_cabecera  where COD_CLIENTE_EMIS in ('1','2');

select * from bd_fact_itc_portal.tbl_cpe_cabecera where COD_CLIENTE_EMIS in ('1','2');



delete from bd_fact_itc_portal.tbl_credito_cuota  where NUM_CPE iN (select NUM_CPE from bd_fact_itc_portal.tbl_cpe_cabecera
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_fact_itc_portal.tbl_cpe_det_cabecera where NUM_CPE iN (select NUM_CPE from bd_fact_itc_portal.tbl_cpe_cabecera
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_fact_itc_portal.tbl_cpe_cabecera  where COD_CLIENTE_EMIS in ('1','2');


delete from bd_intermedia.tbl_credito_cuota_inter where NUM_CPE_INTERMEDIA iN (select NUM_CPE_INTERMEDIA
 from bd_intermedia.tbl_cpe_cabecera_inter
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_intermedia.tbl_cpe_det_cabecera_inter where NUM_CPE_INTERMEDIA iN (select NUM_CPE_INTERMEDIA
 from bd_intermedia.tbl_cpe_cabecera_inter
where COD_CLIENTE_EMIS in ('1','2'));
delete from bd_intermedia.tbl_cpe_cabecera_inter where COD_CLIENTE_EMIS in ('1','2');


select cab.NUM_CPE, cab.COD_TIP_CPE from tbl_cpe_cabecera as cab inner join tbl_cliente as cli on cab.COD_CLIENTE_EMIS = cli.NUM_COD_CLIENTE where cab.COD_ESTADO_DOC = '02' and cab.COD_ESTADO_SUNAT = '101' and cast(cab.FLAG_NUM_INT as unsigned) <= (select cast(TXT_VALOR_PARAMETRO as unsigned) as valor_parametro from tbl_cliente_parametros cliparam inner join tbl_cliente cl on cliparam.NUM_COD_CLIENTE = cl.NUM_COD_CLIENTE where cliparam.COD_PARAMETRO = '020' and cliparam.NUM_COD_CLIENTE = '2' ) and cab.COD_CLIENTE_EMIS = '2' and cab.COD_IDEN_CB <> 'C' and cab.COD_IDEN_RD <> 'RC' ORDER BY cab.FEC_EMIS Asc, cab.COD_TIP_CPE Asc, cab.TXT_SERIE Asc, cab.TXT_CORRELATIVO Asc LIMIT 300; 
SELECT Cpe.NUM_CPE ,Cpe.COD_MND ,Cpe.TXT_PLACA, Cpe.MNT_TOT_GRAVADAS, cli.TXT_VERS_UBL, cli.TXT_VERS_ESTRUCT_UBL, Cpe.TXT_SERIE , Cpe.TXT_CORRELATIVO ,Cpe.COD_TIP_ESCENARIO ,Cpe.FEC_EMIS , Cpe.HORA_EMIS , Cpe.COD_TIP_CPE ,Cpe.COD_CLIENTE_EMIS , Cpe.COD_LOC_EMIS , Cpe.TXT_RESP, cli.NUM_COD_CLIENTE , Cpe.NUM_RUC_EMIS , Cpe.NOM_RZN_SOC_EMIS , Cpe.COD_TIP_NIF_EMIS , Cpe.COD_UBI_EMIS , Cpe.TXT_DMCL_FISC_EMIS , Cpe.TXT_URB_EMIS , Cpe.TXT_PROV_EMIS , Cpe.TXT_DPTO_EMIS , Cpe.TXT_DISTR_EMIS , cli.TXT_RESOLUCION_SUNAT , Cpe.NUM_IDEN_RECP , Cpe.COD_TIP_NIF_RECP , Cpe.NOM_RZN_SOC_RECP , Cpe.PORCENTAJE_DSCTO , Cpe.MNT_TOT_IGV , Cpe.MNT_TOT_IGV_ISC, Cpe.MNT_TOT_ICBPER,Cpe.MNT_TOT , Cpe.MNT_TOT_BASE_IMPONIBLE , Cpe.MNT_TOT_PERCEPCION , Cpe.MNT_TOT_BASE_IMPONIBLE + Cpe.MNT_TOT_PERCEPCION as MNT_TOT_MAS_PERCEPCION,Cpe.TXT_TOTAL_EN_LETRAS , Cpe.COD_OPERACION , Cpe.MNT_TOT_INAFECTAS , Cpe.MNT_TOT_EXONERADAS , (Cpe.MNT_TOT_GRAVADAS + Cpe.MNT_TOT_INAFECTAS + Cpe.MNT_TOT_EXONERADAS) as SUMATORIA_VAL_VENTA, Cpe.MNT_TOT_DESC_GLOBAL , Cpe.MNT_TOT_GRATUITAS , Cpe.MNT_OTROS_CARGOS , Cpe.TXT_DMCL_FISC_RECEP ,Cpe.TXT_CONDICION_PAGO ,Cpe.COD_MODO_PAGO ,Cpe.OBSERVACIONES ,Cpe.FLAG_ENVIO_AUTOMATICO ,Cpe.MARCA_EXPOR ,Cpe.ORIGEN_EXPOR ,Cpe.DESPACHO_EXPOR ,Cpe.SOLDTO_EXPOR ,Cpe.SHIITO_EXPOR ,Cpe.NUMEROCAJAS_EXPOR ,Cpe.PESOBRUTO_EXPOR  ,Cpe.PESONETO_EXPOR ,Cpe.VOLUMEN_EXPOR ,Cpe.ORDEN_COMPRA ,Cpe.GUIA_REMISION ,Cpe.MNT_ANTICIPO ,Cpe.TXT_SERIE_ANTICIPO ,Cpe.TXT_CORRELATIVO_ANTICIPO ,Cpe.TXT_COD_CPE_ANTICIPO ,Cpe.DATO_EXTRA_1 ,Cpe.DATO_EXTRA_2 ,Cpe.DATO_EXTRA_3 ,Cpe.DATO_EXTRA_4 ,Cpe.TXT_SUSTENTO ,Cpe.COD_TIP_FRMPGO ,Cpe.MNTO_CRDT_TTAL ,Cpe.GUIA_TXT_COD_UBIG, Cpe.GUIA_TXT_DMCL_FISC, Cpe.GUIA_TXT_URB, Cpe.GUIA_TXT_PROV, Cpe.GUIA_TXT_DPTO, Cpe.GUIA_TXT_DISTR, Cpe.GUIA_TXT_PAIS,  Cpe.GUIA_COD_UBIG_LLEGDA, Cpe.GUIA_TXT_DMCL_FISC_LLEGDA, Cpe.GUIA_TXT_URB_LLEGDA, Cpe.GUIA_TXT_PROV_LLEGDA, Cpe.GUIA_TXT_DPTO_LLEGDA, Cpe.GUIA_TXT_DISTR_LLEGDA,  Cpe.GUIA_TXT_PAIS_LLEGDA, Cpe.GUIA_TXT_PLACA_AUTO_TRNSP, Cpe.GUIA_TXT_CERT_AUTO_TRNSP, Cpe.GUIA_TXT_MARCA_AUTO_TRNSP, Cpe.GUIA_TXT_LIC_COND_TRNSP,  Cpe.GUIA_TXT_RUC_TRNSP, Cpe.GUIA_TXT_COD_OTR_TRNSP, Cpe.GUIA_TXT_RZN_SCL_TRNSP, Cpe.GUIA_TXT_COD_MOD_TRNSP, Cpe.GUIA_MNT_TOTAL_BRUTO, Cpe.GUIA_COD_UNID_MED, Cpe.FEC_VENCI,  Cpe.MNT_TOT_DETRAC, Cpe.PERCENT_DETRAC, Cpe.DESCRIP_DETRAC, Cpe.NUM_CTA_BN, Cpe.TIP_DETRAC, Cpe.INFOS_DETRAC  FROM tbl_cpe_cabecera as Cpe inner join tbl_cliente as cli on Cpe.COD_CLIENTE_EMIS = cli.NUM_COD_CLIENTE where Cpe.NUM_CPE = 523;

select * from bd_intermedia.tbl_cpe_cabecera_inter;
select * from tbl_cpe_cabecera where COD_CLIENTE_EMIS in ('1','2');
select * from tbl_credito_cuota where num_cpe=282; 


update tbl_cliente_parametros set txt_valor_parametro='InvoiceFactura_2.1-FormaPago.vm'
where cod_emisor='1' and cod_parametro='026';

update tbl_cliente_parametros set txt_valor_parametro='CreditNoteTemplate_2.1-FormaPago.vm'
where cod_emisor='1' and cod_parametro='029';
