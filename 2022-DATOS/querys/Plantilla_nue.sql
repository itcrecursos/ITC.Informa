 -- 209481
 
 SELECT NUM_CPE, TXT_SERIE, TXT_CORRELATIVO, COD_CLIENTE_EMIS, NUM_CPE_RESUMEN, FEC_EMIS FROM `bd_fact_itc_portal`.tbl_cpe_cabecera 
 where COD_IDEN_CB='C' and COD_ESTADO_DOC='05' order by num_cpe desc;
 
  SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_cabecera 
 where COD_IDEN_CB='C' and COD_CLIENTE_EMIS = 134 order by num_cpe desc;
 
   SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_cabecera 
 where COD_CLIENTE_EMIS = 1 order by num_cpe desc;
 
    select * from `bd_fact_itc_portal`.tbl_cpe_det_cabecera  
 Where NUM_CPE = 20915;
 
 select * from  `bd_fact_itc_portal`.`tbl_cpe_cabecera`  where TXT_SERIE='F001'
    and TXT_CORRELATIVO='00000308' ;
    
    -- 202108011450985
     
 select * from `bd_fact_itc_portal`.tbl_cpe_cabecera  
 Where COD_CLIENTE_EMIS = 75 and TXT_SERIE='B001' and TXT_CORRELATIVO = '00000003' order by NUM_CPE desc limit 200;
 
 
 SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_cabecera_resumen_diario  where NUM_CPE_RESUMEN='210467';
-- 2958 codigo error pasar a rechazado
 SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_cabecera where NUM_CPE_RESUMEN='210467';
 
 UPDATE `bd_fact_itc_portal`.tbl_cpe_cabecera  set COD_ESTADO_DOC='01',
 COD_ESTADO_SUNAT ='104', COD_ERROR_SUNAT='2957' where num_cpe in
 (
944836
 )
 
 SELECT * from tokens;
 



SELECT * FROM `bd_fact_itc_portal`.tbl_cpe_cabecera where num_cpe in ('1690118', '1690123');

select DATE_ADD('2021-10-26 17:10:38', interval 58 minute) ;

CALL `bd_fact_itc_portal`.`ObtenerToken`(@token);

select @token;

-- 1690118
-- 1690123
-- boletas parecidas consultar cliente 


    -- 212 92 205
    
    -- relanzare la boleta b021 23162 lo que tiene que pasar es que se crea otro resumen y eso le da error 2378 y el servicio loa ctualiza cosa que no pasa 
    
select COD_CLIENTE_EMIS, COD_TIP_CPE, NUM_RUC_EMIS, TXT_SERIE, TXT_CORRELATIVO, FEC_EMIS, MNT_TOT
 from  `bd_fact_itc_portal`.`tbl_cpe_cabecera`  Where COD_CLIENTE_EMIS = 75 and TXT_SERIE='B001' and TXT_CORRELATIVO='00000002' 
 order by NUM_CPE desc limit 200;
 
    
SELECT * FROM `bd_fact_itc_portal`.`tbl_cliente_parametros` where NUM_COD_CLIENTE=1;
  
select * from  `bd_fact_itc_portal`.`tbl_cpe_cabecera` where COD_CLIENTE_EMIS='474' order by num_Cpe desc;

-- -----------------------------

-- 14
 -- update `bd_fact_itc_portal`.tbl_cliente_parametros set txt_valor_parametro='14' Where cod_parametro='020' and num_cod_cliente='474';
 
 
 
 -- ------------------------------
 
 CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_CPES_POR_GENERAR_RESUMEN`();
CALL `bd_fact_itc_portal`.`SP_CONSULTA_SI_EXISTEN_TICKETS_RESUMEN_PENDIENTES`();

 call `bd_fact_itc_portal`.`SP_FILTRO_RESUMENES_Y_BAJAS`('474', '2021-10-18');