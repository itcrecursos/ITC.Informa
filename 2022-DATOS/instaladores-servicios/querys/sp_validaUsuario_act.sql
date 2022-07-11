USE `bd_fact_itc_portal`;
DROP procedure IF EXISTS `sp_validaUsuario`;

USE `bd_fact_itc_portal`;
DROP procedure IF EXISTS `bd_fact_itc_portal`.`sp_validaUsuario`;
;

DELIMITER $$
USE `bd_fact_itc_portal`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validaUsuario`(
in pCODCLIENTE int,
in pUSUARIO varchar(100),
in pPASSWORD varchar(50)
)
BEGIN
                start transaction;
                IF(pCODCLIENTE != 0) THEN
					select count(*) as contar from tbl_cliente c  
					inner join tbl_cliente_parametros cp
					on c.NUM_COD_CLIENTE = cp.NUM_COD_CLIENTE
					where cp.TXT_VALOR_PARAMETRO = pUSUARIO and cp.TXT_VALOR_PARAMETRO2 = pPASSWORD and 
					c.NUM_COD_CLIENTE = pCODCLIENTE; 
                ELSE
					select count(*) as contar from tbl_cliente c  
					inner join tbl_cliente_parametros cp
					on c.NUM_COD_CLIENTE = cp.NUM_COD_CLIENTE
					where cp.TXT_VALOR_PARAMETRO = pUSUARIO and cp.TXT_VALOR_PARAMETRO2 = pPASSWORD;
                END IF;
    
    commit;

END$$

DELIMITER ;
;

