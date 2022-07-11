-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_intermedia
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_anticipo_inter`
--

DROP TABLE IF EXISTS `tbl_anticipo_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_anticipo_inter` (
  `ALEATORIO_INTER` int NOT NULL AUTO_INCREMENT,
  `TXT_SERIE` char(4) DEFAULT NULL,
  `TXT_CORRELATIVO` varchar(8) DEFAULT NULL,
  `COD_AFECTAC_IGV` varchar(3) DEFAULT NULL,
  `MONTO` decimal(12,2) DEFAULT NULL,
  `COD_REL_ATRI` char(2) DEFAULT NULL,
  `NUM_CPE_INTERMEDIA` int DEFAULT NULL,
  PRIMARY KEY (`ALEATORIO_INTER`),
  KEY `NUM_CPE_INTERMEDIA` (`NUM_CPE_INTERMEDIA`),
  CONSTRAINT `tbl_anticipo_inter_ibfk_1` FOREIGN KEY (`NUM_CPE_INTERMEDIA`) REFERENCES `tbl_cpe_cabecera_inter` (`NUM_CPE_INTERMEDIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anticipo_inter`
--

LOCK TABLES `tbl_anticipo_inter` WRITE;
/*!40000 ALTER TABLE `tbl_anticipo_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_anticipo_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente_inter`
--

DROP TABLE IF EXISTS `tbl_cliente_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente_inter` (
  `NUM_COD_CLIENTE` int NOT NULL,
  `NUM_RUC_EMIS` varchar(11) DEFAULT NULL,
  `NOM_RZN_SOC_EMIS` varchar(100) DEFAULT NULL,
  `TXT_VERS_UBL` char(3) DEFAULT NULL,
  `TXT_VERS_ESTRUCT_UBL` char(3) DEFAULT NULL,
  `COD_TIP_NIF_EMIS` char(1) DEFAULT NULL,
  `COD_UBI_EMIS` varchar(10) DEFAULT NULL,
  `TXT_DMCL_FISC_EMIS` varchar(250) DEFAULT NULL,
  `TXT_PROV_EMIS` varchar(30) DEFAULT NULL,
  `TXT_DPTO_EMIS` varchar(30) DEFAULT NULL,
  `TXT_DISTR_EMIS` varchar(30) DEFAULT NULL,
  `TXT_URB_EMIS` varchar(120) DEFAULT NULL,
  `TXT_RESOLUCION_SUNAT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NUM_COD_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente_inter`
--

LOCK TABLES `tbl_cliente_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cliente_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cliente_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente_parametros_inter`
--

DROP TABLE IF EXISTS `tbl_cliente_parametros_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cliente_parametros_inter` (
  `COD_PARAMETRO` char(3) NOT NULL,
  `NUM_COD_CLIENTE` int NOT NULL,
  `TXT_NOMBRE` varchar(100) DEFAULT NULL,
  `TXT_VALOR_PARAMETRO` varchar(100) DEFAULT NULL,
  `TXT_VALOR_PARAMETRO2` varchar(50) DEFAULT '',
  KEY `COD_PARAMETRO` (`COD_PARAMETRO`),
  KEY `NUM_COD_CLIENTE` (`NUM_COD_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente_parametros_inter`
--

LOCK TABLES `tbl_cliente_parametros_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cliente_parametros_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cliente_parametros_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cpe_cabecera_inter`
--

DROP TABLE IF EXISTS `tbl_cpe_cabecera_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cpe_cabecera_inter` (
  `NUM_CPE_INTERMEDIA` int NOT NULL AUTO_INCREMENT,
  `COD_TIP_CPE` char(2) DEFAULT NULL,
  `COD_MND` char(3) DEFAULT NULL,
  `COD_ESTADO_DOC` char(2) DEFAULT NULL,
  `COD_ESTADO_SUNAT` char(3) DEFAULT NULL,
  `COD_ERROR_SUNAT` varchar(10) DEFAULT NULL,
  `COD_CLIENTE_EMIS` char(4) DEFAULT NULL,
  `NUM_RUC_EMIS` varchar(11) DEFAULT NULL,
  `NOM_RZN_SOC_EMIS` varchar(100) DEFAULT NULL,
  `COD_TIP_NIF_EMIS` char(1) DEFAULT NULL,
  `COD_LOC_EMIS` varchar(3) DEFAULT NULL,
  `COD_UBI_EMIS` varchar(6) DEFAULT NULL,
  `TXT_DMCL_FISC_EMIS` varchar(200) DEFAULT NULL,
  `TXT_URB_EMIS` varchar(25) DEFAULT NULL,
  `TXT_PROV_EMIS` varchar(30) DEFAULT NULL,
  `TXT_DPTO_EMIS` varchar(30) DEFAULT NULL,
  `TXT_DISTR_EMIS` varchar(30) DEFAULT NULL,
  `TXT_SERIE` char(4) DEFAULT NULL,
  `TXT_CORRELATIVO` varchar(8) DEFAULT NULL,
  `COD_TIP_ESCENARIO` char(2) DEFAULT NULL,
  `TXT_PLACA` varchar(10) DEFAULT NULL,
  `NUM_IDEN_RECP` varchar(11) DEFAULT NULL,
  `COD_TIP_NIF_RECP` char(1) DEFAULT NULL,
  `NOM_RZN_SOC_RECP` varchar(100) DEFAULT NULL,
  `TXT_DMCL_FISC_RECEP` varchar(200) DEFAULT NULL,
  `PORCENTAJE_DSCTO` varchar(5) DEFAULT NULL,
  `MNT_ANTICIPO` decimal(12,2) DEFAULT NULL,
  `TXT_SERIE_ANTICIPO` char(4) DEFAULT NULL,
  `TXT_CORRELATIVO_ANTICIPO` varchar(8) DEFAULT NULL,
  `TXT_COD_CPE_ANTICIPO` char(2) DEFAULT NULL,
  `MNT_TOT_GRAVADAS` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_INAFECTAS` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_EXONERADAS` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_GRATUITAS` decimal(12,2) DEFAULT NULL,
  `MNT_OTROS_CARGOS` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_DESC_GLOBAL` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_IGV` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_IGV_ISC` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_ICBPER` decimal(12,2) DEFAULT NULL,
  `TIPO_PERCEPCION` char(2) DEFAULT NULL,
  `MNT_TOT_BASE_IMPONIBLE` decimal(12,2) DEFAULT NULL,
  `PORCENTAJE_PERCEPCION` varchar(5) DEFAULT NULL,
  `MNT_TOT_PERCEPCION` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_A_PERCIBIR` decimal(12,2) DEFAULT NULL,
  `MNT_TOT` decimal(12,2) DEFAULT NULL,
  `TXT_DESCR_MOTIVO_BAJA` varchar(120) DEFAULT NULL,
  `COD_TIP_NC_ND_REF` char(2) DEFAULT NULL,
  `TXT_CORRELATIVO_CPE_REF` varchar(8) DEFAULT NULL,
  `FEC_EMIS_REF` datetime DEFAULT NULL,
  `TXT_SERIE_REF` char(4) DEFAULT NULL,
  `COD_CPE_REF` char(2) DEFAULT NULL,
  `TXT_SUSTENTO` varchar(50) DEFAULT NULL,
  `TICKET_ID_RECEP_SUNAT` varchar(50) DEFAULT NULL,
  `COD_RPTA_ENVIO_SUNAT` varchar(10) DEFAULT NULL,
  `FECHA_ENVIO_SUNAT` datetime DEFAULT NULL,
  `FECHA_RECP_SUNAT` datetime DEFAULT NULL,
  `FEC_GENE_DOC_SUNAT` datetime DEFAULT NULL,
  `FEC_EMIS` datetime DEFAULT NULL,
  `HORA_EMIS` varchar(10) DEFAULT NULL,
  `FEC_VENCI` datetime DEFAULT NULL,
  `FEC_RECP_DOC1` datetime DEFAULT NULL,
  `FLAG_NUM_INT` char(2) DEFAULT NULL,
  `COD_IDEN_CB` char(2) DEFAULT NULL,
  `FEC_GENER_BAJA` datetime DEFAULT NULL,
  `COD_IDEN_RD` varchar(14) DEFAULT NULL,
  `TXT_CORREO_ADQUIRIENTE` varchar(120) DEFAULT NULL,
  `FLAG_CORREO` char(1) DEFAULT NULL,
  `COD_IDEN_COM_BAJA` char(2) DEFAULT NULL,
  `FEC_RECP_DOC2` datetime DEFAULT NULL,
  `TXT_RESP` char(2) DEFAULT NULL,
  `TIPO_CAMBIO` decimal(12,2) DEFAULT NULL,
  `TXT_CONDICION_PAGO` varchar(60) DEFAULT NULL,
  `COD_MODO_PAGO` char(4) DEFAULT NULL,
  `FLAG_PAGADO` char(1) DEFAULT NULL,
  `FLAG_ENVIO_BOLETAS` char(1) DEFAULT NULL,
  `TXT_FLAGCARGA` char(1) DEFAULT NULL,
  `COD_OPERACION` varchar(4) DEFAULT NULL,
  `OBSERVACIONES` varchar(150) DEFAULT NULL,
  `ORDEN_COMPRA` varchar(20) DEFAULT NULL,
  `GUIA_REMISION` varchar(50) DEFAULT NULL,
  `FLAG_ENVIO_AUTOMATICO` char(1) DEFAULT NULL,
  `DATO_EXTRA_1` varchar(120) DEFAULT NULL,
  `DATO_EXTRA_2` varchar(120) DEFAULT NULL,
  `DATO_EXTRA_3` varchar(120) DEFAULT NULL,
  `DATO_EXTRA_4` varchar(120) DEFAULT NULL,
  `MNT_TOT_DETRAC` decimal(12,2) DEFAULT NULL,
  `PERCENT_DETRAC` varchar(5) DEFAULT NULL,
  `DESCRIP_DETRAC` varchar(100) DEFAULT NULL,
  `NUM_CTA_BN` varchar(20) DEFAULT NULL,
  `TIP_DETRAC` char(1) DEFAULT NULL,
  `INFOS_DETRAC` varchar(100) DEFAULT NULL,
  `GUIA_TXT_COD_UBIG` varchar(6) DEFAULT NULL,
  `GUIA_TXT_DMCL_FISC` varchar(100) DEFAULT NULL,
  `GUIA_TXT_URB` varchar(25) DEFAULT NULL,
  `GUIA_TXT_PROV` varchar(30) DEFAULT NULL,
  `GUIA_TXT_DPTO` varchar(30) DEFAULT NULL,
  `GUIA_TXT_DISTR` varchar(30) DEFAULT NULL,
  `GUIA_TXT_PAIS` char(2) DEFAULT NULL,
  `GUIA_COD_UBIG_LLEGDA` varchar(6) DEFAULT NULL,
  `GUIA_TXT_DMCL_FISC_LLEGDA` varchar(100) DEFAULT NULL,
  `GUIA_TXT_URB_LLEGDA` varchar(25) DEFAULT NULL,
  `GUIA_TXT_PROV_LLEGDA` varchar(30) DEFAULT NULL,
  `GUIA_TXT_DPTO_LLEGDA` varchar(30) DEFAULT NULL,
  `GUIA_TXT_DISTR_LLEGDA` varchar(30) DEFAULT NULL,
  `GUIA_TXT_PAIS_LLEGDA` char(2) DEFAULT NULL,
  `GUIA_TXT_PLACA_AUTO_TRNSP` varchar(10) DEFAULT NULL,
  `GUIA_TXT_CERT_AUTO_TRNSP` varchar(30) DEFAULT NULL,
  `GUIA_TXT_MARCA_AUTO_TRNSP` varchar(50) DEFAULT NULL,
  `GUIA_TXT_LIC_COND_TRNSP` varchar(30) DEFAULT NULL,
  `GUIA_TXT_RUC_TRNSP` varchar(11) DEFAULT NULL,
  `GUIA_TXT_COD_OTR_TRNSP` char(2) DEFAULT NULL,
  `GUIA_TXT_RZN_SCL_TRNSP` varchar(100) DEFAULT NULL,
  `GUIA_TXT_COD_MOD_TRNSP` char(2) DEFAULT NULL,
  `GUIA_MNT_TOTAL_BRUTO` decimal(12,2) DEFAULT NULL,
  `GUIA_COD_UNID_MED` char(3) DEFAULT NULL,
  `MARCA_EXPOR` varchar(25) DEFAULT NULL,
  `ORIGEN_EXPOR` varchar(25) DEFAULT NULL,
  `DESPACHO_EXPOR` varchar(25) DEFAULT NULL,
  `SOLDTO_EXPOR` varchar(25) DEFAULT NULL,
  `SHIPTO_EXPOR` varchar(25) DEFAULT NULL,
  `NUMEROCAJAS_EXPOR` varchar(15) DEFAULT NULL,
  `PESOBRUTO_EXPOR` decimal(12,2) DEFAULT NULL,
  `PESONETO_EXPOR` decimal(12,2) DEFAULT NULL,
  `VOLUMEN_EXPOR` decimal(12,2) DEFAULT NULL,
  `ESTAD_ITEM` char(1) DEFAULT NULL,
  `COD_TIP_FRMPGO` int DEFAULT NULL,
  `MNTO_CRDT_TTAL` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`NUM_CPE_INTERMEDIA`),
  KEY `idx_carga_cpes` (`COD_CLIENTE_EMIS`,`TXT_FLAGCARGA`),
  KEY `idx_cpes` (`COD_TIP_CPE`,`FEC_EMIS`,`COD_CLIENTE_EMIS`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cpe_cabecera_inter`
--

LOCK TABLES `tbl_cpe_cabecera_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cpe_cabecera_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cpe_cabecera_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cpe_cabecera_retencion_inter`
--

DROP TABLE IF EXISTS `tbl_cpe_cabecera_retencion_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cpe_cabecera_retencion_inter` (
  `NUM_CPE_INTERMEDIA` int NOT NULL AUTO_INCREMENT,
  `COD_TIP_CPE` char(2) DEFAULT NULL,
  `COD_MND` char(3) DEFAULT NULL,
  `COD_ESTADO_DOC` char(2) DEFAULT NULL,
  `COD_ESTADO_SUNAT` char(3) DEFAULT NULL,
  `COD_ERROR_SUNAT` varchar(10) DEFAULT NULL,
  `COD_CLIENTE_EMIS` char(1) DEFAULT NULL,
  `NUM_RUC_EMIS` varchar(11) DEFAULT NULL,
  `NOM_RZN_SOC_EMIS` varchar(100) DEFAULT NULL,
  `COD_TIP_NIF_EMIS` varchar(1) DEFAULT NULL,
  `COD_UBI_EMIS` varchar(10) DEFAULT NULL,
  `TXT_DMCL_FISC_EMIS` varchar(250) DEFAULT NULL,
  `TXT_URB_EMIS` varchar(100) DEFAULT NULL,
  `TXT_PROV_EMIS` varchar(100) DEFAULT NULL,
  `TXT_DPTO_EMIS` varchar(100) DEFAULT NULL,
  `TXT_COD_PAIS_EMIS` varchar(5) DEFAULT NULL,
  `TXT_DISTR_EMIS` varchar(100) DEFAULT NULL,
  `TXT_SERIE` char(4) DEFAULT NULL,
  `TXT_CORRELATIVO` varchar(12) DEFAULT NULL,
  `COD_TIP_ESCENARIO` char(2) DEFAULT NULL,
  `NUM_IDEN_PROV` varchar(20) DEFAULT NULL,
  `COD_TIP_NIF_PROV` char(1) DEFAULT NULL,
  `NOM_RZN_SOC_PROV` varchar(120) DEFAULT NULL,
  `COD_UBI_PROV` varchar(10) DEFAULT NULL,
  `TXT_DMCL_FISC_PROV` varchar(250) DEFAULT NULL,
  `TXT_URB_PROV` varchar(100) DEFAULT NULL,
  `TXT_PROV_PROV` varchar(100) DEFAULT NULL,
  `TXT_DPTO_PROV` varchar(100) DEFAULT NULL,
  `TXT_COD_PAIS_PROV` varchar(5) DEFAULT NULL,
  `TXT_DISTR_PROV` varchar(100) DEFAULT NULL,
  `TXT_TASA` char(2) DEFAULT NULL,
  `TXT_PERCENT_TASA` decimal(12,2) DEFAULT NULL,
  `FLAG_CORREO` char(1) DEFAULT NULL,
  `TXT_CORREO_PROV` varchar(1000) DEFAULT NULL,
  `OBSERVACIONES` varchar(300) DEFAULT NULL,
  `TXT_ENVIO_SUNAT` char(1) DEFAULT NULL,
  `MNT_TOT_RETENIDO` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_PAGADO` decimal(12,2) DEFAULT NULL,
  `TICKET_ID_RECEP_SUNAT` varchar(50) DEFAULT NULL,
  `COD_RPTA_ENVIO_SUNAT` varchar(10) DEFAULT NULL,
  `FECHA_ENVIO_SUNAT` datetime DEFAULT NULL,
  `FECHA_RECP_SUNAT` datetime DEFAULT NULL,
  `FEC_GENE_DOC_SUNAT` datetime DEFAULT NULL,
  `FEC_EMIS` datetime DEFAULT NULL,
  `FEC_RECP_DOC1` datetime DEFAULT NULL,
  `FEC_RECP_DOC2` datetime DEFAULT NULL,
  `FLAG_NUM_INT` char(2) DEFAULT NULL,
  `TXT_RESP` char(2) DEFAULT NULL,
  `TXT_FLAGCARGA` char(1) DEFAULT NULL,
  PRIMARY KEY (`NUM_CPE_INTERMEDIA`),
  KEY `idx_carga_cpes` (`COD_CLIENTE_EMIS`,`TXT_FLAGCARGA`),
  KEY `idx_cpes` (`COD_TIP_CPE`,`FEC_EMIS`,`COD_CLIENTE_EMIS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cpe_cabecera_retencion_inter`
--

LOCK TABLES `tbl_cpe_cabecera_retencion_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cpe_cabecera_retencion_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cpe_cabecera_retencion_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cpe_det_cabecera_inter`
--

DROP TABLE IF EXISTS `tbl_cpe_det_cabecera_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cpe_det_cabecera_inter` (
  `NUM_DET_CABECERA_INTER` int NOT NULL AUTO_INCREMENT,
  `NUM_LIN_ITEM` int DEFAULT NULL,
  `COD_UNID_ITEM` varchar(3) DEFAULT NULL,
  `CANT_UNID_ITEM` decimal(22,10) DEFAULT NULL,
  `VAL_VTA_ITEM` decimal(12,4) DEFAULT NULL,
  `COD_TIP_AFECT_IGV_ITEM` char(2) DEFAULT NULL,
  `PRC_VTA_UNIT_ITEM` decimal(22,10) DEFAULT NULL,
  `MNT_DSCTO_ITEM` decimal(12,2) DEFAULT NULL,
  `MNT_IGV_ITEM` decimal(12,2) DEFAULT NULL,
  `TXT_DESCR_ITEM` varchar(250) DEFAULT NULL,
  `COD_ITEM` varchar(30) DEFAULT NULL,
  `COD_PROD_SUNAT` varchar(30) DEFAULT NULL,
  `VAL_UNIT_ITEM` decimal(22,10) DEFAULT NULL,
  `COD_TIP_SIST_ISC` varchar(2) DEFAULT NULL,
  `PORCENTAJE_ISC` varchar(5) DEFAULT NULL,
  `MNT_ISC_ITEM` decimal(12,2) DEFAULT NULL,
  `VAL_UNIT_ICBPER` decimal(12,5) DEFAULT NULL,
  `CANT_ICBPER_ITEM` decimal(12,2) DEFAULT NULL,
  `MNT_ICBPER_ITEM` decimal(12,2) DEFAULT NULL,
  `DATO_EXTRA_1` varchar(300) DEFAULT NULL,
  `DATO_EXTRA_2` varchar(300) DEFAULT NULL,
  `IMPORTE_TOTAL_ITEM` decimal(12,2) DEFAULT NULL,
  `NUM_CPE_INTERMEDIA` int DEFAULT NULL,
  `COD_CLIENTE_EMIS` char(4) DEFAULT NULL,
  PRIMARY KEY (`NUM_DET_CABECERA_INTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cpe_det_cabecera_inter`
--

LOCK TABLES `tbl_cpe_det_cabecera_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cpe_det_cabecera_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cpe_det_cabecera_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cpe_det_cabecera_retencion_inter`
--

DROP TABLE IF EXISTS `tbl_cpe_det_cabecera_retencion_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cpe_det_cabecera_retencion_inter` (
  `NUM_DET_RETENCION_INTER` int NOT NULL AUTO_INCREMENT,
  `NUM_LIN_ITEM` int DEFAULT NULL,
  `COD_TIP_CPE` char(2) DEFAULT NULL,
  `TXT_SERIE_REL` char(4) DEFAULT NULL,
  `TXT_CORRELATIVO_REL` varchar(12) DEFAULT NULL,
  `FEC_EMIS_REL` datetime DEFAULT NULL,
  `COD_MND` char(3) DEFAULT NULL,
  `MNT_TOTAL_REL` decimal(12,2) DEFAULT NULL,
  `TIPO_CAMBIO` decimal(12,2) DEFAULT NULL,
  `FEC_TIPO_CAMBIO` datetime DEFAULT NULL,
  `MNT_SIN_RETENCION` decimal(12,2) DEFAULT NULL,
  `NUM_PAGO` varchar(10) DEFAULT NULL,
  `FECHA_PAGO` datetime DEFAULT NULL,
  `MNT_RETENIDO` decimal(12,2) DEFAULT NULL,
  `MNT_TOT_NETO_PAGADO` decimal(12,2) DEFAULT NULL,
  `FEC_RETENCION` datetime DEFAULT NULL,
  `NUM_CPE_INTERMEDIA` int DEFAULT NULL,
  `COD_CLIENTE_EMIS` char(2) DEFAULT NULL,
  PRIMARY KEY (`NUM_DET_RETENCION_INTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cpe_det_cabecera_retencion_inter`
--

LOCK TABLES `tbl_cpe_det_cabecera_retencion_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cpe_det_cabecera_retencion_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cpe_det_cabecera_retencion_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cpe_inter`
--

DROP TABLE IF EXISTS `tbl_cpe_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cpe_inter` (
  `COD_TIP_CPE` char(2) NOT NULL,
  `TXT_DESCR_CPE` varchar(200) NOT NULL,
  `FLG_ESTD` char(1) DEFAULT NULL,
  PRIMARY KEY (`COD_TIP_CPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cpe_inter`
--

LOCK TABLES `tbl_cpe_inter` WRITE;
/*!40000 ALTER TABLE `tbl_cpe_inter` DISABLE KEYS */;
INSERT INTO `tbl_cpe_inter` VALUES ('01','FACTURA','1'),('03','BOLETA DE VENTA','1'),('07','NOTA DE CR','1'),('08','NOTA DE D','1');
/*!40000 ALTER TABLE `tbl_cpe_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_credito_cuota_inter`
--

DROP TABLE IF EXISTS `tbl_credito_cuota_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_credito_cuota_inter` (
  `CUOTA_ID_INTERMEDIA` int NOT NULL AUTO_INCREMENT,
  `NUM_CPE_INTERMEDIA` int DEFAULT NULL,
  `NUM_CUOTA` int DEFAULT NULL,
  `MNT_CRDT_CTA` decimal(12,2) DEFAULT NULL,
  `FCHA_CTA` datetime DEFAULT NULL,
  PRIMARY KEY (`CUOTA_ID_INTERMEDIA`),
  KEY `NUM_CPE_INTERMEDIA` (`NUM_CPE_INTERMEDIA`),
  CONSTRAINT `tbl_credito_cuota_inter_ibfk_1` FOREIGN KEY (`NUM_CPE_INTERMEDIA`) REFERENCES `tbl_cpe_cabecera_inter` (`NUM_CPE_INTERMEDIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_credito_cuota_inter`
--

LOCK TABLES `tbl_credito_cuota_inter` WRITE;
/*!40000 ALTER TABLE `tbl_credito_cuota_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_credito_cuota_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_errores_sunat_inter`
--

DROP TABLE IF EXISTS `tbl_errores_sunat_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_errores_sunat_inter` (
  `TXT_COD_ERROR` varchar(10) NOT NULL,
  `TXT_DESCRIPCION` varchar(500) NOT NULL,
  PRIMARY KEY (`TXT_COD_ERROR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_errores_sunat_inter`
--

LOCK TABLES `tbl_errores_sunat_inter` WRITE;
/*!40000 ALTER TABLE `tbl_errores_sunat_inter` DISABLE KEYS */;
INSERT INTO `tbl_errores_sunat_inter` VALUES ('-','Comprobante no existe'),('0','SIN ERRORES'),('0100','El sistema no puede responder su solicitud. Intente nuevamente o comun'),('0101','El encabezado de seguridad es incorrecto '),('0102','Usuario o contrase'),('0103','El Usuario ingresado no existe '),('0104','La Clave ingresada es incorrecta '),('0105','El Usuario no est'),('0106','El Usuario no es v'),('0109','El sistema no puede responder su solicitud. (El servicio de autenticaci'),('0110','No se pudo obtener la informacion del tipo de usuario '),('0111','No tiene el perfil para enviar comprobantes electronicos '),('0112','El usuario debe ser secundario '),('0113','El usuario no esta afiliado a Factura Electronica '),('0125','No se pudo obtener la constancia '),('0126','El ticket no le pertenece al usuario '),('0127','El ticket no existe '),('0130','El sistema no puede responder su solicitud. (No se pudo obtener el ticket de proceso) '),('0131','El sistema no puede responder su solicitud. (No se pudo grabar el archivo en el directorio) '),('0132','El sistema no puede responder su solicitud. (No se pudo grabar escribir en el archivo zip) '),('0133','El sistema no puede responder su solicitud. (No se pudo grabar la entrada del log) '),('0134','El sistema no puede responder su solicitud. (No se pudo grabar en el storage) '),('0135','El sistema no puede responder su solicitud. (No se pudo encolar el pedido) '),('0136','El sistema no puede responder su solicitud. (No se pudo recibir una respuesta del batch) '),('0137','El sistema no puede responder su solicitud. (Se obtuvo una respuesta nula) '),('0138','El sistema no puede responder su solicitud. (Error en Base de Datos)'),('0151','El nombre del archivo ZIP es incorrecto '),('0152','No se puede enviar por este m'),('0153','No se puede enviar por este m'),('0154','El RUC del archivo no corresponde al RUC del usuario '),('0155','El archivo ZIP esta vacio '),('0156','El archivo ZIP esta corrupto '),('0157','El archivo ZIP no contiene comprobantes '),('0158','El archivo ZIP contiene demasiados comprobantes para este tipo de env'),('0159','El nombre del archivo XML es incorrecto '),('0160','El archivo XML esta vacio '),('0161','El nombre del archivo XML no coincide con el nombre del archivo ZIP '),('0200','No se pudo procesar su solicitud. (Ocurrio un error en el batch) '),('0201','No se pudo procesar su solicitud. (Llego un requerimiento nulo al batch)'),('0202','No se pudo procesar su solicitud. (No llego informaci'),('0203','No se pudo procesar su solicitud. (No se encontro archivos en la informacion del archivo ZIP)'),('0204','No se pudo procesar su solicitud. (Este tipo de requerimiento solo acepta 1 archivo)'),('0250','No se pudo procesar su solicitud. (Ocurrio un error desconocido al hacer unzip) '),('0251','No se pudo procesar su solicitud. (No se pudo crear un directorio para el unzip) '),('0252','No se pudo procesar su solicitud. (No se encontro archivos dentro del zip) '),('0253','No se pudo procesar su solicitud. (No se pudo comprimir la constancia) '),('0300','No se encontr'),('0301','Elemento raiz del xml no esta definido'),('0302','Codigo del tipo de comprobante no registrado'),('0303','No existe el directorio de schemas '),('0304','No existe el archivo de schema '),('0305','El sistema no puede procesar el archivo xml '),('0306','No se puede leer (parsear) el archivo XML '),('0307','No se pudo recuperar la constancia '),('0400','No tiene permiso para enviar casos de pruebas '),('0401','El caso de prueba no existe '),('0402','La numeracion o nombre del documento ya ha sido enviado anteriormente '),('0403','El documento afectado por la nota no existe '),('0404','El documento afectado por la nota se encuentra rechazado '),('1001','ID - El dato SERIE-CORRELATIVO no cumple con el formato de acuerdo al tipo de comprobante '),('1002','El XML no contiene informacion en el tag ID '),('1003','InvoiceTypeCode - El valor del tipo de documento es invalido o no coincide con el nombre del archivo '),('1004','El XML no contiene el tag o no existe informacion de InvoiceTypeCode '),('1005','CustomerAssignedAccountID - El dato ingresado no cumple con el estandar '),('1006','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del emisor del documento '),('1007','AdditionalAccountID - El dato ingresado no cumple con el estandar '),('1008','El XML no contiene el tag o no existe informacion de AdditionalAccountID del emisor del documento '),('1009','IssueDate - El dato ingresado  no cumple con el patron YYYY-MM-DD'),('1010','El XML no contiene el tag IssueDate'),('1011','IssueDate- El dato ingresado no es valido'),('1012','ID - El dato ingresado no cumple con el patron SERIE-CORRELATIVO'),('1013','El XML no contiene informacion en el tag ID'),('1014','CustomerAssignedAccountID - El dato ingresado no cumple con el est'),('1015','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del emisor del documento'),('1016','AdditionalAccountID - El dato ingresado no cumple con el est'),('1017','El XML no contiene el tag AdditionalAccountID del emisor del documento'),('1018','IssueDate - El dato ingresado no cumple con el patron YYYY-MM-DD'),('1019','El XML no contiene el tag IssueDate'),('1020','IssueDate- El dato ingresado no es valido'),('1021','Error en la validacion de la nota de credito'),('1022','La serie o numero del documento modificado por la Nota Electr'),('1023','No se ha especificado el tipo de documento modificado por la Nota electronica '),('1024','CustomerAssignedAccountID - El dato ingresado no cumple con el est'),('1025','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del emisor del documento'),('1026','AdditionalAccountID - El dato ingresado no cumple con el est'),('1027','El XML no contiene el tag AdditionalAccountID del emisor del documento'),('1028','IssueDate - El dato ingresado no cumple con el patron YYYY-MM-DD'),('1029','El XML no contiene el tag IssueDate'),('1030','IssueDate- El dato ingresado no es valido'),('1031','Error en la validacion de la nota de debito'),('1032','El comprobante fue informado previamente en una comunicacion de baja '),('1033','El comprobante fue registrado previamente con otros datos '),('1034','N'),('1035','Numero de Serie del nombre del archivo no coincide con el consignado en el contenido del archivo XML '),('1036','N'),('1037','El XML no contiene el tag o no existe informacion de RegistrationName del emisor del documento '),('1038','RegistrationName - El nombre o razon social del emisor no cumple con el estandar '),('1039','Solo se pueden recibir notas electronicas que modifican facturas '),('1040','El tipo de documento modificado por la nota electronica no es valido '),('2010','El contribuyente no esta activo '),('2011','El contribuyente no esta habido '),('2012','El contribuyente no est'),('2013','El contribuyente no cumple con tipo de empresa o tributos requeridos '),('2014','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del receptor del documento '),('2015','El XML no contiene el tag o no existe informacion de AdditionalAccountID del receptor del documento '),('2016','AdditionalAccountID - El dato ingresado en el tipo de documento de identidad del receptor no cumple con el estandar '),('2017','CustomerAssignedAccountID - El numero de documento de identidad del recepetor debe ser RUC '),('2018','CustomerAssignedAccountID -  El dato ingresado no cumple con el est'),('2019','El XML no contiene el tag o no existe informacion de RegistrationName del emisor del documento'),('2020','RegistrationName - El nombre o razon social del emisor no cumple con el est'),('2021','El XML no contiene el tag o no existe informacion de RegistrationName del receptor del documento '),('2022','RegistrationName - El dato ingresado no cumple con el estandar '),('2023','El Numero de orden del item no cumple con el formato establecido '),('2024','El XML no contiene el tag InvoicedQuantity en el detalle de los Items '),('2025','InvoicedQuantity El dato ingresado no cumple con el estandar '),('2026','El XML no contiene el tag cac:Item/cbc:Description en el detalle de los Items'),('2027','El XML no contiene el tag o no existe informacion de cac:Item/cbc:Description del item '),('2028','Debe existir el tag cac:AlternativeConditionPrice con un elemento cbc:PriceTypeCode con valor 01 '),('2029','PriceTypeCode El dato ingresado no cumple con el est'),('2030','El XML no contiene el tag cbc:PriceTypeCode'),('2031','LineExtensionAmount El dato ingresado no cumple con el est'),('2032','El XML no contiene el tag LineExtensionAmount en el detalle de los Items'),('2033','El dato ingresado en TaxAmount de la linea no cumple con el formato establecido '),('2034','TaxAmount es obligatorio'),('2035','cac:TaxCategory/cac:TaxScheme/cbc:ID El dato ingresado no cumple con el estandar '),('2036','El codigo del tributo es invalido '),('2037','El XML no contiene el tag cac:TaxCategory/cac:TaxScheme/cbc:ID del Item'),('2038','cac:TaxScheme/cbc:Name del item - No existe el tag o el dato ingresado no cumple con el estandar '),('2039','El XML no contiene el tag cac:TaxCategory/cac:TaxScheme/cbc:Name del Item'),('2040','El tipo de afectacion del IGV es incorrecto '),('2041','El sistema de calculo del ISC es incorrecto '),('2042','Debe indicar el IGV. Es un campo obligatorio '),('2043','El dato ingresado en PayableAmount no cumple con el formato establecido '),('2044','PayableAmount es obligatorio'),('2045','El valor ingresado en AdditionalMonetaryTotal/cbc:ID es incorrecto '),('2046','AdditionalMonetaryTotal/cbc:ID debe tener valor'),('2047','Es obligatorio al menos un AdditionalMonetaryTotal con codigo 1001, 1002 o 1003 '),('2048','El dato ingresado en TaxAmount no cumple con el formato establecido '),('2049','TaxAmount es obligatorio'),('2050','TaxScheme ID - No existe el tag o el dato ingresado no cumple con el estandar '),('2051','El codigo del tributo es invalido '),('2052','El XML no contiene el tag TaxScheme ID de impuestos globales'),('2053','TaxScheme Name - No existe el tag o el dato ingresado no cumple con el estandar '),('2054','El XML no contiene el tag TaxScheme Name de impuestos globales'),('2055','TaxScheme TaxTypeCode - El dato ingresado no cumple con el estandar '),('2056','El XML no contiene el tag TaxScheme TaxTypeCode de impuestos globales'),('2057','El Name o TaxTypeCode debe corresponder con el Id para el IGV '),('2058','El Name o TaxTypeCode debe corresponder con el Id para el ISC '),('2059','El dato ingresado en TaxSubtotal/cbc:TaxAmount no cumple con el formato establecido '),('2060','TaxSubtotal/cbc:TaxAmount es obligatorio'),('2061','El tag global cac:TaxTotal/cbc:TaxAmount debe tener el mismo valor que cac:TaxTotal/cac:Subtotal/cbc:TaxAmount '),('2062','El dato ingresado en PayableAmount no cumple con el formato establecido '),('2063','El XML no contiene el tag PayableAmount'),('2064','El dato ingresado en ChargeTotalAmount no cumple con el formato establecido '),('2065','El dato ingresado en el campo Total Descuentos no cumple con el formato establecido '),('2066','Debe indicar una descripcion para el tag sac:AdditionalProperty/cbc:Value'),('2067','cac:Price/cbc:PriceAmount - El dato ingresado no cumple con el estandar'),('2068','El XML no contiene el tag cac:Price/cbc:PriceAmount en el detalle de los Items '),('2069','DocumentCurrencyCode - El dato ingresado no cumple con la estructura '),('2070','El XML no contiene el tag o no existe informacion de DocumentCurrencyCode '),('2071','La moneda debe ser la misma en todo el documento '),('2072','CustomizationID - La versi'),('2073','El XML no contiene el tag o no existe informacion de CustomizationID '),('2074','UBLVersionID - La versi'),('2075','El XML no contiene el tag o no existe informacion de UBLVersionID '),('2076','cac:Signature/cbc:ID - Falta el identificador de la firma '),('2077','El tag cac:Signature/cbc:ID debe contener informacion '),('2078','cac:Signature/cac:SignatoryParty/cac:PartyIdentification/cbc:ID - Debe ser igual al RUC del emisor '),('2079','El XML no contiene el tag cac:Signature/cac:SignatoryParty/cac:PartyIdentification/cbc:ID'),('2080','cac:Signature/cac:SignatoryParty/cac:PartyName/cbc:Name - No cumple con el estandar '),('2081','El XML no contiene el tag cac:Signature/cac:SignatoryParty/cac:PartyName/cbc:Name'),('2082','cac:Signature/cac:DigitalSignatureAttachment/cac:ExternalReference/cbc:URI - No cumple con el estandar '),('2083','El XML no contiene el tag cac:Signature/cac:DigitalSignatureAttachment/cac:ExternalReference/cbc:URI '),('2084','ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/ds:Signature/@Id - No cumple con el estandar '),('2085','El XML no contiene el tag ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/ds:Signature/@Id '),('2086','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:CanonicalizationMethod/@Algorithm - No cumple con el estandar '),('2087','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:CanonicalizationMethod/@Algorithm '),('2088','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:SignatureMethod/@Algorithm - No cumple con el estandar '),('2089','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:SignatureMethod/@Algorithm '),('2090','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/@URI - Debe estar vacio para id '),('2091','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/@URI'),('2092','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/.../ds:Transform@Algorithm - No cumple con el estandar '),('2093','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/ds:Transform@Algorithm '),('2094','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/ds:DigestMethod/@Algorithm - No cumple con el estandar '),('2095','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/ds:DigestMethod/@Algorithm '),('2096','ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/ds:DigestValue - No cumple con el estandar '),('2097','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignedInfo/ds:Reference/ds:DigestValue '),('2098','ext:UBLExtensions/.../ds:Signature/ds:SignatureValue - No cumple con el estandar '),('2099','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:SignatureValue '),('2100','ext:UBLExtensions/.../ds:Signature/ds:KeyInfo/ds:X509Data/ds:X509Certificate - No cumple con el estandar '),('2101','El XML no contiene el tag ext:UBLExtensions/.../ds:Signature/ds:KeyInfo/ds:X509Data/ds:X509Certificate '),('2102','Error al procesar la factura'),('2103','La serie ingresada no es v'),('2104','Numero de RUC del emisor no existe'),('2105','Factura a dar de baja no se encuentra registrada en SUNAT '),('2106','Factura a dar de baja ya se encuentra en estado de baja '),('2107','Numero de RUC SOL no coincide con RUC emisor'),('2108','Presentacion fuera de fecha '),('2109','El comprobante fue registrado previamente con otros datos'),('2110','UBLVersionID - La versi'),('2111','El XML no contiene el tag o no existe informacion de UBLVersionID'),('2112','CustomizationID - La version del documento no es correcta'),('2113','El XML no contiene el tag o no existe informacion de CustomizationID'),('2114','DocumentCurrencyCode -  El dato ingresado no cumple con la estructura'),('2115','El XML no contiene el tag o no existe informacion de DocumentCurrencyCode'),('2116','El tipo de documento modificado por la Nota de credito debe ser factura electronica o ticket '),('2117','La serie o numero del documento modificado por la Nota de Credito no cumple con el formato establecido '),('2118','Debe indicar las facturas relacionadas a la Nota de Credito '),('2119','La factura relacionada en la Nota de credito no esta registrada. '),('2120','La factura relacionada en la nota de credito se encuentra de baja '),('2121','La factura relacionada en la nota de credito esta registrada como rechazada '),('2122','El tag cac:LegalMonetaryTotal/cbc:PayableAmount debe tener informacion valida'),('2123','RegistrationName -  El dato ingresado no cumple con el estandar'),('2124','El XML no contiene el tag RegistrationName del emisor del documento'),('2125','ReferenceID - El dato ingresado debe indicar SERIE-CORRELATIVO del documento al que se relaciona la Nota '),('2126','El XML no contiene informacion en el tag ReferenceID del documento al que se relaciona la nota '),('2127','ResponseCode - El dato ingresado no cumple con la estructura '),('2128','El XML no contiene el tag o no existe informacion de ResponseCode '),('2129','AdditionalAccountID - El dato ingresado en el tipo de documento de identidad del receptor no cumple con el estandar '),('2130','El XML no contiene el tag o no existe informacion de AdditionalAccountID del receptor del documento '),('2131','CustomerAssignedAccountID - El numero de documento de identidad del receptor debe ser RUC '),('2132','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del receptor del documento '),('2133','RegistrationName - El dato ingresado no cumple con el estandar '),('2134','El XML no contiene el tag o no existe informacion de RegistrationName del receptor del documento '),('2135','cac:DiscrepancyResponse/cbc:Description - El dato ingresado no cumple con la estructura '),('2136','El XML no contiene el tag o no existe informacion de cac:DiscrepancyResponse/cbc:Description '),('2137','El N'),('2138','CreditedQuantity/@unitCode - El dato ingresado no cumple con el estandar'),('2139','CreditedQuantity - El dato ingresado no cumple con el estandar '),('2140','El PriceTypeCode debe tener el valor 01 '),('2141','cac:TaxCategory/cac:TaxScheme/cbc:ID - El dato ingresado no cumple con el estandar '),('2142','El codigo del tributo es invalido '),('2143','cac:TaxScheme/cbc:Name del item - No existe el tag o el dato ingresado no cumple con el estandar '),('2144','cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode El dato ingresado no cumple con el estandar'),('2145','El tipo de afectacion del IGV es incorrecto '),('2146','El Nombre Internacional debe ser VAT'),('2147','El sistema de calculo del ISC es incorrecto '),('2148','El Nombre Internacional debe ser EXC '),('2149','El dato ingresado en PayableAmount no cumple con el formato establecido '),('2150','El valor ingresado en AdditionalMonetaryTotal/cbc:ID es incorrecto '),('2151','AdditionalMonetaryTotal/cbc:ID debe tener valor '),('2152','Es obligatorio al menos un AdditionalInformation'),('2153','Error al procesar la Nota de Credito'),('2154','TaxAmount - El dato ingresado en impuestos globales no cumple con el estandar'),('2155','El XML no contiene el tag TaxAmount de impuestos globales'),('2156','TaxScheme ID - El dato ingresado no cumple con el estandar '),('2157','El codigo del tributo es invalido '),('2158','El XML no contiene el tag o no existe informacion de TaxScheme ID de impuestos globales '),('2159','TaxScheme Name - El dato ingresado no cumple con el estandar '),('2160','El XML no contiene el tag o no existe informacion de TaxScheme Name de impuestos globales '),('2161','CustomizationID - La version del documento no es correcta'),('2162','El XML no contiene el tag o no existe informacion de CustomizationID'),('2163','UBLVersionID - La versi'),('2164','El XML no contiene el tag o no existe informacion de UBLVersionID'),('2165','Error al procesar la Nota de Debito'),('2166','RegistrationName - El dato ingresado no cumple con el estandar'),('2167','El XML no contiene el tag RegistrationName del emisor del documento'),('2168','DocumentCurrencyCode -  El dato ingresado no cumple con el formato establecido'),('2169','El XML no contiene el tag o no existe informacion de DocumentCurrencyCode'),('2170','ReferenceID - El dato ingresado debe indicar SERIE-CORRELATIVO del documento al que se relaciona la Nota '),('2171','El XML no contiene informacion en el tag ReferenceID del documento al que se relaciona la nota '),('2172','ResponseCode - El dato ingresado no cumple con la estructura '),('2173','El XML no contiene el tag o no existe informacion de ResponseCode '),('2174','cac:DiscrepancyResponse/cbc:Description - El dato ingresado no cumple con la estructura '),('2175','El XML no contiene el tag o no existe informacion de cac:DiscrepancyResponse/cbc:Description '),('2176','AdditionalAccountID - El dato ingresado en el tipo de documento de identidad del receptor no cumple con el estandar '),('2177','El XML no contiene el tag o no existe informacion de AdditionalAccountID del receptor del documento '),('2178','CustomerAssignedAccountID - El numero de documento de identidad del receptor debe ser RUC. '),('2179','El XML no contiene el tag o no existe informacion de CustomerAssignedAccountID del receptor del documento '),('2180','RegistrationName - El dato ingresado no cumple con el estandar '),('2181','El XML no contiene el tag o no existe informacion de RegistrationName del receptor del documento '),('2182','TaxScheme ID - El dato ingresado no cumple con el estandar '),('2183','El codigo del tributo es invalido '),('2184','El XML no contiene el tag o no existe informacion de TaxScheme ID de impuestos globales '),('2185','TaxScheme Name - El dato ingresado no cumple con el estandar '),('2186','El XML no contiene el tag o no existe informacion de TaxScheme Name de impuestos globales '),('2187','El Numero de orden del item no cumple con el formato establecido '),('2188','DebitedQuantity/@unitCode El dato ingresado no cumple con el estandar'),('2189','DebitedQuantity El dato ingresado no cumple con el estandar '),('2190','El XML no contiene el tag Price/cbc:PriceAmount en el detalle de los Items '),('2191','El XML no contiene el tag Price/cbc:LineExtensionAmount en el detalle de los Items'),('2192','EL PriceTypeCode debe tener el valor 01 '),('2193','cac:TaxCategory/cac:TaxScheme/cbc:ID El dato ingresado no cumple con el estandar '),('2194','El codigo del tributo es invalido '),('2195','cac:TaxScheme/cbc:Name del item - No existe el tag o el dato ingresado no cumple con el estandar '),('2196','cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode El dato ingresado no cumple con el estandar'),('2197','El tipo de afectacion del IGV es incorrecto '),('2198','El Nombre Internacional debe ser VAT'),('2199','El sistema de calculo del ISC es incorrecto '),('2200','El Nombre Internacional debe ser EXC'),('2201','El tag cac:RequestedMonetaryTotal/cbc:PayableAmount debe tener informacion valida'),('2202','TaxAmount - El dato ingresado en impuestos globales no cumple con el est'),('2203','El XML no contiene el tag TaxAmount de impuestos globales'),('2204','El tipo de documento modificado por la Nota de Debito debe ser factura electronica o ticket '),('2205','La serie o numero del documento modificado por la Nota de Debito no cumple con el formato establecido '),('2206','Debe indicar los documentos afectados por la Nota de Debito '),('2207','La factura relacionada en la nota de debito se encuentra de baja '),('2208','La factura relacionada en la nota de debito esta registrada como rechazada '),('2209','La factura relacionada en la Nota de debito no esta registrada '),('2210','El dato ingresado no cumple con el formato RC-fecha-correlativo '),('2211','El XML no contiene el tag ID '),('2212','UBLVersionID - La versi'),('2213','El XML no contiene el tag UBLVersionID'),('2214','CustomizationID - La versi'),('2215','El XML no contiene el tag CustomizationID'),('2216','CustomerAssignedAccountID - El dato ingresado no cumple con el estandar '),('2217','El XML no contiene el tag CustomerAssignedAccountID del emisor del documento '),('2218','AdditionalAccountID - El dato ingresado no cumple con el estandar '),('2219','El XML no contiene el tag AdditionalAccountID del emisor del documento '),('2220','El ID debe coincidir con el nombre del archivo '),('2221','El RUC debe coincidir con el RUC del nombre del archivo '),('2222','El contribuyente no est'),('2223','El archivo ya fue presentado anteriormente '),('2224','Numero de RUC SOL no coincide con RUC emisor'),('2225','Numero de RUC del emisor no existe'),('2226','El contribuyente no esta activo'),('2227','El contribuyente no cumple con tipo de empresa o tributos requeridos'),('2228','RegistrationName - El dato ingresado no cumple con el estandar '),('2229','El XML no contiene el tag RegistrationName del emisor del documento '),('2230','IssueDate - El dato ingresado no cumple con el patron YYYY-MM-DD'),('2231','El XML no contiene el tag IssueDate'),('2232','IssueDate- El dato ingresado no es valido'),('2233','ReferenceDate - El dato ingresado no cumple con el patron YYYY-MM-DD '),('2234','El XML no contiene el tag ReferenceDate'),('2235','ReferenceDate- El dato ingresado no es valido'),('2236','La fecha del IssueDate no debe ser mayor al Today '),('2237','La fecha del ReferenceDate no debe ser mayor al Today '),('2238','LineID - El dato ingresado no cumple con el estandar '),('2239','LineID - El dato ingresado debe ser correlativo mayor a cero '),('2240','El XML no contiene el tag LineID de SummaryDocumentsLine '),('2241','DocumentTypeCode - El valor del tipo de documento es invalido '),('2242','El XML no contiene el tag DocumentTypeCode '),('2243','El dato ingresado no cumple con el patron SERIE '),('2244','El XML no contiene el tag DocumentSerialID '),('2245','El dato ingresado en StartDocumentNumberID debe ser numerico '),('2246','El XML no contiene el tag StartDocumentNumberID '),('2247','El dato ingresado en sac:EndDocumentNumberID debe ser numerico '),('2248','El XML no contiene el tag sac:EndDocumentNumberID '),('2249','Los rangos deben ser mayores a cero '),('2250','En el rango de comprobantes, el EndDocumentNumberID debe ser mayor o igual al StartInvoiceNumberID '),('2251','El dato ingresado en TotalAmount debe ser numerico mayor o igual a cero '),('2252','El XML no contiene el tag TotalAmount'),('2253','El dato ingresado en TotalAmount debe ser numerico mayor a cero'),('2254','PaidAmount - El dato ingresado no cumple con el estandar '),('2255','El XML no contiene el tag PaidAmount '),('2256','InstructionID - El dato ingresado no cumple con el estandar '),('2257','El XML no contiene el tag InstructionID '),('2258','Debe indicar Referencia de Importes asociados a las boletas de venta'),('2259','Debe indicar 3 Referencias de Importes asociados a las boletas de venta '),('2260','PaidAmount - El dato ingresado debe ser mayor o igual a 0.00'),('2261','cbc:Amount - El dato ingresado no cumple con el estandar '),('2262','El XML no contiene el tag cbc:Amount'),('2263','ChargeIndicator - El dato ingresado no cumple con el estandar '),('2264','El XML no contiene el tag ChargeIndicator'),('2265','Debe indicar Informaci'),('2266','Debe indicar cargos mayores o iguales a cero'),('2267','TaxScheme ID - El dato ingresado no cumple con el estandar '),('2268','El codigo del tributo es invalido '),('2269','El XML no contiene el tag TaxScheme ID de Informaci'),('2270','TaxScheme Name - El dato ingresado no cumple con el estandar '),('2271','El XML no contiene el tag TaxScheme Name de impuesto '),('2272','TaxScheme TaxTypeCode - El dato ingresado no cumple con el estandar'),('2273','TaxAmount - El dato ingresado no cumple con el estandar '),('2274','El XML no contiene el tag TaxAmount'),('2275','Si el codigo de tributo es 2000, el nombre del tributo debe ser ISC '),('2276','Si el codigo de tributo es 1000, el nombre del tributo debe ser IGV '),('2277','No se ha consignado ninguna informacion del importe total de tributos '),('2278','Debe indicar Informaci'),('2279','Debe indicar Items de consolidado de documentos'),('2280','Existen problemas con la informacion del resumen de comprobantes'),('2281','Error en la validacion de los rangos de los comprobantes'),('2282','Existe documento ya informado anteriormente '),('2283','El dato ingresado no cumple con el formato RA-fecha-correlativo '),('2284','El XML no contiene el tag ID'),('2285','El ID debe coincidir con el nombre del archivo '),('2286','El RUC debe coincidir con el RUC del nombre del archivo '),('2287','AdditionalAccountID - El dato ingresado no cumple con el estandar '),('2288','El XML no contiene el tag AdditionalAccountID del emisor del documento '),('2289','CustomerAssignedAccountID - El dato ingresado no cumple con el est'),('2290','El XML no contiene el tag CustomerAssignedAccountID del emisor del documento'),('2291','El contribuyente no esta autorizado a emitir comprobantes electr'),('2292','Numero de RUC SOL no coincide con RUC emisor'),('2293','Numero de RUC del emisor no existe'),('2294','El contribuyente no esta activo'),('2295','El contribuyente no cumple con tipo de empresa o tributos requeridos'),('2296','RegistrationName - El dato ingresado no cumple con el estandar '),('2297','El XML no contiene el tag RegistrationName del emisor del documento '),('2298','IssueDate - El dato ingresado no cumple con el patron YYYY-MM-DD'),('2299','El XML no contiene el tag IssueDate '),('2300','IssueDate - El dato ingresado no es valido'),('2301','La fecha del IssueDate no debe ser mayor al Today '),('2302','ReferenceDate - El dato ingresado no cumple con el patron YYYY-MM-DD '),('2303','El XML no contiene el tag ReferenceDate'),('2304','ReferenceDate - El dato ingresado no es valido'),('2305','LineID - El dato ingresado no cumple con el estandar '),('2306','LineID - El dato ingresado debe ser correlativo mayor a cero '),('2307','El XML no contiene el tag LineID de VoidedDocumentsLine '),('2308','DocumentTypeCode - El valor del tipo de documento es invalido '),('2309','El XML no contiene el tag DocumentTypeCode '),('2310','El dato ingresado no cumple con el patron SERIE '),('2311','El XML no contiene el tag DocumentSerialID '),('2312','El dato ingresado en DocumentNumberID debe ser numerico y como maximo de 8 digitos '),('2313','El XML no contiene el tag DocumentNumberID '),('2314','El dato ingresado en VoidReasonDescription debe contener informaci'),('2315','El XML no contiene el tag VoidReasonDescription '),('2316','Debe indicar Items en VoidedDocumentsLine'),('2317','Error al procesar el resumen de anulados'),('2318','CustomizationID - La version del documento no es correcta'),('2319','El XML no contiene el tag CustomizationID'),('2320','UBLVersionID - La version del UBL  no es la correcta'),('2321','El XML no contiene el tag UBLVersionID'),('2322','Error en la validacion de los rangos'),('2323','Existe documento ya informado anteriormente en una comunicacion de baja '),('2324','El archivo de comunicacion de baja ya fue presentado anteriormente '),('2325','El certificado usado no es el comunicado a SUNAT '),('2326','El certificado usado se encuentra de baja '),('2327','El certificado usado no se encuentra vigente '),('2328','El certificado usado se encuentra revocado '),('2329','La fecha de emision se encuentra fuera del limite permitido '),('2330','La fecha de generaci'),('2331','N'),('2332','N'),('2333','N'),('2334','El documento electr'),('2335','El documento electr'),('2336','Ocurri'),('2337','La moneda debe ser la misma en todo el documento '),('2338','La moneda debe ser la misma en todo el documento '),('2339','El dato ingresado en PayableAmount no cumple con el formato establecido '),('2340','El valor ingresado en AdditionalMonetaryTotal/cbc:ID es incorrecto '),('2341','AdditionalMonetaryTotal/cbc:ID debe tener valor '),('2342','Fecha de emision de la factura no coincide con la informada en la comunicacion '),('2343','cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount - El dato ingresado no cumple con el estandar '),('2344','El XML no contiene el tag cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount'),('2345','La serie no corresponde al tipo de comprobante '),('2346','La fecha de generaci'),('2347','Los rangos informados en el archivo XML se encuentran duplicados o superpuestos'),('2348','Los documentos informados en el archivo XML se encuentran duplicados'),('2349','Debe consignar solo un elemento sac:AdditionalMonetaryTotal con cbc:ID igual a 1001 '),('2350','Debe consignar solo un elemento sac:AdditionalMonetaryTotal con cbc:ID igual a 1002 '),('2351','Debe consignar solo un elemento sac:AdditionalMonetaryTotal con cbc:ID igual a 1003 '),('2352','Debe consignar solo un elemento cac:TaxTotal a nivel global para IGV (cbc:ID igual a 1000) '),('2353','Debe consignar solo un elemento cac:TaxTotal a nivel global para ISC (cbc:ID igual a 2000) '),('2354','Debe consignar solo un elemento cac:TaxTotal a nivel global para Otros (cbc:ID igual a 9999) '),('2355','Debe consignar solo un elemento cac:TaxTotal a nivel de item para IGV (cbc:ID igual a 1000) '),('2356','Debe consignar solo un elemento cac:TaxTotal a nivel de item para ISC (cbc:ID igual a 2000) '),('2357','Debe consignar solo un elemento sac:BillingPayment a nivel de item con cbc:InstructionID igual a 01 '),('2358','Debe consignar solo un elemento sac:BillingPayment a nivel de item con cbc:InstructionID igual a 02 '),('2359','Debe consignar solo un elemento sac:BillingPayment a nivel de item con cbc:InstructionID igual a 03 '),('2360','Debe consignar solo un elemento sac:BillingPayment a nivel de item con cbc:InstructionID igual a 04'),('2361','Debe consignar solo un elemento cac:TaxTotal a nivel de item para Otros (cbc:ID igual a 9999) '),('2362','Debe consignar solo un tag cac:AccountingSupplierParty/cbc:AdditionalAccountID '),('2363','Debe consignar solo un tag cac:AccountingCustomerParty/cbc:AdditionalAccountID '),('2364','El comprobante contiene un tipo y n'),('2365','El comprobante contiene un tipo y n'),('2366','El codigo en el tag sac:AdditionalProperty/cbc:ID debe tener 4 posiciones'),('2367','El dato ingresado en PriceAmount del Precio de venta unitario por item no cumple con el formato establecido '),('2368','El dato ingresado en TaxSubtotal/cbc:TaxAmount del item no cumple con el formato establecido '),('2369','El dato ingresado en PriceAmount del Valor de venta unitario por item no cumple con el formato establecido '),('2370','El dato ingresado en LineExtensionAmount del item no cumple con el formato establecido '),('2371','El XML no contiene el tag cbc:TaxExemptionReasonCode de Afectacion al IGV '),('2372','El tag en el item cac:TaxTotal/cbc:TaxAmount debe tener el mismo valor que cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount '),('2373','Si existe monto de ISC en el ITEM debe especificar el sistema de calculo '),('2374','La factura a dar de baja tiene una fecha de recepcion fuera del plazo permitido '),('2375','Fecha de emision de la boleta no coincide con la fecha de emision consignada en la comunicacion '),('2376','La boleta de venta a dar de baja fue informada en un resumen con fecha de recepcion fuera del plazo permitido '),('2377','El Name o TaxTypeCode debe corresponder con el Id para el IGV '),('2378','El Name o TaxTypeCode debe corresponder con el Id para el ISC '),('2379','La numeracion de boleta de venta a dar de baja fue generada en una fecha fuera del plazo permitido '),('2380','El documento tiene observaciones'),('2381','Comprobante no cumple con el Grupo 1: No todos los items corresponden a operaciones gravadas a IGV '),('2382','Comprobante no cumple con el Grupo 2: No todos los items corresponden a operaciones inafectas o exoneradas al IGV '),('2383','Comprobante no cumple con el Grupo 3: Falta leyenda con codigo 1002 '),('2384','Comprobante no cumple con el Grupo 3: Existe item con operaci'),('2385','Comprobante no cumple con el Grupo 4: Debe exitir Total descuentos mayor a cero '),('2386','Comprobante no cumple con el Grupo 5: Todos los items deben tener operaciones afectas a ISC '),('2387','Comprobante no cumple con el Grupo 6: El monto de percepcion no existe o es cero '),('2388','Comprobante no cumple con el Grupo 6: Todos los items deben tener c'),('2389','Comprobante no cumple con el Grupo 7: El codigo de moneda no es diferente a PEN '),('2390','Comprobante no cumple con el Grupo 8: No todos los items corresponden a operaciones gravadas a IGV '),('2391','Comprobante no cumple con el Grupo 9: No todos los items corresponden a operaciones inafectas o exoneradas al IGV '),('2392','Comprobante no cumple con el Grupo 10: Falta leyenda con codigo 1002 '),('2393','Comprobante no cumple con el Grupo 10: Existe item con operaci'),('2394','Comprobante no cumple con el Grupo 11: Debe existir Total descuentos mayor a cero '),('2395','Comprobante no cumple con el Grupo 12: El codigo de moneda no es diferente a PEN '),('2396','Si el monto total es mayor a S/. 700.00 debe consignar tipo y numero de documento del adquiriente '),('2397','El tipo de documento del adquiriente no puede ser Numero de RUC '),('2398','El documento a dar de baja se encuentra rechazado '),('2399','El tipo de documento modificado por la Nota de credito debe ser boleta electronica'),('2400','El tipo de documento modificado por la Nota de debito debe ser boleta electronica '),('2401','No se puede leer (parsear) el archivo XML '),('2402','El caso de prueba no existe'),('2403','La numeracion o nombre del documento ya ha sido enviado anteriormente'),('2404','Documento afectado por la nota electronica no se encuentra autorizado '),('2405','Contribuyente no se encuentra autorizado como emisor de boletas electronicas '),('2406','Existe mas de un tag sac:AdditionalMonetaryTotal con el mismo ID '),('2407','Existe mas de un tag sac:AdditionalProperty con el mismo ID '),('2408','El dato ingresado en PriceAmount del Valor referencial unitario por item no cumple con el formato establecido '),('2409','Existe mas de un tag cac:AlternativeConditionPrice con el mismo cbc:PriceTypeCode '),('2410','Se ha consignado un valor invalido en el campo cbc:PriceTypeCode '),('2411','Ha consignado mas de un elemento cac:AllowanceCharge con el mismo campo cbc:ChargeIndicator '),('2412','Se ha consignado mas de un documento afectado por la nota (tag cac:BillingReference) '),('2413','Se ha consignado mas de un motivo o sustento de la nota (tag cac:DiscrepancyResponse/cbc:Description) '),('2414','No se ha consignado en la nota el tag cac:DiscrepancyResponse '),('2415','Se ha consignado en la nota mas de un tag cac:DiscrepancyResponse '),('2416','Si existe leyenda Transferida Gratuita debe consignar Total Valor de Venta de Operaciones Gratuitas'),('2417','Debe consignar Valor Referencial unitario por '),('2418','Si consigna Valor Referencial unitario por '),('2419','El dato ingresado en AllowanceTotalAmount no cumple con el formato establecido'),('2420','Ya transcurrieron mas de 25 dias calendarios para concluir con su proceso de homologacion'),('4000','El documento ya fue presentado anteriormente.'),('4001','El numero de RUC del receptor no existe. '),('4002','Para el TaxTypeCode, esta usando un valor que no existe en el catalogo. '),('4003','El comprobante fue registrado previamente como rechazado.'),('4004','El DocumentTypeCode de las guias debe existir y tener 2 posiciones '),('4005','El DocumentTypeCode de las guias debe ser 09 o 31 '),('4006','El ID de las guias debe tener informacion de la SERIE-NUMERO de guia. '),('4007','El XML no contiene el ID de las guias.'),('4008','El DocumentTypeCode de Otros documentos relacionados no cumple con el estandar. '),('4009','El DocumentTypeCode de Otros documentos relacionados tiene valores incorrectos. '),('4010','El ID de los documentos relacionados no cumplen con el estandar. '),('4011','El XML no contiene el tag ID de documentos relacionados.'),('4012','El ubigeo indicado en el comprobante no es el mismo que esta registrado para el contribuyente. '),('4013','El RUC del receptor no esta activo '),('4014','El RUC del receptor no esta habido '),('4015','Si el tipo de documento del receptor no es RUC, debe tener operaciones de exportacion '),('4016','El total valor venta neta de oper. gravadas IGV debe ser mayor a 0.00 o debe existir oper. gravadas onerosas '),('4017','El total valor venta neta de oper. inafectas IGV debe ser mayor a 0.00 o debe existir oper. inafectas onerosas o de export. '),('4018','El total valor venta neta de oper. exoneradas IGV debe ser mayor a 0.00 o debe existir oper. exoneradas '),('4019','El calculo del IGV no es correcto '),('4020','El ISC no esta informado correctamente '),('4021','Si se utiliza la leyenda con codigo 2000, el importe de percepcion debe ser mayor a 0.00 '),('4022','Si se utiliza la leyenda con c'),('4023','Si se utiliza la leyenda con c'),('4024','Si se utiliza la leyenda con c'),('4025','Si usa la leyenda de Transferencia o Servivicio gratuito, todos los items deben ser no onerosos '),('4026','No se puede indicar Guia de remision de remitente y Guia de remision de transportista en el mismo documento '),('4027','El importe total no coincide con la sumatoria de los valores de venta mas los tributos mas los cargos '),('4028','El monto total de la nota de credito debe ser menor o igual al monto de la factura '),('4029','El ubigeo indicado en el comprobante no es el mismo que esta registrado para el contribuyente '),('4030','El ubigeo indicado en el comprobante no es el mismo que esta registrado para el contribuyente '),('4031','Debe indicar el nombre comercial '),('4032','Si el c'),('4033','La fecha de generaci'),('4034','El comprobante fue registrado previamente como baja'),('4035','El comprobante fue registrado previamente como rechazado'),('4036','La fecha de emisi'),('4037','El calculo del Total de IGV del Item no es correcto '),('4038','El resumen contiene menos series por tipo de documento que el env'),('4039','No ha consignado informaci'),('4040','Si el importe de percepcion es mayor a 0.00, debe utilizar una leyenda con codigo 2000 '),('4041','El codigo de pais debe ser PE ');
/*!40000 ALTER TABLE `tbl_errores_sunat_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_doc_inter`
--

DROP TABLE IF EXISTS `tbl_estado_doc_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado_doc_inter` (
  `COD_ESTAD_SUNAT` char(2) NOT NULL,
  `TXT_DESCR_ESTAD_DOC` varchar(200) NOT NULL,
  PRIMARY KEY (`COD_ESTAD_SUNAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_doc_inter`
--

LOCK TABLES `tbl_estado_doc_inter` WRITE;
/*!40000 ALTER TABLE `tbl_estado_doc_inter` DISABLE KEYS */;
INSERT INTO `tbl_estado_doc_inter` VALUES ('01','DECLARADO'),('02','POR ENVIAR A LA SUNAT'),('03','POR ENVIAR AL PORTAL'),('04','ENVIADO A LA SUNAT'),('05','POR ENVIAR RESUMEN');
/*!40000 ALTER TABLE `tbl_estado_doc_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estd_sunat_inter`
--

DROP TABLE IF EXISTS `tbl_estd_sunat_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estd_sunat_inter` (
  `COD_ESTD_SUNAT` varchar(3) NOT NULL,
  `TXT_DESCR` varchar(20) NOT NULL,
  PRIMARY KEY (`COD_ESTD_SUNAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estd_sunat_inter`
--

LOCK TABLES `tbl_estd_sunat_inter` WRITE;
/*!40000 ALTER TABLE `tbl_estd_sunat_inter` DISABLE KEYS */;
INSERT INTO `tbl_estd_sunat_inter` VALUES ('101','EN PROCESO'),('102','ACEPTADO'),('103','ACEPTADO CON OBS'),('104','RECHAZADO'),('105','ANULADO'),('106','D.E. POR APROBAR'),('107','D.E. DESAPROBADO');
/*!40000 ALTER TABLE `tbl_estd_sunat_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_file_extension`
--

DROP TABLE IF EXISTS `tbl_file_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_file_extension` (
  `ID` int NOT NULL,
  `DESCRIP_EXT` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_file_extension`
--

LOCK TABLES `tbl_file_extension` WRITE;
/*!40000 ALTER TABLE `tbl_file_extension` DISABLE KEYS */;
INSERT INTO `tbl_file_extension` VALUES (1,'.CAB'),(2,'.NOT'),(3,'.CBA');
/*!40000 ALTER TABLE `tbl_file_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_parametros_inter`
--

DROP TABLE IF EXISTS `tbl_parametros_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_parametros_inter` (
  `COD_PARAMETRO` char(3) NOT NULL,
  `TXT_NOMBRE` varchar(100) DEFAULT NULL,
  `TXT_DESCRP_PARAMETRO` varchar(100) DEFAULT NULL,
  `TXT_VALOR_PARAMETRO` varchar(100) DEFAULT NULL,
  `TXT_VALOR_PARAMETRO2` varchar(50) DEFAULT '',
  PRIMARY KEY (`COD_PARAMETRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_parametros_inter`
--

LOCK TABLES `tbl_parametros_inter` WRITE;
/*!40000 ALTER TABLE `tbl_parametros_inter` DISABLE KEYS */;
INSERT INTO `tbl_parametros_inter` VALUES ('001','WsUrlServiceBill','Ruta de envio a SUNAT','https://e-beta.sunat.gob.pe/ol-ti-itcpfegem-beta/billService',''),('002','WsMetodoBill','Servicio SUNAT - Envio - M','sendBill',''),('003','WsMetodoSummary','Servicio SUNAT - EnvioResumen - M','sendSummary',''),('004','WsUserBill','Servicio SUNAT - Envio - Usuario','20565282965MODDATOS',''),('005','WsPassBill','Servicio SUNAT - Envio - Contrasenia','MODDATOS',''),('006','FlagDiasEmisionResumen','Dias Resumen de boletas','0',''),('007','vCorreo','Correo electronico - Envio','luis.velasquez@itc.com.pe',''),('008','vContrasenaCorreo','Contrasena - Envio','fggggg',''),('009','vServerSMTP','Servidor SMTP - Envio','smtp.gmail.com',''),('010','vPuerto','Puerto - Envio - Usuario','587',''),('011','vRutaTemporal','Ruta Temportal','C:\\Archivos\\Temp\\',''),('012','vRutaTemplatePlantillas','Ruta Plantillas','C:\\Archivos\\Plantillas\\',''),('013','vRutaTemplateFirmado','Ruta Archivos Firmados','C:\\Archivos\\XmlGeneradoFirmado\\',''),('014','vPasswordCertificado','Contrase','3a2n0a1i3c1u0L26a1l1l0e6a1f0f2aR',''),('015','vNombreCertficado','Nombre de Archivo Certificado','Produccion_MPS20170327516880 (1).pfx',''),('016','FlagDiasEnvioBaja','Dias Envio Baja','0',''),('017','FlagDiasFacturaBoleta','Dias Envio Facturas y Boletas','0',''),('018','vRutaAplicacionPdf','Ruta Aplicacion Pdf','C:\\Archivos\\GeneradorPDF\\bin\\wkhtmltopdf.exe',''),('019','vLogo','Logo Cliente','.png',''),('020','FlagNumIntentos','Nro Intentos - Envio','3',''),('021','FlagEmisionManual','Habilitacion Manual','0',''),('022','vFlagHomologacion','FlagHomologacion','0',''),('023','vUsuarioWSITC','Usuario','WsConexPro@','Welc0me2017'),('024','vSSL','Seguridad Correo','0',''),('025','vEmail_Contribuyente','Correo Contribuyente','Diego.Poma@itc.com.pe',''),('026','vNombre_Factura','Nombre Factura','InvoiceFactura.vm',''),('027','vNombre_Boleta','Nombre Boleta','BoletaTemplate.vm',''),('028','vNombre_NotasDebito','Nombre NotaDeb','NotaDebitoTemplate.vm',''),('029','vNombre_NotasCredito','Nombre NotaCred','CreditNoteTemplate.vm',''),('030','vNombre_ComunicacionBaja','Nombre ComunBaja','IvoiceComunicacionBaja.vm',''),('031','vNombre_ResumendeBoletas','Nombre ResumBol','ResumendeBoletas.vm',''),('032','vNombre_TemplatePdf','Nombre Template pdf','Template_PDF.html',''),('033','vRutaFiles','Ruta Archivos Cpes','D:\\Cpes_Electronicos\\',''),('034','vRutaFilesSuccess','Ruta Archivos Completados','D:\\Cpes_Procesados\\',''),('035','vRutaFilesError','Ruta Archivos Fallidos','D:\\Cpes_Excepciones\\',''),('036','vRutaFilesObserv','Ruta Archivos Observaciones','D:\\Cpes_Obs\\','');
/*!40000 ALTER TABLE `tbl_parametros_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_retenciones`
--

DROP TABLE IF EXISTS `tbl_retenciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_retenciones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RETENCION_CODIGO` varchar(6) DEFAULT NULL,
  `RETENCION_FACTOR` varchar(10) DEFAULT NULL,
  `RETENCION_BASE` decimal(12,2) DEFAULT NULL,
  `RETENCION_MONTO` decimal(12,2) DEFAULT NULL,
  `NUM_CPE_INTERMEDIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_retenciones`
--

LOCK TABLES `tbl_retenciones` WRITE;
/*!40000 ALTER TABLE `tbl_retenciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_retenciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_moneda_inter`
--

DROP TABLE IF EXISTS `tbl_tipo_moneda_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_moneda_inter` (
  `COD_MND` varchar(3) NOT NULL,
  `TXT_DESCR` varchar(40) NOT NULL,
  PRIMARY KEY (`COD_MND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_moneda_inter`
--

LOCK TABLES `tbl_tipo_moneda_inter` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_moneda_inter` DISABLE KEYS */;
INSERT INTO `tbl_tipo_moneda_inter` VALUES ('PEN','Nuevo Sol'),('USD','US Dollar');
/*!40000 ALTER TABLE `tbl_tipo_moneda_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario_inter`
--

DROP TABLE IF EXISTS `tbl_usuario_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario_inter` (
  `ID_USUARIO` bigint NOT NULL AUTO_INCREMENT,
  `COD_USUARIO` varchar(30) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `APELLIDO_PATERNO` varchar(100) NOT NULL,
  `APELLIDO_MATERNO` varchar(100) NOT NULL,
  `NOMBRES` varchar(100) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `FECHA_CREACION` datetime NOT NULL,
  `Flag_Estado` char(1) NOT NULL,
  `NUM_RUC_EMIS` varchar(11) DEFAULT NULL,
  `FECHA_ACTUALIZACION` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario_inter`
--

LOCK TABLES `tbl_usuario_inter` WRITE;
/*!40000 ALTER TABLE `tbl_usuario_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_intermedia'
--

--
-- Dumping routines for database 'bd_intermedia'
--
/*!50003 DROP PROCEDURE IF EXISTS `COPIAR_DATOS_DETALLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `COPIAR_DATOS_DETALLE`(
in pFEC_EMIS datetime)
BEGIN

	declare done int default 0;
    declare num_cpe_inter int;
    declare num_cpe_det int;
    
    declare pnum_lin_item int;
    declare pcod_unid_item varchar(3);
    declare pcant_unid_item decimal(12,2);
    declare pval_vta_item decimal(12,2);
    declare pcod_tip_afect_igv_item varchar(3);
    declare prc_vta_unit_item decimal(12,2);
    declare pmnt_dscto_item decimal(12,2);
    declare pmnt_igv_item decimal(12,2);
    declare ptxt_descr_item varchar(120);
    declare pcod_item varchar(10);
    declare pval_unit_item decimal(12,2);
    declare pcod_tip_sist_isc varchar(2);
    declare pmnt_isc_item decimal(12,2);
    declare pcod_cliente_emis char(2);

    
    /*declare cur_det cursor for select cpe.NUM_CPE_INTERMEDIA from bd_intermedia_desarrollo.tbl_cpe_cabecera_inter as cpe
	left join bd_intermedia_desarrollo.tbl_cpe_det_cabecera_inter as detcpe
	on cpe.NUM_CPE_INTERMEDIA = detcpe.NUM_CPE_INTERMEDIA
	where cpe.COD_IDEN_CB <> 'C' AND cpe.COD_CLIENTE_EMIS = '1' and cpe.NUM_CPE_INTERMEDIA not in(select NUM_CPE_INTERMEDIA from bd_intermedia_desarrollo.tbl_cpe_det_cabecera_inter where COD_CLIENTE_EMIS = '1');*/
    
    declare cur_det cursor for select cpe.NUM_CPE_INTERMEDIA, detcpe.NUM_LIN_ITEM, detcpe.COD_UNID_ITEM, detcpe.CANT_UNID_ITEM, detcpe.VAL_VTA_ITEM, 
	detcpe.COD_TIP_AFECT_IGV_ITEM, detcpe.PRC_VTA_UNIT_ITEM, detcpe.MNT_DSCTO_ITEM, detcpe.MNT_IGV_ITEM, detcpe.TXT_DESCR_ITEM,
	detcpe.COD_ITEM, detcpe.VAL_UNIT_ITEM, detcpe.COD_TIP_SIST_ISC, detcpe.MNT_ISC_ITEM, detcpe.NUM_CPE_INTERMEDIA, detcpe.COD_CLIENTE_EMIS
	from bd_intermedia_prod.tbl_cpe_cabecera_inter as cpe
	inner join bd_intermedia_prod.tbl_cpe_det_cabecera_inter as detcpe
	on cpe.NUM_CPE_INTERMEDIA = detcpe.NUM_CPE_INTERMEDIA
	where cpe.COD_IDEN_CB <> 'C' AND cpe.COD_CLIENTE_EMIS = '1' and date(cpe.FEC_EMIS) = pFEC_EMIS;
    
    
    DECLARE continue handler for sqlstate '02000' set done = 1; 
    
    open cur_det;
    
    get_detalle:loop
		fetch cur_det into num_cpe_inter, pnum_lin_item, pcod_unid_item, pcant_unid_item, pval_vta_item, pcod_tip_afect_igv_item, prc_vta_unit_item,
        pmnt_dscto_item, pmnt_igv_item, ptxt_descr_item, pcod_item, pval_unit_item, pcod_tip_sist_isc, pmnt_isc_item, num_cpe_det, pcod_cliente_emis;
		
        if done = 1 then
		   leave get_detalle;
        end if;
        
        
			CALL `bd_intermedia_desarrollo`.`SEE_ITC_INSERTAR_DET_FACTURA_BOLETA`
            (pnum_lin_item, pcod_unid_item, pcant_unid_item, 
            pval_vta_item, pcod_tip_afect_igv_item, 
            prc_vta_unit_item, pmnt_dscto_item, 
            pmnt_igv_item, ptxt_descr_item, pcod_item, 
            pval_unit_item, pcod_tip_sist_isc, pmnt_isc_item, 
            num_cpe_inter, pcod_cliente_emis, @num_det_cabecera, @resultado, @mensaje);
            
            CALL `bd_intermedia_desarrollo`.`sp_actualizarFlag_EnvioAlaIntermedia`(num_cpe_inter);

			
            -- INSERT INTO bd_intermedia_desarrollo.tbl_cpe_det_cabecera_inter
			-- select * from bd_intermedia_desarrollo2.tbl_cpe_det_cabecera_inter where NUM_CPE_INTERMEDIA = num_cpe_inter;
				
        
    
    end loop get_detalle;
    
    close cur_det;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COPIAR_DATOS_FAC_BOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `COPIAR_DATOS_FAC_BOL`(
in pFEC_EMIS datetime)
BEGIN

	declare done int default 0;

	declare pcod_tip_cpe char(2);
    declare pcod_mnd char(3);
    declare pcod_estado_doc char(2);
    declare pcod_estado_sunat char(103);
    declare pcod_error_sunat varchar(10);
    declare pcod_cliente_emis char(1);
    
    declare pnum_ruc_emis varchar(11);
    declare pnom_rzn_soc_emis varchar(100);
    declare pcod_tip_nif_emis varchar(1);
     
    declare pcod_ubi_emis varchar(10);
    declare ptxt_dom_fisc_emis varchar(100);
    declare ptxt_urb_emis varchar(30);
    declare ptxt_prov_emis varchar(30);
    declare ptxt_dpto_emis varchar(30);
    declare ptxt_distr_emis varchar(30);
    
    declare ptxt_serie char(4);
    declare ptxt_correlativo varchar(12);
    declare pcod_tip_escenario char(2);
    declare ptxt_placa varchar(10);
    declare pnum_iden_recp char(20);
    declare pcod_tip_nif_recp char(1);
    declare pnom_rzn_soc_recp varchar(120);
    declare ptxt_dmcl_fisc_recep varchar(120);
    declare pmnt_tot_gravadas decimal(12,2);
    declare pmnt_tot_inafectas decimal (12,2);
    declare pmnt_tot_exoneradas decimal (12,2);
    declare pmnt_tot_gratuitas decimal (12,2);
    declare pmnt_tot_desc_global decimal (12,2);
    declare pmnt_tot_igv decimal (12,2);
    declare pmnt_tot_igv_isc decimal (12,2);
    declare pmnt_tot_base_imponible decimal (12,2);
    declare pmnt_tot_percepcion decimal (12,2);
    declare pmnt_tot_a_percibir decimal (12,2);
    declare pmnt_tot decimal (12,2);
    declare ptxt_descr_motivo_baja varchar(120);
    declare pcod_tip_nc_nd_ref char(2);
    declare ptxt_correlativo_cpe_ref char(12);
    declare ptxt_serie_ref char(4);
    declare pcod_cpe_ref char(2);
    declare ptxt_sustento varchar(120);
    declare pticket_id_recep_sunat varchar(50);
    declare pcod_rpta_envio_sunat varchar(10);
    declare pfecha_envio_sunat datetime;
    declare pfecha_recp_sunat datetime;
    declare pfec_gene_doc_sunat datetime;
    declare pfec_emis datetime;
    declare pfec_recp_sunat datetime;
    declare pflag_num_int char(1);
    declare pcod_iden_cb char(2);
    declare pfec_gener_baja datetime;
    declare pcod_iden_rd varchar(14);
    declare ptxt_correo_adquiriente varchar(150);
    declare pflag_correo char(1);
    declare pcod_iden_com_baja char(2);
    declare pfecha_recp_doc2 datetime;
    declare ptxt_resp char(2);
    declare pflag_envio_boletas char(1);
    
    -- declare num_cpe int;
    -- declare mensaje varchar(100);
    -- declare resultado int;
    
    
    declare cur_cabecera cursor for select cpe.COD_TIP_CPE, cpe.COD_MND, cpe.COD_ESTADO_DOC, cpe.COD_ESTADO_SUNAT, cpe.COD_CLIENTE_EMIS, cpe.NUM_RUC_EMIS,
	cpe.NOM_RZN_SOC_EMIS, cpe.COD_TIP_NIF_EMIS, cpe.COD_UBI_EMIS , cpe.TXT_DMCL_FISC_EMIS , cpe.TXT_URB_EMIS , cpe.TXT_PROV_EMIS , cpe.TXT_DPTO_EMIS , cpe.TXT_DISTR_EMIS , cpe.TXT_SERIE, 
    cpe.TXT_CORRELATIVO, cpe.COD_TIP_ESCENARIO, cpe.TXT_PLACA, cpe.NUM_IDEN_RECP, cpe.COD_TIP_NIF_RECP, cpe.NOM_RZN_SOC_RECP, cpe.TXT_DMCL_FISC_RECEP, cpe.MNT_TOT_GRAVADAS, cpe.MNT_TOT_INAFECTAS, cpe.MNT_TOT_EXONERADAS,
	cpe.MNT_TOT_GRATUITAS, cpe.MNT_TOT_DESC_GLOBAL, cpe.MNT_TOT_IGV, cpe.MNT_TOT_IGV_ISC, cpe.MNT_TOT_BASE_IMPONIBLE, cpe.MNT_TOT_PERCEPCION, cpe.MNT_TOT_A_PERCIBIR,
	cpe.MNT_TOT, cpe.TXT_DESCR_MOTIVO_BAJA, cpe.COD_TIP_NC_ND_REF, cpe.TXT_CORRELATIVO_CPE_REF, cpe.TXT_SERIE_REF, cpe.COD_CPE_REF, cpe.TXT_SUSTENTO,
	cpe.TICKET_ID_RECEP_SUNAT, cpe.COD_RPTA_ENVIO_SUNAT, cpe.FECHA_ENVIO_SUNAT, cpe.FECHA_RECP_SUNAT, cpe.FEC_GENE_DOC_SUNAT, cpe.FEC_EMIS, cpe.FEC_RECP_DOC1,
	cpe.FLAG_NUM_INT, cpe.COD_IDEN_CB, cpe.FEC_GENER_BAJA, cpe.COD_IDEN_RD, cpe.TXT_CORREO_ADQUIRIENTE, cpe.FLAG_CORREO, cpe.COD_IDEN_COM_BAJA, cpe.FEC_RECP_DOC2, cpe.TXT_RESP,
	cpe.FLAG_ENVIO_BOLETAS 
	from bd_intermedia_prod.tbl_cpe_cabecera_inter as cpe where date(cpe.FEC_EMIS) = '2017-07-29';
    
    DECLARE continue handler for not found set done = 1; 
    
    open cur_cabecera;
    -- set done = 0;
    get_cabecera:loop
		fetch cur_cabecera into pcod_tip_cpe, pcod_mnd, pcod_estado_doc, pcod_estado_sunat, pcod_cliente_emis, pnum_ruc_emis, pnom_rzn_soc_emis,
        pcod_tip_nif_emis, pcod_ubi_emis, ptxt_dom_fisc_emis, ptxt_urb_emis, ptxt_prov_emis, ptxt_dpto_emis, ptxt_distr_emis, ptxt_serie, ptxt_correlativo, pcod_tip_escenario, 
        ptxt_placa, pnum_iden_recp, pcod_tip_nif_recp, pnom_rzn_soc_recp, ptxt_dmcl_fisc_recep, pmnt_tot_gravadas, pmnt_tot_inafectas, pmnt_tot_exoneradas, 
        pmnt_tot_gratuitas, pmnt_tot_desc_global, pmnt_tot_igv, pmnt_tot_igv_isc, pmnt_tot_base_imponible, pmnt_tot_percepcion, pmnt_tot_a_percibir, 
        pmnt_tot, ptxt_descr_motivo_baja, pcod_tip_nc_nd_ref, ptxt_correlativo_cpe_ref, ptxt_serie_ref, pcod_cpe_ref, ptxt_sustento, pticket_id_recep_sunat, 
        pcod_rpta_envio_sunat, pfecha_envio_sunat, pfecha_recp_sunat, pfec_gene_doc_sunat, pfec_emis, pfec_recp_sunat, pflag_num_int, pcod_iden_cb, pfec_gener_baja, 
        pcod_iden_rd, ptxt_correo_adquiriente, pflag_correo, pcod_iden_com_baja, pfecha_recp_doc2, ptxt_resp, pflag_envio_boletas;
        
        if done = 1 then
			leave get_cabecera;
		end if;
        
        /*set @num_cpe := 0;
        set @mensaje := '';
        set @resultado := 0;*/
        
        /*select pcod_tip_cpe, pcod_mnd, pcod_estado_doc, pcod_estado_sunat, pcod_cliente_emis,
        ptxt_serie, ptxt_correlativo, pcod_tip_escenario, ptxt_placa, pnum_iden_recp, pcod_tip_nif_recp, pnom_rzn_soc_recp, 
        ptxt_dmcl_fisc_recep, pmnt_tot_gravadas, pmnt_tot_inafectas, pmnt_tot_exoneradas, pmnt_tot_gratuitas, pmnt_tot_desc_global, pmnt_tot_igv,
        pmnt_tot_igv_isc, pmnt_tot_base_imponible, pmnt_tot_percepcion, pmnt_tot_a_percibir, pmnt_tot, ptxt_descr_motivo_baja, pcod_tip_nc_nd_ref,
        ptxt_correlativo_cpe_ref, ptxt_serie_ref, pcod_cpe_ref, ptxt_sustento, pticket_id_recep_sunat, pcod_rpta_envio_sunat, pfecha_envio_sunat,
        pfecha_recp_sunat, pfec_gene_doc_sunat, pfec_emis, pfec_recp_sunat, pflag_num_int, pcod_iden_cb, pfec_gener_baja, pcod_iden_rd, ptxt_correo_adquiriente, 
        pflag_correo, pcod_iden_com_baja, pfecha_recp_doc2, ptxt_resp, pflag_envio_boletas;*/
         if(pcod_iden_cb = '' and pcod_tip_cpe in('01','03')) then
			
				CALL `bd_intermedia_desarrollo`.`SEE_ITC_INSERTAR_FACTURA_BOLETA`
					(pfec_emis, ptxt_serie, ptxt_correlativo, 
					pcod_tip_cpe, pcod_mnd, pcod_tip_escenario, 
					ptxt_placa, pcod_cliente_emis, pnum_ruc_emis, pnom_rzn_soc_emis,
					pcod_tip_nif_emis, pcod_ubi_emis, ptxt_dom_fisc_emis, ptxt_urb_emis, 
                    ptxt_prov_emis, ptxt_dpto_emis, ptxt_distr_emis, pnum_iden_recp, 
					pcod_tip_nif_recp, pnom_rzn_soc_recp, 
					ptxt_dmcl_fisc_recep, ptxt_correo_adquiriente, 
					pmnt_tot_gravadas, pmnt_tot_inafectas, 
					pmnt_tot_exoneradas, pmnt_tot_gratuitas, 
					pmnt_tot_desc_global, pmnt_tot_igv, 
					pmnt_tot_igv_isc, pmnt_tot_base_imponible, 
					pmnt_tot_percepcion, pmnt_tot_a_percibir, 
					pmnt_tot, @num_cpe, @mensaje, 
					@resultado);
                    
				-- CALL `bd_intermedia_desarrollo`.`sp_actualizarFlag_EnvioAlaIntermedia`(@num_cpe);   
		  
          elseif(pcod_iden_cb = '' and pcod_tip_cpe in('07','08')) then
          
				CALL `bd_intermedia_desarrollo`.`SEE_ITC_INSERTAR_NOTA_CREDITO_DEBITO`
					(pfec_emis, ptxt_serie, ptxt_correlativo,  pcod_tip_escenario, 
					pcod_tip_cpe, pcod_mnd, ptxt_placa, pcod_cliente_emis, pnum_ruc_emis, pnom_rzn_soc_emis,
					pcod_tip_nif_emis, pcod_ubi_emis, 
					ptxt_dom_fisc_emis, ptxt_urb_emis, ptxt_prov_emis, 
                    ptxt_dpto_emis, ptxt_distr_emis, pnum_iden_recp, 
					pcod_tip_nif_recp, pnom_rzn_soc_recp, 
					ptxt_dmcl_fisc_recep, ptxt_correo_adquiriente, pmnt_tot_gravadas, pmnt_tot_inafectas, 
					pmnt_tot_exoneradas, pmnt_tot_gratuitas, 
					pmnt_tot_desc_global, pmnt_tot_igv, 
					pmnt_tot_igv_isc, pmnt_tot_base_imponible, 
					pmnt_tot_percepcion, pmnt_tot_a_percibir, 
					pmnt_tot, pcod_tip_nc_nd_ref, ptxt_serie_ref, ptxt_correlativo_cpe_ref, 
					pcod_cpe_ref, ptxt_sustento, @num_cpe, @resultado, @mensaje);
                    
                -- CALL `bd_intermedia_desarrollo`.`sp_actualizarFlag_EnvioAlaIntermedia`(@num_cpe); 
                    
		  else
				CALL `bd_intermedia_desarrollo`.`SEE_ITC_INSERTAR_COMUNICACION_BAJA`
					(pfec_emis, pfec_gener_baja, ptxt_serie, ptxt_correlativo, 
					pcod_tip_cpe, pcod_tip_escenario, pcod_cliente_emis, pcod_iden_cb, 
                    ptxt_descr_motivo_baja, @num_cpe, @resultado, @mensaje);
                    
				-- CALL `bd_intermedia_desarrollo`.`sp_actualizarFlag_EnvioAlaIntermedia`(@num_cpe);
                
		  end if;
        
	end loop get_cabecera;
     
    
    /*repeat
		fetch cur_cabecera into pcod_tip_cpe, pcod_mnd, pcod_estado_doc, pcod_estado_sunat, pcod_cliente_emis,
        ptxt_serie, ptxt_correlativo, pcod_tip_escenario, ptxt_placa, pnum_iden_recp, pcod_tip_nif_recp, pnom_rzn_soc_recp, 
        ptxt_dmcl_fisc_recep, pmnt_tot_gravadas, pmnt_tot_inafectas, pmnt_tot_exoneradas, pmnt_tot_gratuitas, pmnt_tot_desc_global, pmnt_tot_igv,
        pmnt_tot_igv_isc, pmnt_tot_base_imponible, pmnt_tot_percepcion, pmnt_tot_a_percibir, pmnt_tot, ptxt_descr_motivo_baja, pcod_tip_nc_nd_ref,
        ptxt_correlativo_cpe_ref, ptxt_serie_ref, pcod_cpe_ref, ptxt_sustento, pticket_id_recep_sunat, pcod_rpta_envio_sunat, pfecha_envio_sunat,
        pfecha_recp_sunat, pfec_gene_doc_sunat, pfec_emis, pfec_recp_sunat, pflag_num_int, pcod_iden_cb, pfec_gener_baja, pcod_iden_rd, ptxt_correo_adquiriente, 
        pflag_correo, pcod_iden_com_baja, pfecha_recp_doc2, ptxt_resp, pflag_envio_boletas;
        
		if not done then
			
            CALL `bd_intermedia_desarrollo`.`SEE_ITC_INSERTAR_FACTURA_BOLETA`
            (pfec_emis, ptxt_serie, ptxt_correlativo, 
            pcod_tip_cpe, pcod_mnd, pcod_tip_escenario, 
            ptxt_placa, pcod_cliente_emis, pnum_iden_recp, 
            pcod_tip_nif_recp, pnom_rzn_soc_recp, 
            ptxt_dmcl_fisc_recep, ptxt_correo_adquiriente, 
            pmnt_tot_gravadas, pmnt_tot_inafectas, 
            pmnt_tot_exoneradas, pmnt_tot_gratuitas, 
            pmnt_tot_desc_global, pmnt_tot_igv, 
            pmnt_tot_igv_isc, pmnt_tot_base_imponible, 
            pmnt_tot_percepcion, pmnt_tot_a_percibir, 
            pmnt_tot, num_cpe, mensaje, 
            resultado);
 
            
            -- INSERT INTO bd_intermedia_desarrollo.tbl_cpe_det_cabecera_inter
			-- select * from bd_intermedia_desarrollo2.tbl_cpe_det_cabecera_inter where NUM_CPE_INTERMEDIA = num_cpe_inter;
				
        end if;
    
    until done end repeat;*/
    
    close cur_cabecera;
	
    -- INSERT INTO bd_intermedia_desarrollo.tbl_cpe_cabecera_inter
    -- select * from bd_intermedia_desarrollo2.tbl_cpe_cabecera_inter where date(FEC_EMIS) = pFEC_EMIS;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_ACTUALIZARFLAG_ENVIO_INTERMEDIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_ACTUALIZARFLAG_ENVIO_INTERMEDIA`(
in pNUM_CPE_INTERMEDIA int(11)
)
BEGIN

	update tbl_cpe_cabecera_inter set TXT_FLAGCARGA ='2' 
    where NUM_CPE_INTERMEDIA = pNUM_CPE_INTERMEDIA;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_CONSULTA_ESTADOS_SUNAT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_CONSULTA_ESTADOS_SUNAT`(
in pNUM_RUC_EMIS varchar(11),
in pCOD_TIP_CPE char(2),
in pTXT_SERIE char(4),
in pTXT_CORRELATIVO varchar(12),
in pCOD_IDEN_CB char(2),
out pFECHA_RECP_SUNAT datetime,
out pFEC_GENE_DOC_SUNAT datetime,
out pCOD_RPTA_ENVIO_SUNAT varchar(10),
out pTICKET_ID_RECEP_SUNAT varchar(50),
out pCOD_ESTADO_SUNAT varchar(100)
)
BEGIN

		if(pCOD_TIP_CPE = '20') then
        
          if(not exists(select * from tbl_cpe_cabecera_retencion_inter cpe
             where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			 and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO)) then
             
             set pFECHA_RECP_SUNAT = '0000-00-00';
             set pFEC_GENE_DOC_SUNAT = '0000-00-00';
             set pCOD_RPTA_ENVIO_SUNAT = '-';
             set pTICKET_ID_RECEP_SUNAT = '-';
             set pCOD_ESTADO_SUNAT = 'Comprobante no se encuentra registrado';
             
             select pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT;
             
		  else
          
			select cpe.FECHA_RECP_SUNAT, cpe.FEC_GENE_DOC_SUNAT, cpe.COD_RPTA_ENVIO_SUNAT, 
			cpe.TICKET_ID_RECEP_SUNAT, est.TXT_DESCR into
            pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, 
            pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT
            from tbl_cpe_cabecera_retencion_inter cpe
            inner join tbl_estd_sunat_inter est
            on cpe.COD_ESTADO_SUNAT = est.COD_ESTD_SUNAT
			where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO;
            
            select case when pFECHA_RECP_SUNAT is null then 'Sin respuesta' else pFECHA_RECP_SUNAT end as pFECHA_RECP_SUNAT, 
            case when pFEC_GENE_DOC_SUNAT is null then 'Sin respuesta' else pFEC_GENE_DOC_SUNAT end as pFEC_GENE_DOC_SUNAT, 
            case when pCOD_RPTA_ENVIO_SUNAT is null then '' else pCOD_RPTA_ENVIO_SUNAT end as pCOD_RPTA_ENVIO_SUNAT, 
            case when pTICKET_ID_RECEP_SUNAT is null then 'Sin respuesta' else pTICKET_ID_RECEP_SUNAT end as pTICKET_ID_RECEP_SUNAT, 
            pCOD_ESTADO_SUNAT;
			
            -- select case when FECHA_RECP_SUNAT is null then 'Sin respuesta' else FECHA_RECP_SUNAT end as FECHA_RECP_SUNAT, 
		    -- case when FEC_GENE_DOC_SUNAT is null then 'Sin respuesta' else FEC_GENE_DOC_SUNAT end as FEC_GENE_DOC_SUNAT, 
		    -- case when COD_RPTA_ENVIO_SUNAT is null then 'Sin respuesta' else COD_RPTA_ENVIO_SUNAT end as COD_RPTA_ENVIO_SUNAT, 
		    -- case when TICKET_ID_RECEP_SUNAT is null then 'Sin respuesta' else TICKET_ID_RECEP_SUNAT end as TICKET_ID_RECEP_SUNAT, 
		    -- COD_ESTADO_SUNAT
			-- from tbl_cpe_cabecera_retencion_inter
			-- where NUM_RUC_EMIS = pNUM_RUC_EMIS and COD_TIP_CPE = pCOD_TIP_CPE
			-- and TXT_SERIE = pTXT_SERIE and TXT_CORRELATIVO = pTXT_CORRELATIVO;
                        
          end if;
          
		elseif(pCOD_IDEN_CB = '') then
        
          if(not exists(select * from tbl_cpe_cabecera_inter cpe
             where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			 and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO and cpe.COD_IDEN_CB <> 'C' )) then
             
             set pFECHA_RECP_SUNAT = '0000-00-00';
             set pFEC_GENE_DOC_SUNAT = '0000-00-00';
             set pCOD_RPTA_ENVIO_SUNAT = '-';
             set pTICKET_ID_RECEP_SUNAT = '-';
             set pCOD_ESTADO_SUNAT = 'Comprobante no se encuentra registrado';
             
             select pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT;
             
		  else
             
			select cpe.FECHA_RECP_SUNAT, cpe.FEC_GENE_DOC_SUNAT, cpe.COD_RPTA_ENVIO_SUNAT, 
			cpe.TICKET_ID_RECEP_SUNAT, est.TXT_DESCR into
            pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, 
            pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT
            from tbl_cpe_cabecera_inter cpe
            inner join tbl_estd_sunat_inter est
            on cpe.COD_ESTADO_SUNAT = est.COD_ESTD_SUNAT
			where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO and cpe.COD_IDEN_CB <> 'C';					
            
            select case when pFECHA_RECP_SUNAT is null then 'Sin respuesta' else pFECHA_RECP_SUNAT end as pFECHA_RECP_SUNAT, 
            case when pFEC_GENE_DOC_SUNAT is null then 'Sin respuesta' else pFEC_GENE_DOC_SUNAT end as pFEC_GENE_DOC_SUNAT, 
            case when pCOD_RPTA_ENVIO_SUNAT is null then '' else pCOD_RPTA_ENVIO_SUNAT end as pCOD_RPTA_ENVIO_SUNAT, 
            case when pTICKET_ID_RECEP_SUNAT is null then 'Sin respuesta' else pTICKET_ID_RECEP_SUNAT end as pTICKET_ID_RECEP_SUNAT, 
            pCOD_ESTADO_SUNAT;
            
			-- select case when FECHA_RECP_SUNAT is null then 'Sin respuesta' else FECHA_RECP_SUNAT end as FECHA_RECP_SUNAT, 
		    -- case when FEC_GENE_DOC_SUNAT is null then 'Sin respuesta' else FEC_GENE_DOC_SUNAT end as FEC_GENE_DOC_SUNAT, 
		    -- case when COD_RPTA_ENVIO_SUNAT is null then 'Sin respuesta' else COD_RPTA_ENVIO_SUNAT end as COD_RPTA_ENVIO_SUNAT, 
		    -- case when TICKET_ID_RECEP_SUNAT is null then 'Sin respuesta' else TICKET_ID_RECEP_SUNAT end as TICKET_ID_RECEP_SUNAT, 
		    -- COD_ESTADO_SUNAT into
            -- pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT
			-- from tbl_cpe_cabecera_inter
			-- where NUM_RUC_EMIS = pNUM_RUC_EMIS and COD_TIP_CPE = pCOD_TIP_CPE
			-- and TXT_SERIE = pTXT_SERIE and TXT_CORRELATIVO = pTXT_CORRELATIVO and COD_IDEN_CB <> 'C';          
         end if;
         
        else
        
		 if(not exists(select * from tbl_cpe_cabecera_inter cpe
             where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			 and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO and cpe.COD_IDEN_CB = pCOD_IDEN_CB)) then
             
             set pFECHA_RECP_SUNAT = '0000-00-00';
             set pFEC_GENE_DOC_SUNAT = '0000-00-00';
             set pCOD_RPTA_ENVIO_SUNAT = '-';
             set pTICKET_ID_RECEP_SUNAT = '-';
             set pCOD_ESTADO_SUNAT = 'Comprobante no se encuentra registrado';
             
             select pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT;
             
		  else
        
			select cpe.FECHA_RECP_SUNAT, cpe.FEC_GENE_DOC_SUNAT, cpe.COD_RPTA_ENVIO_SUNAT, 
			cpe.TICKET_ID_RECEP_SUNAT, est.TXT_DESCR into
            pFECHA_RECP_SUNAT, pFEC_GENE_DOC_SUNAT, pCOD_RPTA_ENVIO_SUNAT, 
            pTICKET_ID_RECEP_SUNAT, pCOD_ESTADO_SUNAT
            from tbl_cpe_cabecera_inter cpe
            inner join tbl_estd_sunat_inter est
            on cpe.COD_ESTADO_SUNAT = est.COD_ESTD_SUNAT
			where cpe.NUM_RUC_EMIS = pNUM_RUC_EMIS and cpe.COD_TIP_CPE = pCOD_TIP_CPE
			and cpe.TXT_SERIE = pTXT_SERIE and cpe.TXT_CORRELATIVO = pTXT_CORRELATIVO and cpe.COD_IDEN_CB = pCOD_IDEN_CB;
            
            select case when pFECHA_RECP_SUNAT is null then 'Sin respuesta' else pFECHA_RECP_SUNAT end as pFECHA_RECP_SUNAT, 
            case when pFEC_GENE_DOC_SUNAT is null then 'Sin respuesta' else pFEC_GENE_DOC_SUNAT end as pFEC_GENE_DOC_SUNAT, 
            case when pCOD_RPTA_ENVIO_SUNAT is null then '' else pCOD_RPTA_ENVIO_SUNAT end as pCOD_RPTA_ENVIO_SUNAT, 
            case when pTICKET_ID_RECEP_SUNAT is null then 'Sin respuesta' else pTICKET_ID_RECEP_SUNAT end as pTICKET_ID_RECEP_SUNAT, 
            pCOD_ESTADO_SUNAT;
			
            -- select case when FECHA_RECP_SUNAT is null || '' then 'Sin respuesta' else FECHA_RECP_SUNAT end as FECHA_RECP_SUNAT, 
		    -- case when FEC_GENE_DOC_SUNAT is null || '' then 'Sin respuesta' else FEC_GENE_DOC_SUNAT end as FEC_GENE_DOC_SUNAT, 
		    -- case when COD_RPTA_ENVIO_SUNAT is null || '' then 'Sin respuesta' else COD_RPTA_ENVIO_SUNAT end as COD_RPTA_ENVIO_SUNAT, 
		    -- case when TICKET_ID_RECEP_SUNAT is null || '' then 'Sin respuesta' else TICKET_ID_RECEP_SUNAT end as TICKET_ID_RECEP_SUNAT, 
		    -- COD_ESTADO_SUNAT
			-- from tbl_cpe_cabecera_inter
			-- where NUM_RUC_EMIS = pNUM_RUC_EMIS and COD_TIP_CPE = pCOD_TIP_CPE
			-- and TXT_SERIE = pTXT_SERIE and TXT_CORRELATIVO = pTXT_CORRELATIVO and COD_IDEN_CB = pCOD_IDEN_CB;
		  end if;
        end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_ANTICIPOS_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_ANTICIPOS_UBL2_1`(
in pTXT_SERIE char(4),
in pTXT_CORRELATIVO varchar(8),
in pCOD_AFECTAC_IGV varchar(3),
in pMONTO decimal(12,2),
in pCOD_REL_ATRI char(2),
in pNUM_CPE int
)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	insert into  tbl_anticipo_inter(TXT_SERIE,
													TXT_CORRELATIVO,
													COD_AFECTAC_IGV, 
													MONTO, 
													COD_REL_ATRI,
                                                    NUM_CPE_INTERMEDIA) 
                                                    values(
										pTXT_SERIE , 
										pTXT_CORRELATIVO , 
										pCOD_AFECTAC_IGV,
                                        pMONTO,
                                        pCOD_REL_ATRI,
                                        pNUM_CPE);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_COMUNICACION_BAJA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_COMUNICACION_BAJA`(
IN pFEC_EMIS datetime,
IN pFEC_GENER_BAJA datetime,
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(8),
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_TIP_ESCENARIO char(2),
IN pCOD_CLIENTE_EMIS CHAR(4),

IN pCOD_IDEN_CB char(2),
IN pTXT_DESCR_MTVO_BAJA varchar(120),
out num_cpe int(11),
out resultado int,
out mensaje varchar(100)
)
BEGIN
                
                
     declare sms varchar(50);
     
	 DECLARE EXIT HANDLER FOR SQLEXCEPTION
	 BEGIN

	 SHOW ERRORS LIMIT 1;
			
	 ROLLBACK;
	 END; 
    
     DECLARE EXIT HANDLER FOR SQLWARNING
	 BEGIN
	 SHOW WARNINGS LIMIT 1;
	
	 ROLLBACK;
	 END;
     
     
     if(exists(select * from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE 
		AND COD_IDEN_CB <> 'C' AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS)) then
		
   
		 select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE
         AND COD_IDEN_CB = pCOD_IDEN_CB AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;
		 if resultado then
			set mensaje = 'Documento de baja ya existe';
			set num_cpe = 0;
			select resultado,  mensaje, num_cpe;
		 else
		 
		 -- start transaction;
		 insert into tbl_cpe_cabecera_inter(FEC_EMIS,FEC_GENER_BAJA,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,
				
                NUM_RUC_EMIS, NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS, COD_UBI_EMIS, TXT_DMCL_FISC_EMIS, TXT_URB_EMIS, 
				TXT_PROV_EMIS, TXT_DPTO_EMIS, TXT_DISTR_EMIS,
                
				COD_TIP_ESCENARIO,TXT_PLACA,NUM_IDEN_RECP,
				NOM_RZN_SOC_RECP,COD_TIP_NIF_RECP,TXT_DMCL_FISC_RECEP,COD_CLIENTE_EMIS, 
				PORCENTAJE_DSCTO, MNT_ANTICIPO,
				MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
				MNT_OTROS_CARGOS,
                MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC, TIPO_PERCEPCION,
				MNT_TOT_BASE_IMPONIBLE,PORCENTAJE_PERCEPCION,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_IDEN_CB,FLAG_NUM_INT,
				FLAG_ENVIO_BOLETAS, FLAG_CORREO,TXT_DESCR_MOTIVO_BAJA,
				COD_IDEN_RD,COD_IDEN_COM_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,FEC_RECP_DOC1,TXT_CORREO_ADQUIRIENTE,TXT_RESP,
				
				TIPO_CAMBIO, TXT_CONDICION_PAGO, FLAG_PAGADO, OBSERVACIONES,ORDEN_COMPRA, GUIA_REMISION,
				
				GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
				GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
				GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
				GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
				GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
				GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
				GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
				GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
				
				DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4, TXT_FLAGCARGA,
                
                MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR,
				PESOBRUTO_EXPOR , PESONETO_EXPOR, VOLUMEN_EXPOR, FEC_VENCI,
				
				MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
				TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO)
                
		 values(pFEC_EMIS,pFEC_GENER_BAJA,pTXT_SERIE,pTXT_CORRELATIVO,pCOD_TIP_CPE,'',
				
                '','','','','','','','','','',
                
				pCOD_TIP_ESCENARIO,'','','','','',			
				pCOD_CLIENTE_EMIS, 
				'', 0.00,
				0.00,0.00,0.00,0.00, 
				0.00,
				0.00,0.00,0.00,'',
				0.00,'',0.00,0.00,0.00,'03','101',pCOD_IDEN_CB,'0','0','0',pTXT_DESCR_MTVO_BAJA,'','RA','','','','','',NOW(),'','0',
				
				0.00, '', '0', '', '', '',
				
				'' ,'' ,'' ,'' ,'' ,'' ,
			    '','' ,'','' ,'',
			    '','','' ,'',
			    '','', '' ,'',
			    '','' ,'',0.00,
			    '',
				
				'','','','','2',
                
                '','','','','','',0.00,0.00,0.00,null,
			    0.00,'','','','','',
			    '','','');
		
		 set mensaje = 'Se registro correctamente';
		 set num_cpe = LAST_INSERT_ID();
		 select resultado, mensaje, num_cpe;
		 -- commit;
		 end if;
        
	 else
		set mensaje = 'Debe registrar previamente el documento de venta';
        set resultado = 1;
		set num_cpe = 0;
        select resultado, mensaje, num_cpe;
     
     end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_CREDITO_CUOTA_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_CREDITO_CUOTA_UBL2_1`(
in pNUM_CPE INT(3),
in pNUM_CUOTA INT(3),
in pMNT_CRDT_CTA decimal(12,2),
in pFCHA_CTA datetime
)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	insert into  tbl_credito_cuota_inter(CUOTA_ID_INTERMEDIA,
													NUM_CPE_INTERMEDIA,
													NUM_CUOTA, 
													MNT_CRDT_CTA, 
													FCHA_CTA) 
                                                    values(
                                                    null,
										pNUM_CPE , 
										pNUM_CUOTA , 
										pMNT_CRDT_CTA,
                                        pFCHA_CTA);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_DET_FACTURA_BOLETA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_DET_FACTURA_BOLETA`(
in pNUM_LIN_ITEM INT(3),
in pCOD_UNID_ITEM varchar(3),
in pCANT_UNID_ITEM decimal(20,10),
in pVAL_VTA_ITEM decimal(12,4),
in pCOD_TIP_AFECT_IGV_ITEM char(2),
in pPRC_VTA_UNIT_ITEM decimal(20,10),
in pMNT_DSCTO_ITEM decimal(12,2),
in pMNT_IGV_ITEM decimal(12,2),
in pTXT_DESCR_ITEM varchar(250),
in pCOD_ITEM varchar(30),
in pVAL_UNIT_ITEM decimal(12,4),
in pCOD_TIP_SIST_ISC varchar(2),
in pMNT_ISC_ITEM decimal(12,2),
in pNUM_CPE_INTERMEDIA INT(11),
in pCOD_CLIENTE_EMIS char(4),
in pPORCENTAJE_ISC varchar(5),
in pDATO_EXTRA_1 varchar(50),
in pDATO_EXTRA_2 varchar(50),
in pIMPORTE_TOTAL_ITEM decimal(12,2),
out num_det_cabecera int,
out resultado int,
out mensaje varchar(100)
)
BEGIN

	-- declare num_det_cabecera int; 
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	-- start transaction;
	insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
    PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
    NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, PORCENTAJE_ISC, DATO_EXTRA_1, DATO_EXTRA_2,IMPORTE_TOTAL_ITEM)
    VALUES(pNUM_LIN_ITEM,pCOD_UNID_ITEM,pCANT_UNID_ITEM,pVAL_VTA_ITEM,pCOD_TIP_AFECT_IGV_ITEM,pPRC_VTA_UNIT_ITEM,
    pMNT_DSCTO_ITEM,pMNT_IGV_ITEM,pTXT_DESCR_ITEM,pCOD_ITEM,pVAL_UNIT_ITEM,pCOD_TIP_SIST_ISC,pMNT_ISC_ITEM,pNUM_CPE_INTERMEDIA, pCOD_CLIENTE_EMIS,
    pPORCENTAJE_ISC, pDATO_EXTRA_1, pDATO_EXTRA_2,pIMPORTE_TOTAL_ITEM);
	
    set mensaje = 'Se registro correctamente';
    set resultado = 1;
    set num_det_cabecera = last_insert_id();
    if(num_det_cabecera > 0 AND num_det_cabecera is not null) then
		select resultado,mensaje, num_det_cabecera;
        -- commit;
	else
		set mensaje = 'Error, no se grabo el detalle';
        set resultado = 0;
		-- rollback;
        select resultado, mensaje, num_det_cabecera; 
	end if;	
	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_DET_FACTURA_BOLETA_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_DET_FACTURA_BOLETA_UBL2_1`(
in pNUM_LIN_ITEM INT(3),
in pCOD_UNID_ITEM varchar(3),
in pCANT_UNID_ITEM decimal(22,10),
in pVAL_VTA_ITEM decimal(12,4),
in pCOD_TIP_AFECT_IGV_ITEM char(2),
in pPRC_VTA_UNIT_ITEM decimal(22,10),
in pMNT_DSCTO_ITEM decimal(12,2),
in pMNT_IGV_ITEM decimal(12,2),
in pTXT_DESCR_ITEM varchar(250),
in pCOD_PROD_SUNAT varchar(30),
in pCOD_ITEM varchar(30),
in pVAL_UNIT_ITEM decimal(22,10),
in pCOD_TIP_SIST_ISC varchar(2),
in pMNT_ISC_ITEM decimal(12,2),
in pNUM_CPE_INTERMEDIA INT(11),
in pCOD_CLIENTE_EMIS char(4),
in pPORCENTAJE_ISC varchar(5),
in pVAL_UNIT_ICBPER decimal(12,5),
in pCANT_ICBPER_ITEM decimal(12,2),
in pMNT_ICBPER_ITEM decimal(12,2),
in pDATO_EXTRA_1 varchar(300),
in pDATO_EXTRA_2 varchar(300),
in pIMPORTE_TOTAL_ITEM decimal(12,2),
out num_det_cabecera int,
out resultado int,
out mensaje varchar(100)
)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
    PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_PROD_SUNAT,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
    NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, PORCENTAJE_ISC,VAL_UNIT_ICBPER,CANT_ICBPER_ITEM,MNT_ICBPER_ITEM,DATO_EXTRA_1, DATO_EXTRA_2,IMPORTE_TOTAL_ITEM)
    
    VALUES(pNUM_LIN_ITEM,pCOD_UNID_ITEM,pCANT_UNID_ITEM,pVAL_VTA_ITEM,pCOD_TIP_AFECT_IGV_ITEM,pPRC_VTA_UNIT_ITEM,
    pMNT_DSCTO_ITEM,pMNT_IGV_ITEM,pTXT_DESCR_ITEM,pCOD_PROD_SUNAT,pCOD_ITEM,pVAL_UNIT_ITEM,pCOD_TIP_SIST_ISC,pMNT_ISC_ITEM,pNUM_CPE_INTERMEDIA, pCOD_CLIENTE_EMIS,
    pPORCENTAJE_ISC,pVAL_UNIT_ICBPER,pCANT_ICBPER_ITEM,pMNT_ICBPER_ITEM,pDATO_EXTRA_1, pDATO_EXTRA_2,pIMPORTE_TOTAL_ITEM);
	
    set mensaje = 'Se registro correctamente';
    set resultado = 1;
    set num_det_cabecera = last_insert_id();
    if(num_det_cabecera > 0 AND num_det_cabecera is not null) then
		select resultado,mensaje, num_det_cabecera;

	else
		set mensaje = 'Error, no se grabo el detalle';
        set resultado = 0;

        select resultado, mensaje, num_det_cabecera; 
	end if;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_DET_NOTA_CREDITO_DEBITO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_DET_NOTA_CREDITO_DEBITO`(
in pNUM_LIN_ITEM INT(3),
in pCOD_UNID_ITEM varchar(3),
in pCANT_UNID_ITEM decimal(20,10),
in pVAL_VTA_ITEM decimal(12,4),
in pCOD_TIP_AFECT_IGV_ITEM char(2),
in pPRC_VTA_UNIT_ITEM decimal(20,10),
in pMNT_DSCTO_ITEM decimal(12,2),
in pMNT_IGV_ITEM decimal(12,2),
in pTXT_DESCR_ITEM varchar(250),
in pCOD_ITEM varchar(30),
in pVAL_UNIT_ITEM decimal(12,4),
in pCOD_TIP_SIST_ISC varchar(2),
in pMNT_ISC_ITEM decimal(12,2),
in pNUM_CPE_INTERMEDIA INT(11),
in pCOD_CLIENTE_EMIS char(4),
in pPORCENTAJE_ISC varchar(5),
in pDATO_EXTRA_1 varchar(50),
in pDATO_EXTRA_2 varchar(50),
in pIMPORTE_TOTAL_ITEM decimal(12,2),
out num_det_cabecera int,
out resultado int,
out mensaje varchar(100)
)
BEGIN

	-- declare num_det_cabecera int; 
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	-- start transaction;
	insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
    PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
    NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, PORCENTAJE_ISC, DATO_EXTRA_1, DATO_EXTRA_2,IMPORTE_TOTAL_ITEM)
    VALUES(pNUM_LIN_ITEM,pCOD_UNID_ITEM,pCANT_UNID_ITEM,pVAL_VTA_ITEM,pCOD_TIP_AFECT_IGV_ITEM,pPRC_VTA_UNIT_ITEM,
    pMNT_DSCTO_ITEM,pMNT_IGV_ITEM,pTXT_DESCR_ITEM,pCOD_ITEM,pVAL_UNIT_ITEM,pCOD_TIP_SIST_ISC,pMNT_ISC_ITEM,pNUM_CPE_INTERMEDIA, pCOD_CLIENTE_EMIS,
    pPORCENTAJE_ISC, pDATO_EXTRA_1, pDATO_EXTRA_2,pIMPORTE_TOTAL_ITEM);
	
    set mensaje = 'Se registro correctamente';
    set resultado = 1;
    set num_det_cabecera = last_insert_id();
    if(num_det_cabecera > 0 AND num_det_cabecera is not null) then
		select resultado,mensaje, num_det_cabecera;
        -- commit;
	else
		set mensaje = 'Error, no se grabo el detalle';
        set resultado = 0;
		-- rollback;
        select resultado, mensaje, num_det_cabecera; 
	end if;	
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_DET_NOTA_CREDITO_DEBITO_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_DET_NOTA_CREDITO_DEBITO_UBL2_1`(
in pNUM_LIN_ITEM INT(3),
in pCOD_UNID_ITEM varchar(3),
in pCANT_UNID_ITEM decimal(20,10),
in pVAL_VTA_ITEM decimal(12,4),
in pCOD_TIP_AFECT_IGV_ITEM char(2),
in pPRC_VTA_UNIT_ITEM decimal(20,10),
in pMNT_DSCTO_ITEM decimal(12,2),
in pMNT_IGV_ITEM decimal(12,2),
in pTXT_DESCR_ITEM varchar(250),
in pCOD_PROD_SUNAT varchar(30),
in pCOD_ITEM varchar(30),
in pVAL_UNIT_ITEM decimal(12,4),
in pCOD_TIP_SIST_ISC varchar(2),
in pMNT_ISC_ITEM decimal(12,2),
in pNUM_CPE_INTERMEDIA INT(11),
in pCOD_CLIENTE_EMIS char(4),
in pPORCENTAJE_ISC varchar(5),
in pVAL_UNIT_ICBPER decimal(12,5),
in pCANT_ICBPER_ITEM decimal(12,2),
in pMNT_ICBPER_ITEM decimal(12,2),
in pDATO_EXTRA_1 varchar(300),
in pDATO_EXTRA_2 varchar(300),
in pIMPORTE_TOTAL_ITEM decimal(12,2),
out num_det_cabecera int,
out resultado int,
out mensaje varchar(100)
)
BEGIN

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
	SHOW ERRORS LIMIT 1;
	
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
	
    
	insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
    PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_PROD_SUNAT,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
    NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, PORCENTAJE_ISC,VAL_UNIT_ICBPER,CANT_ICBPER_ITEM,MNT_ICBPER_ITEM,DATO_EXTRA_1, DATO_EXTRA_2,IMPORTE_TOTAL_ITEM)
    
    VALUES(pNUM_LIN_ITEM,pCOD_UNID_ITEM,pCANT_UNID_ITEM,pVAL_VTA_ITEM,pCOD_TIP_AFECT_IGV_ITEM,pPRC_VTA_UNIT_ITEM,
    pMNT_DSCTO_ITEM,pMNT_IGV_ITEM,pTXT_DESCR_ITEM,pCOD_PROD_SUNAT,pCOD_ITEM,pVAL_UNIT_ITEM,pCOD_TIP_SIST_ISC,pMNT_ISC_ITEM,pNUM_CPE_INTERMEDIA, pCOD_CLIENTE_EMIS,
    pPORCENTAJE_ISC,pVAL_UNIT_ICBPER,pCANT_ICBPER_ITEM,pMNT_ICBPER_ITEM,pDATO_EXTRA_1,pDATO_EXTRA_2,pIMPORTE_TOTAL_ITEM);
	
    set mensaje = 'Se registro correctamente';
    set resultado = 1;
    set num_det_cabecera = last_insert_id();
    if(num_det_cabecera > 0 AND num_det_cabecera is not null) then
		select resultado,mensaje, num_det_cabecera;

	else
		set mensaje = 'Error, no se grabo el detalle';
        set resultado = 0;

        select resultado, mensaje, num_det_cabecera; 
	end if;	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_FACTURA_BOLETA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_FACTURA_BOLETA`(
IN pFEC_EMIS DATETIME,
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(8),
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_MND CHAR(3),
IN pCOD_TIP_ESCENARIO char(2),
IN pTXT_PLACA varchar(10),
IN pCOD_CLIENTE_EMIS CHAR(4),

IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pCOD_TIP_NIF_EMIS char(1),
IN pCOD_LOC_EMIS varchar(3),

IN pCOD_UBI_EMIS varchar(6),
IN pTXT_DMCL_FISC_EMIS varchar(100),
IN pTXT_URB_EMIS varchar(25),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),

IN pNUM_IDEN_RECP VARCHAR(11),
IN pCOD_TIP_NIF_RECP CHAR(1),
IN pNOM_RZN_SOC_RECP VARCHAR(100),
IN pTXT_DMCL_FISC_RECEP VARCHAR(100),
IN pTXT_CORREO_ADQUIRIENTE varchar(120),
IN pMNT_TOT_GRAVADAS DECIMAL(12,2),
IN pMNT_TOT_INAFECTAS DECIMAL(12,2),
IN pMNT_TOT_EXONERADAS DECIMAL(12,2),
IN pMNT_TOT_GRATUITAS DECIMAL(12,2),
IN pMNT_TOT_DESC_GLOBAL DECIMAL(12,2),
IN pMNT_TOT_IGV DECIMAL(12,2),
IN pMNT_TOT_IGV_ISC DECIMAL(12,2),
IN pMNT_TOT_BASE_IMPONIBLE DECIMAL(12,2),
IN pMNT_TOT_PERCEPCION DECIMAL(12,2),
IN pMNT_TOT_A_PERCIBIR DECIMAL(12,2),
IN pMNT_TOT DECIMAL(12,2),
in pCOD_OPERACION char(2),

in pPORCENTAJE_DSCTO varchar(5), 
in pMNT_ANTICIPO decimal(12,2), 
in pMNT_OTROS_CARGOS decimal(12,2),
in pTIPO_PERCEPCION char(2), 
in pPORCENTAJE_PERCEPCION varchar(5), 
in pTIPO_CAMBIO decimal(12,2),
in pTXT_CONDICION_PAGO VARCHAR(60),  
in pFLAG_PAGADO CHAR(1), 
in pTXT_OBSERV varchar(150),
in pORDEN_COMPRA varchar(20), 
in pGUIA_REMISION varchar(50),
in pFLAG_ENVIO_AUTOMATICO char(1),
in pGUIA_TXT_COD_UBIG varchar(6), 
in pGUIA_TXT_DMCL_FISC varchar(100), 
in pGUIA_TXT_URB varchar(25),
in pGUIA_TXT_PROV varchar(30), 
in pGUIA_TXT_DPTO varchar(30), 
in pGUIA_TXT_DISTR varchar(30),
in pGUIA_TXT_PAIS char(2), 
in pGUIA_COD_UBIG_LLEGDA varchar(6), 
in pGUIA_TXT_DMCL_FISC_LLEGDA varchar(100),
in pGUIA_TXT_URB_LLEGDA varchar(25), 
in pGUIA_TXT_PROV_LLEGDA varchar(30), 
in pGUIA_TXT_DPTO_LLEGDA varchar(30),
in pGUIA_TXT_DISTR_LLEGDA varchar(30), 
in pGUIA_TXT_PAIS_LLEGDA char(2), 
in pGUIA_TXT_PLACA_AUTO_TRNSP varchar(10),
in pGUIA_TXT_CERT_AUTO_TRNSP varchar(30), 
in pGUIA_TXT_MARCA_AUTO_TRNSP varchar(50), 
in pGUIA_TXT_LIC_COND_TRNSP varchar(30),
in pGUIA_TXT_RUC_TRNSP varchar(11), 
in pGUIA_TXT_COD_OTR_TRNSP char(2), 
in pGUIA_TXT_RZN_SCL_TRNSP varchar(100),
in pGUIA_TXT_COD_MOD_TRNSP char(2), 
in pGUIA_MNT_TOTAL_BRUTO decimal(12,2), 
in pGUIA_COD_UNID_MED char(3),
in pDATO_EXTRA_1 varchar(50),
in pDATO_EXTRA_2 varchar(50),
in pDATO_EXTRA_3 varchar(50),
in pDATO_EXTRA_4 varchar(50),

in pMARCA_EXPOR varchar(25),
in pORIGEN_EXPOR VARCHAR(25),
in pDESPACHO_EXPOR VARCHAR(25),
in pSOLDTO_EXPOR VARCHAR(25),
in pSHIPTO_EXPOR VARCHAR(25),
in pNUMEROCAJAS_EXPOR varchar(15),
in pPESOBRUTO_EXPOR decimal(12,2) ,
in pPESONETO_EXPOR decimal(12,2),
in pVOLUMEN_EXPOR decimal(12,2),

in pFEC_VENCI datetime,
in pMNT_TOT_DETRAC decimal(12,2),
in pPERCENT_DETRAC varchar(5),
in pDESCRIP_DETRAC varchar(100),
in pNUM_CTA_BN varchar(20),
in pTIP_DETRAC char(1),
in pINFOS_DETRAC varchar(100),
in pTXT_SERIE_ANTICIPO char(4),
in pTXT_CORRELATIVO_ANTICIPO varchar(8),
in pTXT_COD_CPE_ANTICIPO char(2),

out num_cpe int(11),
out mensaje varchar (100),
out resultado int
)
BEGIN

	declare pESTAD_ITEM char(1);
  
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    
	SHOW ERRORS LIMIT 1;
			
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
    
	
	select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE 
    AND COD_IDEN_CB <> 'C' AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;
	if resultado then
		set mensaje = 'Serie-correlativo ya existe';
        set num_cpe = 0;
		select resultado,  mensaje, num_cpe;
	else
	
	-- start transaction;
    
    if(pCOD_TIP_CPE = '01') then
		set pESTAD_ITEM = '0';
    else
		set pESTAD_ITEM = '1';
    end if;
    
    
	INSERT INTO tbl_cpe_cabecera_inter(FEC_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS,
	NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS, COD_UBI_EMIS, TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,NUM_IDEN_RECP,
    COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP,TXT_CORREO_ADQUIRIENTE,FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS,MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
    MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,
    TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,COD_IDEN_CB,
	COD_IDEN_RD,COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,
    
    PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
    PORCENTAJE_PERCEPCION, TIPO_CAMBIO, TXT_CONDICION_PAGO, FLAG_PAGADO, OBSERVACIONES,
    ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
    
    GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
	GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
	GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
	GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
	GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
	GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
	GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
	GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
    DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4, 
    
    MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR,
	PESOBRUTO_EXPOR , PESONETO_EXPOR, VOLUMEN_EXPOR, FEC_VENCI,
    
    MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
    TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
    ESTAD_ITEM)
    
    values(pFEC_EMIS,pTXT_SERIE,pTXT_CORRELATIVO,pCOD_TIP_CPE,pCOD_MND,'03','101',pCOD_TIP_ESCENARIO,pTXT_PLACA,pCOD_CLIENTE_EMIS, pNUM_RUC_EMIS, pNOM_RZN_SOC_EMIS, pCOD_TIP_NIF_EMIS, pCOD_LOC_EMIS,
    pCOD_UBI_EMIS, pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,pNUM_IDEN_RECP,pCOD_TIP_NIF_RECP,
    pNOM_RZN_SOC_RECP,pTXT_DMCL_FISC_RECEP,pTXT_CORREO_ADQUIRIENTE,NOW(),'0','0','0',pMNT_TOT_GRAVADAS,pMNT_TOT_INAFECTAS,pMNT_TOT_EXONERADAS,pMNT_TOT_GRATUITAS,pMNT_TOT_DESC_GLOBAL,
    pMNT_TOT_IGV,pMNT_TOT_IGV_ISC,pMNT_TOT_BASE_IMPONIBLE,pMNT_TOT_PERCEPCION,pMNT_TOT_A_PERCIBIR,pMNT_TOT,
    '','','','','','','','','','0','1', pCOD_OPERACION,
    pPORCENTAJE_DSCTO, pMNT_ANTICIPO, pMNT_OTROS_CARGOS, pTIPO_PERCEPCION,
    pPORCENTAJE_PERCEPCION, pTIPO_CAMBIO, pTXT_CONDICION_PAGO, 
    pFLAG_PAGADO, pTXT_OBSERV, pORDEN_COMPRA, pGUIA_REMISION, pFLAG_ENVIO_AUTOMATICO,
    pGUIA_TXT_COD_UBIG, pGUIA_TXT_DMCL_FISC, pGUIA_TXT_URB,
	pGUIA_TXT_PROV, pGUIA_TXT_DPTO, pGUIA_TXT_DISTR,
	pGUIA_TXT_PAIS, pGUIA_COD_UBIG_LLEGDA, pGUIA_TXT_DMCL_FISC_LLEGDA,
	pGUIA_TXT_URB_LLEGDA, pGUIA_TXT_PROV_LLEGDA, pGUIA_TXT_DPTO_LLEGDA,
	pGUIA_TXT_DISTR_LLEGDA, pGUIA_TXT_PAIS_LLEGDA, pGUIA_TXT_PLACA_AUTO_TRNSP,
	pGUIA_TXT_CERT_AUTO_TRNSP, pGUIA_TXT_MARCA_AUTO_TRNSP, pGUIA_TXT_LIC_COND_TRNSP,
	pGUIA_TXT_RUC_TRNSP, pGUIA_TXT_COD_OTR_TRNSP, pGUIA_TXT_RZN_SCL_TRNSP,
	pGUIA_TXT_COD_MOD_TRNSP, pGUIA_MNT_TOTAL_BRUTO, pGUIA_COD_UNID_MED,
    pDATO_EXTRA_1, pDATO_EXTRA_2, pDATO_EXTRA_3, pDATO_EXTRA_4, 
    
    pMARCA_EXPOR, pORIGEN_EXPOR, pDESPACHO_EXPOR, pSOLDTO_EXPOR, pSHIPTO_EXPOR,
	pNUMEROCAJAS_EXPOR, pPESOBRUTO_EXPOR, pPESONETO_EXPOR, pVOLUMEN_EXPOR, pFEC_VENCI,
                    
    pMNT_TOT_DETRAC, pPERCENT_DETRAC, pDESCRIP_DETRAC, pNUM_CTA_BN, pTIP_DETRAC, pINFOS_DETRAC,
	pTXT_SERIE_ANTICIPO, pTXT_CORRELATIVO_ANTICIPO, pTXT_COD_CPE_ANTICIPO,
    pESTAD_ITEM);
 
	set num_cpe = LAST_INSERT_ID(); 
    set mensaje = 'Se ingreso correctamente';
		select resultado, mensaje, num_cpe;
	-- commit;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_FACTURA_BOLETA_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_FACTURA_BOLETA_UBL2_1`(
IN pFEC_EMIS DATETIME,
IN pHORA_EMIS VARCHAR(10),
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(8),
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_MND CHAR(3),
IN pCOD_TIP_ESCENARIO char(2),
IN pTXT_PLACA varchar(10),
IN pCOD_CLIENTE_EMIS CHAR(4),

IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pCOD_TIP_NIF_EMIS char(1),
IN pCOD_LOC_EMIS varchar(3),

IN pCOD_UBI_EMIS varchar(6),
IN pTXT_DMCL_FISC_EMIS varchar(200),
IN pTXT_URB_EMIS varchar(25),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),

IN pNUM_IDEN_RECP VARCHAR(11),
IN pCOD_TIP_NIF_RECP CHAR(1),
IN pNOM_RZN_SOC_RECP VARCHAR(100),
IN pTXT_DMCL_FISC_RECEP VARCHAR(200),
IN pTXT_CORREO_ADQUIRIENTE varchar(120),
IN pMNT_TOT_GRAVADAS DECIMAL(12,2),
IN pMNT_TOT_INAFECTAS DECIMAL(12,2),
IN pMNT_TOT_EXONERADAS DECIMAL(12,2),
IN pMNT_TOT_GRATUITAS DECIMAL(12,2),
IN pMNT_TOT_DESC_GLOBAL DECIMAL(12,2),
IN pMNT_TOT_IGV DECIMAL(12,2),
IN pMNT_TOT_IGV_ISC DECIMAL(12,2),
IN pMNT_TOT_ICBPER DECIMAL(12,2),
IN pMNT_TOT_BASE_IMPONIBLE DECIMAL(12,2),
IN pMNT_TOT_PERCEPCION DECIMAL(12,2),
IN pMNT_TOT_A_PERCIBIR DECIMAL(12,2),
IN pMNT_TOT DECIMAL(12,2),
in pCOD_OPERACION varchar(4),

in pPORCENTAJE_DSCTO varchar(5), 
in pMNT_ANTICIPO decimal(12,2), 
in pMNT_OTROS_CARGOS decimal(12,2),
in pTIPO_PERCEPCION char(2), 
in pPORCENTAJE_PERCEPCION varchar(5), 
in pTIPO_CAMBIO decimal(12,2),
in pTXT_CONDICION_PAGO VARCHAR(60),  
in pFLAG_PAGADO CHAR(1), 
in pTXT_OBSERV varchar(150),
in pORDEN_COMPRA varchar(20), 
in pGUIA_REMISION varchar(50),
in pFLAG_ENVIO_AUTOMATICO char(1),
in pGUIA_TXT_COD_UBIG varchar(6), 
in pGUIA_TXT_DMCL_FISC varchar(100), 
in pGUIA_TXT_URB varchar(25),
in pGUIA_TXT_PROV varchar(30), 
in pGUIA_TXT_DPTO varchar(30), 
in pGUIA_TXT_DISTR varchar(30),
in pGUIA_TXT_PAIS char(2), 
in pGUIA_COD_UBIG_LLEGDA varchar(6), 
in pGUIA_TXT_DMCL_FISC_LLEGDA varchar(100),
in pGUIA_TXT_URB_LLEGDA varchar(25), 
in pGUIA_TXT_PROV_LLEGDA varchar(30), 
in pGUIA_TXT_DPTO_LLEGDA varchar(30),
in pGUIA_TXT_DISTR_LLEGDA varchar(30), 
in pGUIA_TXT_PAIS_LLEGDA char(2), 
in pGUIA_TXT_PLACA_AUTO_TRNSP varchar(10),
in pGUIA_TXT_CERT_AUTO_TRNSP varchar(30), 
in pGUIA_TXT_MARCA_AUTO_TRNSP varchar(50), 
in pGUIA_TXT_LIC_COND_TRNSP varchar(30),
in pGUIA_TXT_RUC_TRNSP varchar(11), 
in pGUIA_TXT_COD_OTR_TRNSP char(2), 
in pGUIA_TXT_RZN_SCL_TRNSP varchar(100),
in pGUIA_TXT_COD_MOD_TRNSP char(2), 
in pGUIA_MNT_TOTAL_BRUTO decimal(12,2), 
in pGUIA_COD_UNID_MED char(3),
in pDATO_EXTRA_1 varchar(120),
in pDATO_EXTRA_2 varchar(120),
in pDATO_EXTRA_3 varchar(120),
in pDATO_EXTRA_4 varchar(120),

in pMARCA_EXPOR varchar(25),
in pORIGEN_EXPOR VARCHAR(25),
in pDESPACHO_EXPOR VARCHAR(25),
in pSOLDTO_EXPOR VARCHAR(25),
in pSHIPTO_EXPOR VARCHAR(25),
in pNUMEROCAJAS_EXPOR varchar(15),
in pPESOBRUTO_EXPOR decimal(12,2) ,
in pPESONETO_EXPOR decimal(12,2),
in pVOLUMEN_EXPOR decimal(12,2),

in pFEC_VENCI datetime,
in pMNT_TOT_DETRAC decimal(12,2),
in pPERCENT_DETRAC varchar(5),
in pDESCRIP_DETRAC varchar(100),
in pNUM_CTA_BN varchar(20),
in pTIP_DETRAC char(1),
in pINFOS_DETRAC varchar(100),
in pTXT_SERIE_ANTICIPO char(4),
in pTXT_CORRELATIVO_ANTICIPO varchar(8),
in pTXT_COD_CPE_ANTICIPO char(2),

in pCOD_TIP_FRMPGO int(3),
in pMNTO_CRDT_TTAL decimal(12,2),

out num_cpe int(11),
out mensaje varchar (100),
out resultado int
)
BEGIN

declare pESTAD_ITEM char(1);
  
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
    
	SHOW ERRORS LIMIT 1;
			
	ROLLBACK;
	END; 
    
    DECLARE EXIT HANDLER FOR SQLWARNING
	BEGIN
	SHOW WARNINGS LIMIT 1;
	
	ROLLBACK;
	END;
    
	
	select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE 
    AND COD_IDEN_CB <> 'C' AND NUM_RUC_EMIS = pNUM_RUC_EMIS;
	if resultado then
		set mensaje = 'Serie-correlativo ya existe';
        set num_cpe = 0;
		select resultado,  mensaje, num_cpe;
	else
	
    if(pCOD_TIP_CPE = '01') then
		set pESTAD_ITEM = '0';
    else
		set pESTAD_ITEM = '1';
    end if;
    
    
	INSERT INTO tbl_cpe_cabecera_inter(FEC_EMIS,HORA_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS,
	NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS, COD_UBI_EMIS, TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,NUM_IDEN_RECP,
    COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP,TXT_CORREO_ADQUIRIENTE,FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS,MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
    MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_ICBPER,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,
    TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,COD_IDEN_CB,
	COD_IDEN_RD,COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,
    
    PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
    PORCENTAJE_PERCEPCION, TIPO_CAMBIO, TXT_CONDICION_PAGO, FLAG_PAGADO, OBSERVACIONES,
    ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
    
    GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
	GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
	GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
	GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
	GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
	GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
	GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
	GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
    DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4, 
    
    MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR,
	PESOBRUTO_EXPOR , PESONETO_EXPOR, VOLUMEN_EXPOR, FEC_VENCI,
    
    MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
    TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
    ESTAD_ITEM, COD_TIP_FRMPGO, MNTO_CRDT_TTAL)
    
    values(pFEC_EMIS,pHORA_EMIS,pTXT_SERIE,pTXT_CORRELATIVO,pCOD_TIP_CPE,pCOD_MND,'03','101',pCOD_TIP_ESCENARIO,pTXT_PLACA,pCOD_CLIENTE_EMIS, pNUM_RUC_EMIS, pNOM_RZN_SOC_EMIS, pCOD_TIP_NIF_EMIS, pCOD_LOC_EMIS,
    pCOD_UBI_EMIS, pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,pNUM_IDEN_RECP,pCOD_TIP_NIF_RECP,
    pNOM_RZN_SOC_RECP,pTXT_DMCL_FISC_RECEP,pTXT_CORREO_ADQUIRIENTE,NOW(),'0','0','0',pMNT_TOT_GRAVADAS,pMNT_TOT_INAFECTAS,pMNT_TOT_EXONERADAS,pMNT_TOT_GRATUITAS,pMNT_TOT_DESC_GLOBAL,
    pMNT_TOT_IGV,pMNT_TOT_IGV_ISC,pMNT_TOT_ICBPER,pMNT_TOT_BASE_IMPONIBLE,pMNT_TOT_PERCEPCION,pMNT_TOT_A_PERCIBIR,pMNT_TOT,
    '','','','','','','','','','0','1', pCOD_OPERACION,
    pPORCENTAJE_DSCTO, pMNT_ANTICIPO, pMNT_OTROS_CARGOS, pTIPO_PERCEPCION,
    pPORCENTAJE_PERCEPCION, pTIPO_CAMBIO, pTXT_CONDICION_PAGO, 
    pFLAG_PAGADO, pTXT_OBSERV, pORDEN_COMPRA, pGUIA_REMISION, pFLAG_ENVIO_AUTOMATICO,
    pGUIA_TXT_COD_UBIG, pGUIA_TXT_DMCL_FISC, pGUIA_TXT_URB,
	pGUIA_TXT_PROV, pGUIA_TXT_DPTO, pGUIA_TXT_DISTR,
	pGUIA_TXT_PAIS, pGUIA_COD_UBIG_LLEGDA, pGUIA_TXT_DMCL_FISC_LLEGDA,
	pGUIA_TXT_URB_LLEGDA, pGUIA_TXT_PROV_LLEGDA, pGUIA_TXT_DPTO_LLEGDA,
	pGUIA_TXT_DISTR_LLEGDA, pGUIA_TXT_PAIS_LLEGDA, pGUIA_TXT_PLACA_AUTO_TRNSP,
	pGUIA_TXT_CERT_AUTO_TRNSP, pGUIA_TXT_MARCA_AUTO_TRNSP, pGUIA_TXT_LIC_COND_TRNSP,
	pGUIA_TXT_RUC_TRNSP, pGUIA_TXT_COD_OTR_TRNSP, pGUIA_TXT_RZN_SCL_TRNSP,
	pGUIA_TXT_COD_MOD_TRNSP, pGUIA_MNT_TOTAL_BRUTO, pGUIA_COD_UNID_MED,
    pDATO_EXTRA_1, pDATO_EXTRA_2, pDATO_EXTRA_3, pDATO_EXTRA_4, 
    
    pMARCA_EXPOR, pORIGEN_EXPOR, pDESPACHO_EXPOR, pSOLDTO_EXPOR, pSHIPTO_EXPOR,
	pNUMEROCAJAS_EXPOR, pPESOBRUTO_EXPOR, pPESONETO_EXPOR, pVOLUMEN_EXPOR, pFEC_VENCI,
                    
    pMNT_TOT_DETRAC, pPERCENT_DETRAC, pDESCRIP_DETRAC, pNUM_CTA_BN, pTIP_DETRAC, pINFOS_DETRAC,
	pTXT_SERIE_ANTICIPO, pTXT_CORRELATIVO_ANTICIPO, pTXT_COD_CPE_ANTICIPO,
    pESTAD_ITEM, pCOD_TIP_FRMPGO, pMNTO_CRDT_TTAL);
 
	set num_cpe = LAST_INSERT_ID(); 
    set mensaje = 'Se ingreso correctamente';
		select resultado, mensaje, num_cpe;

    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_NOTA_CREDITO_DEBITO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_NOTA_CREDITO_DEBITO`(
IN pFEC_EMIS DATETIME,
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(8), 
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_MND char(3),
IN pCOD_TIP_ESCENARIO char(2),
IN pTXT_PLACA varchar(10),
IN pCOD_CLIENTE_EMIS CHAR(4),

IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pCOD_TIP_NIF_EMIS char(1),
IN pCOD_LOC_EMIS varchar(3),

IN pCOD_UBI_EMIS varchar(6),
IN pTXT_DMCL_FISC_EMIS varchar(100),
IN pTXT_URB_EMIS varchar(25),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),

IN pNUM_IDEN_RECP VARCHAR(11),
IN pCOD_TIP_NIF_RECP CHAR(1),
IN pNOM_RZN_SOC_RECP VARCHAR(100),
IN pTXT_DMCL_FISC_RECEP VARCHAR(100),

IN pTXT_CORREO_ADQUIRIENTE varchar(120),
IN pMNT_TOT_GRAVADAS DECIMAL(12,2),
IN pMNT_TOT_INAFECTAS DECIMAL(12,2),
IN pMNT_TOT_EXONERADAS DECIMAL(12,2),
IN pMNT_TOT_GRATUITAS DECIMAL(12,2),
IN pMNT_TOT_DESC_GLOBAL DECIMAL(12,2),
IN pMNT_TOT_IGV DECIMAL(12,2),
IN pMNT_TOT_IGV_ISC DECIMAL(12,2),
IN pMNT_TOT_BASE_IMPONIBLE DECIMAL(12,2),
IN pMNT_TOT_PERCEPCION DECIMAL(12,2),
IN pMNT_TOT_A_PERCIBIR DECIMAL(12,2),
IN pMNT_TOT DECIMAL(12,2),
IN pCOD_TIP_NC_ND_REF char(2),
IN pTXT_SERIE_REF char(4),
IN pTXT_CORRELATIVO_CPE_REF varchar(8),
IN pCOD_CPE_REF char(2),
IN pFEC_EMIS_REF datetime,
IN pTXT_SUSTENTO varchar(50),
in pCOD_OPERACION char(2),

in pPORCENTAJE_DSCTO varchar(5), 
in pMNT_ANTICIPO decimal(12,2), 
in pMNT_OTROS_CARGOS decimal(12,2),
in pTIPO_PERCEPCION char(2), 
in pPORCENTAJE_PERCEPCION varchar(5), 
in pTIPO_CAMBIO decimal(12,2),
in pTXT_OBSERV varchar(150),
in pFLAG_ENVIO_AUTOMATICO char(1),
in pDATO_EXTRA_1 varchar(50),
in pDATO_EXTRA_2 varchar(50),
in pDATO_EXTRA_3 varchar(50),
in pDATO_EXTRA_4 varchar(50),
out num_cpe int(11),
out resultado int,
out mensaje varchar(100)
)
BEGIN
                               
    
    declare pESTAD_ITEM char(1);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
    
      SHOW ERRORS LIMIT 1;                
      ROLLBACK;
    END; 
    

    select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS
    AND COD_IDEN_CB <> 'C';
    -- select CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS
    -- AND COD_IDEN_CB <> 'C' into mensaje;
    if resultado then
    set mensaje = 'Serie-correlativo ya existe';
    set num_cpe = 0;
    select resultado, mensaje, num_cpe;
    else
    -- start transaction;
    
    if(pCOD_CPE_REF = '01') then
		set pESTAD_ITEM = '0';
    else
		set pESTAD_ITEM = '1';
    end if;
    
                insert into tbl_cpe_cabecera_inter(FEC_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO, 
                    COD_TIP_CPE,COD_MND,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS, NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS, COD_UBI_EMIS,TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,
                    NUM_IDEN_RECP,COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP ,TXT_CORREO_ADQUIRIENTE, FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS, 
                    MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,
                    MNT_TOT_A_PERCIBIR ,MNT_TOT,TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_SERIE_REF,TXT_CORRELATIVO_CPE_REF,COD_CPE_REF,FEC_EMIS_REF,TXT_SUSTENTO,COD_IDEN_CB,COD_IDEN_RD, 
                    COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,
                    
                    PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
					PORCENTAJE_PERCEPCION, TIPO_CAMBIO, OBSERVACIONES, ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
                    DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4,
					GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
					GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
					GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
					GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
					GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
					GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
					GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
					GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
                    
                    MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR,
					PESOBRUTO_EXPOR, PESONETO_EXPOR, VOLUMEN_EXPOR, FEC_VENCI,
					
					MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
					TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
                    ESTAD_ITEM)
                    
    values(pFEC_EMIS,pTXT_SERIE,pTXT_CORRELATIVO,'03','101',pCOD_TIP_ESCENARIO,pCOD_TIP_CPE,pCOD_MND,pTXT_PLACA,pCOD_CLIENTE_EMIS, pNUM_RUC_EMIS, pNOM_RZN_SOC_EMIS, pCOD_TIP_NIF_EMIS, pCOD_LOC_EMIS,
		   pCOD_UBI_EMIS, pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,
		   pNUM_IDEN_RECP,pCOD_TIP_NIF_RECP,pNOM_RZN_SOC_RECP,pTXT_DMCL_FISC_RECEP,
           pTXT_CORREO_ADQUIRIENTE,NOW(),'0','0','0',pMNT_TOT_GRAVADAS,pMNT_TOT_INAFECTAS,pMNT_TOT_EXONERADAS,pMNT_TOT_GRATUITAS,pMNT_TOT_DESC_GLOBAL,pMNT_TOT_IGV,pMNT_TOT_IGV_ISC,pMNT_TOT_BASE_IMPONIBLE,
           pMNT_TOT_PERCEPCION,pMNT_TOT_A_PERCIBIR,pMNT_TOT,'',pCOD_TIP_NC_ND_REF,pTXT_SERIE_REF,
           pTXT_CORRELATIVO_CPE_REF,pCOD_CPE_REF,pFEC_EMIS_REF,pTXT_SUSTENTO,'','','','0','1', pCOD_OPERACION,
           pPORCENTAJE_DSCTO, pMNT_ANTICIPO, pMNT_OTROS_CARGOS, pTIPO_PERCEPCION,
		   pPORCENTAJE_PERCEPCION, pTIPO_CAMBIO, pTXT_OBSERV,'','', pFLAG_ENVIO_AUTOMATICO,
           pDATO_EXTRA_1, pDATO_EXTRA_2, pDATO_EXTRA_3, pDATO_EXTRA_4,
           '','','','','','','','','','','','','','','','','','','','','','',0.00,'',
           
           '','','','','','',0.00,0.00,0.00,null,
		   0.00,'','','','','',
		   '','','',
           
           pESTAD_ITEM);
           set num_cpe = LAST_INSERT_ID(); 
		   set mensaje = 'Se ingreso correctamente';
           select resultado, mensaje, num_cpe;
    -- commit;
    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_NOTA_CREDITO_DEBITO_UBL2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_NOTA_CREDITO_DEBITO_UBL2_1`(
IN pFEC_EMIS DATETIME,
IN pHORA_EMIS VARCHAR(10),
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(8), 
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_MND char(3),
IN pCOD_TIP_ESCENARIO char(2),
IN pTXT_PLACA varchar(10),
IN pCOD_CLIENTE_EMIS CHAR(4),

IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pCOD_TIP_NIF_EMIS char(1),
IN pCOD_LOC_EMIS varchar(3),

IN pCOD_UBI_EMIS varchar(6),
IN pTXT_DMCL_FISC_EMIS varchar(200),
IN pTXT_URB_EMIS varchar(25),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),

IN pNUM_IDEN_RECP VARCHAR(11),
IN pCOD_TIP_NIF_RECP CHAR(1),
IN pNOM_RZN_SOC_RECP VARCHAR(100),
IN pTXT_DMCL_FISC_RECEP VARCHAR(200),

IN pTXT_CORREO_ADQUIRIENTE varchar(120),
IN pMNT_TOT_GRAVADAS DECIMAL(12,2),
IN pMNT_TOT_INAFECTAS DECIMAL(12,2),
IN pMNT_TOT_EXONERADAS DECIMAL(12,2),
IN pMNT_TOT_GRATUITAS DECIMAL(12,2),
IN pMNT_TOT_DESC_GLOBAL DECIMAL(12,2),
IN pMNT_TOT_IGV DECIMAL(12,2),
IN pMNT_TOT_IGV_ISC DECIMAL(12,2),
IN pMNT_TOT_ICBPER DECIMAL(12,2),
IN pMNT_TOT_BASE_IMPONIBLE DECIMAL(12,2),
IN pMNT_TOT_PERCEPCION DECIMAL(12,2),
IN pMNT_TOT_A_PERCIBIR DECIMAL(12,2),
IN pMNT_TOT DECIMAL(12,2),
IN pCOD_TIP_NC_ND_REF char(2),
IN pTXT_SERIE_REF char(4),
IN pTXT_CORRELATIVO_CPE_REF varchar(8),
IN pCOD_CPE_REF char(2),
IN pFEC_EMIS_REF datetime,
IN pTXT_SUSTENTO varchar(50),
in pCOD_OPERACION varchar(4),

in pPORCENTAJE_DSCTO varchar(5), 
in pMNT_ANTICIPO decimal(12,2), 
in pMNT_OTROS_CARGOS decimal(12,2),
in pTIPO_PERCEPCION char(2), 
in pPORCENTAJE_PERCEPCION varchar(5), 
in pTIPO_CAMBIO decimal(12,2),
in pTXT_OBSERV varchar(150),
in pFLAG_ENVIO_AUTOMATICO char(1),
in pDATO_EXTRA_1 varchar(50),
in pDATO_EXTRA_2 varchar(50),
in pDATO_EXTRA_3 varchar(50),
in pDATO_EXTRA_4 varchar(50),

in pCOD_TIP_FRMPGO int(3),
in pMNTO_CRDT_TTAL decimal(12,2),

out num_cpe int(11),
out resultado int,
out mensaje varchar(100)
)
BEGIN

declare pESTAD_ITEM char(1);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
    
      SHOW ERRORS LIMIT 1;                
      ROLLBACK;
    END; 
    

    select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS
    AND COD_IDEN_CB <> 'C';

    if resultado then
    set mensaje = 'Serie-correlativo ya existe';
    set num_cpe = 0;
    select resultado, mensaje, num_cpe;
    else
    
    if(pCOD_CPE_REF = '01') then
		set pESTAD_ITEM = '0';
    else
		set pESTAD_ITEM = '1';
    end if;
    
                insert into tbl_cpe_cabecera_inter(FEC_EMIS,HORA_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO, 
                    COD_TIP_CPE,COD_MND,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS, NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS, COD_UBI_EMIS,TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,
                    NUM_IDEN_RECP,COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP ,TXT_CORREO_ADQUIRIENTE, FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS, 
                    MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_ICBPER,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,
                    MNT_TOT_A_PERCIBIR ,MNT_TOT,TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_SERIE_REF,TXT_CORRELATIVO_CPE_REF,COD_CPE_REF,FEC_EMIS_REF,TXT_SUSTENTO,COD_IDEN_CB,COD_IDEN_RD, 
                    COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,
                    
                    PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
					PORCENTAJE_PERCEPCION, TIPO_CAMBIO, OBSERVACIONES, ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
                    DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4,
					GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
					GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
					GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
					GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
					GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
					GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
					GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
					GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
                    
                    MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR,
					PESOBRUTO_EXPOR, PESONETO_EXPOR, VOLUMEN_EXPOR, FEC_VENCI,
					
					MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
					TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
                    ESTAD_ITEM, COD_TIP_FRMPGO, MNTO_CRDT_TTAL)
                    
    values(pFEC_EMIS,pHORA_EMIS,pTXT_SERIE,pTXT_CORRELATIVO,'03','101',pCOD_TIP_ESCENARIO,pCOD_TIP_CPE,pCOD_MND,pTXT_PLACA,pCOD_CLIENTE_EMIS, pNUM_RUC_EMIS, pNOM_RZN_SOC_EMIS, pCOD_TIP_NIF_EMIS, pCOD_LOC_EMIS,
		   pCOD_UBI_EMIS, pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,
		   pNUM_IDEN_RECP,pCOD_TIP_NIF_RECP,pNOM_RZN_SOC_RECP,pTXT_DMCL_FISC_RECEP,
           pTXT_CORREO_ADQUIRIENTE,NOW(),'0','0','0',pMNT_TOT_GRAVADAS,pMNT_TOT_INAFECTAS,pMNT_TOT_EXONERADAS,pMNT_TOT_GRATUITAS,pMNT_TOT_DESC_GLOBAL,pMNT_TOT_IGV,pMNT_TOT_IGV_ISC,pMNT_TOT_ICBPER,pMNT_TOT_BASE_IMPONIBLE,
           pMNT_TOT_PERCEPCION,pMNT_TOT_A_PERCIBIR,pMNT_TOT,'',pCOD_TIP_NC_ND_REF,pTXT_SERIE_REF,
           pTXT_CORRELATIVO_CPE_REF,pCOD_CPE_REF,pFEC_EMIS_REF,pTXT_SUSTENTO,'','','','0','1', pCOD_OPERACION,
           pPORCENTAJE_DSCTO, pMNT_ANTICIPO, pMNT_OTROS_CARGOS, pTIPO_PERCEPCION,
		   pPORCENTAJE_PERCEPCION, pTIPO_CAMBIO, pTXT_OBSERV,'','', pFLAG_ENVIO_AUTOMATICO,
           pDATO_EXTRA_1, pDATO_EXTRA_2, pDATO_EXTRA_3, pDATO_EXTRA_4,
           '','','','','','','','','','','','','','','','','','','','','','',0.00,'',
           
           '','','','','','',0.00,0.00,0.00,null,
		   0.00,'','','','','',
		   '','','',
           
           pESTAD_ITEM, pCOD_TIP_FRMPGO, pMNTO_CRDT_TTAL);
           set num_cpe = LAST_INSERT_ID(); 
		   set mensaje = 'Se ingreso correctamente';
           select resultado, mensaje, num_cpe;

    end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERTAR_RETENCION2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERTAR_RETENCION2_1`(
pRETENCION_CODIGO varchar(6),
pRETENCION_FACTOR varchar(10),
pRETENCION_BASE decimal(12,2),
pRETENCION_MONTO decimal(12,2),
pNUM_CPE_INTERMEDIA int
)
BEGIN

	insert into tbl_retenciones values(null, pRETENCION_CODIGO, pRETENCION_FACTOR, pRETENCION_BASE, pRETENCION_MONTO, pNUM_CPE_INTERMEDIA);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERT_BUCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERT_BUCLE`(
in cant_datos int)
BEGIN

	declare i int;
    declare i_tot int;
    set i = (select count(*) from tbl_cpe_cabecera_inter) + 1;
    set i_tot = i + cant_datos;
    
    while (i<i_tot) do
		start transaction;
		INSERT INTO tbl_cpe_cabecera_inter(FEC_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO,TXT_PLACA,COD_CLIENTE_EMIS,NUM_IDEN_RECP,
		COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP,TXT_CORREO_ADQUIRIENTE,FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
		MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,
		TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,COD_IDEN_CB,
		COD_IDEN_RD,COD_IDEN_COM_BAJA)
    
		values('2017-06-24','FF11',lpad(i,8,'0'),'01','PEN','02','101','1','','1','20123654789','6',
		'GyM','AV LARCO','',NOW(),'0','0',15.00,0.00,0.00,0.00,1.00,
		3.00,0.00,0.00,0.00,0.00,17.00,
		'','','','','','','','','');
        
        set i = i+1;
        commit;
     end while;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERT_DATOS_BOLETA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERT_DATOS_BOLETA`(
IN DATOS INT,
IN pFEC_EMIS datetime,
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(12),
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_CLIENTE_EMIS char(2),
IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pTXT_DMCL_FISC_EMIS varchar(250),
IN pTXT_URB_EMIS varchar(30),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),
IN pCORRELATIVO INT(11)
)
BEGIN

    DECLARE i int;
    DECLARE i_tot int;
    DECLARE result int;
    
    declare resultado int;
    declare mensaje varchar(100);
    
    select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;
    if resultado then
		set mensaje = 'Serie-correlativo ya existe';
		select resultado,  mensaje;
    else
    set result = pCORRELATIVO;
    set i = (select count(*)  from tbl_cpe_cabecera_inter 
			 where TXT_SERIE = pTXT_SERIE
             AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS and COD_IDEN_CB <> 'C') + 1 ;
    set i_tot = i + DATOS;
    
    repeat
	    start transaction;
		INSERT INTO tbl_cpe_cabecera_inter(FEC_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS, 
        NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_UBI_EMIS, TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,NUM_IDEN_RECP,COD_TIP_NIF_RECP,NOM_RZN_SOC_RECP,
        TXT_DMCL_FISC_RECEP,TXT_CORREO_ADQUIRIENTE, FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS,MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
		MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,
		TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,COD_IDEN_CB,
		COD_IDEN_RD,COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,
        PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
		PORCENTAJE_PERCEPCION, TIPO_CAMBIO, TXT_CONDICION_PAGO, FLAG_PAGADO, OBSERVACIONES,
		ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
		GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
		GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
		GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
		GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
		GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
		GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
		GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
		GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED)
    
		values(pFEC_EMIS,pTXT_SERIE,lpad(result,8,'0'),pCOD_TIP_CPE,'PEN','03','101','01','',pCOD_CLIENTE_EMIS,pNUM_RUC_EMIS,
        pNOM_RZN_SOC_EMIS,'6','150122',
        pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,'-','-',
		'-','-','',NOW(),'0','0','0',3.20,0.00,0.00,0.00,0.00,
		0.58,0.00,0.00,0.00,0.00,3.78,
		'','','','','','','','','','0','2','01',
        '',0.00,0.00,'','',0.00,'10 DIAS','0','PRUEBA CON BD INTERMEDIA','','','0',
        '','','','','','','','','','','','','','','','','','','','','','',0.00,'');
        set i = i + 1;
        set result = result + 1;
        commit;
        
	until i >= i_tot
    end repeat;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERT_DATOS_FAC_BOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERT_DATOS_FAC_BOL`(
IN DATOS INT,
IN pFEC_EMIS datetime,
IN pTXT_SERIE CHAR(4),
IN pTXT_CORRELATIVO VARCHAR(12),
IN pCOD_TIP_CPE CHAR(2),
IN pCOD_CLIENTE_EMIS char(2),
IN pNUM_RUC_EMIS varchar(11),
IN pNOM_RZN_SOC_EMIS varchar(100),
IN pTXT_DMCL_FISC_EMIS varchar(250),
IN pTXT_URB_EMIS varchar(30),
IN pTXT_PROV_EMIS varchar(30),
IN pTXT_DPTO_EMIS varchar(30),
IN pTXT_DISTR_EMIS varchar(30),
IN pCORRELATIVO INT(11)
)
BEGIN

	declare pESTAD_ITEM char(1);
    DECLARE i int;
    DECLARE i_tot int;
    DECLARE result int;
    
    declare resultado int;
    declare mensaje varchar(100);
    
    select count(*) into resultado from tbl_cpe_cabecera_inter where CONCAT(TXT_SERIE,'', TXT_CORRELATIVO) = CONCAT(pTXT_SERIE,'', pTXT_CORRELATIVO) AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS
	and COD_IDEN_CB <> 'C';
    if resultado then
		set mensaje = 'Serie-correlativo ya existe';
		select resultado,  mensaje;
    else
    set result = pCORRELATIVO;
    set i = (select count(*)  from tbl_cpe_cabecera_inter 
			 where TXT_SERIE = pTXT_SERIE 
             AND COD_TIP_CPE = pCOD_TIP_CPE AND COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS and COD_IDEN_CB <> 'C') + 1;
    set i_tot = i + DATOS;
    
    if(pCOD_TIP_CPE = '01') then
		set pESTAD_ITEM = '0';
    else
		set pESTAD_ITEM = '1';
    end if;
    
    repeat
	    start transaction;
		INSERT INTO tbl_cpe_cabecera_inter(FEC_EMIS,TXT_SERIE,TXT_CORRELATIVO,COD_TIP_CPE,COD_MND,COD_ESTADO_DOC,COD_ESTADO_SUNAT,COD_TIP_ESCENARIO,TXT_PLACA,COD_CLIENTE_EMIS, NUM_RUC_EMIS, 
        NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_UBI_EMIS, TXT_DMCL_FISC_EMIS,TXT_URB_EMIS,TXT_PROV_EMIS,TXT_DPTO_EMIS,TXT_DISTR_EMIS,NUM_IDEN_RECP,COD_TIP_NIF_RECP,
        NOM_RZN_SOC_RECP,TXT_DMCL_FISC_RECEP,TXT_CORREO_ADQUIRIENTE,FEC_RECP_DOC1,FLAG_NUM_INT,FLAG_CORREO,FLAG_ENVIO_BOLETAS,MNT_TOT_GRAVADAS,MNT_TOT_INAFECTAS,MNT_TOT_EXONERADAS,MNT_TOT_GRATUITAS,
		MNT_TOT_DESC_GLOBAL,MNT_TOT_IGV,MNT_TOT_IGV_ISC,MNT_TOT_BASE_IMPONIBLE,MNT_TOT_PERCEPCION,MNT_TOT_A_PERCIBIR,MNT_TOT,
		TXT_DESCR_MOTIVO_BAJA,COD_TIP_NC_ND_REF,TXT_CORRELATIVO_CPE_REF,TXT_SERIE_REF,COD_CPE_REF,TXT_SUSTENTO,COD_IDEN_CB,
		COD_IDEN_RD,COD_IDEN_COM_BAJA,TXT_RESP,TXT_FLAGCARGA, COD_OPERACION,        
        PORCENTAJE_DSCTO, MNT_ANTICIPO, MNT_OTROS_CARGOS, TIPO_PERCEPCION,
		PORCENTAJE_PERCEPCION, TIPO_CAMBIO, TXT_CONDICION_PAGO, FLAG_PAGADO, OBSERVACIONES,
		ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,
        DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4,
        
        MARCA_EXPOR, ORIGEN_EXPOR, DESPACHO_EXPOR, SOLDTO_EXPOR, SHIITO_EXPOR, NUMEROCAJAS_EXPOR,
		PESOBRUTO_EXPOR , PESONETO_EXPOR, VOLUMEN_EXPOR,
        
        FEC_VENCI, MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, 
        INFOS_DETRAC, TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
        
		GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB,
		GUIA_TXT_PROV, GUIA_TXT_DPTO, GUIA_TXT_DISTR,
		GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA,
		GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA,
		GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, GUIA_TXT_PLACA_AUTO_TRNSP,
		GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP,
		GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP,
		GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, GUIA_COD_UNID_MED,
        ESTAD_ITEM)
    
		values(pFEC_EMIS,pTXT_SERIE,lpad(result,8,'0'),pCOD_TIP_CPE,'PEN','03','101','01','',pCOD_CLIENTE_EMIS,pNUM_RUC_EMIS,
        pNOM_RZN_SOC_EMIS,'6','150122',
        pTXT_DMCL_FISC_EMIS,pTXT_URB_EMIS,pTXT_PROV_EMIS,pTXT_DPTO_EMIS,pTXT_DISTR_EMIS,'20600184718','6',
		'IAQUAJET STORE S.A.C.','CAL.EL TUMI MZA. G LOTE. 18, CHORRILLOS','',NOW(),'0','0','0',1245.68,0.00,0.00,0.00,0.00,
		224.22,0.00,0.00,0.00,0.00,1469.90,
		'','','','','','','','','','0','2','01',
        '',6.08,0.00,'','',0.00,'10 DIAS','0','PRUEBA CON BD INTERMEDIA','oc 22-785','001-2856','0',
        'dato 1','dato 2','dato 3','dato 4',
        
        'rtghy','Peru','dfd345h','miami','ffgt','',25.40,25.40,9.00,
        
        '2018-03-31',7.22,'4','Servicio de Transporte','19015896654785','T',
        'D1;D2;D3;D4','F100',lpad(result,8,'0'),'02',
        
        '','','','','','','','',
        '','','','','','','','','','',
        '','','','',0.00,'',
        pESTAD_ITEM);
        set i = i + 1;
        set result = result + 1;
        commit;
        
	until i >= i_tot
    end repeat;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERT_DET_FAC_BOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERT_DET_FAC_BOL`(
IN cantidad int,
IN pCOD_CLIENTE_EMIS char(2)
)
BEGIN

    declare i_det int;
    declare i_tot_det int;
    declare i int default 1;
    declare result int;
    
    declare done int default 0;
    declare num_cpe_inter int;
    declare num_cpe_det int;
    
    declare cur_det cursor for select cpe.NUM_CPE_INTERMEDIA from tbl_cpe_cabecera_inter as cpe
	left join tbl_cpe_det_cabecera_inter as detcpe
	on cpe.NUM_CPE_INTERMEDIA = detcpe.NUM_CPE_INTERMEDIA
	where cpe.COD_IDEN_CB <> 'C' AND cpe.COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS and cpe.NUM_CPE_INTERMEDIA not in(select NUM_CPE_INTERMEDIA from tbl_cpe_det_cabecera_inter where COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS);
    
    DECLARE continue handler for sqlstate '02000' set done = 1; 
    
    open cur_det;
    
    set i_det = (select count(distinct cpe.NUM_CPE_INTERMEDIA) from tbl_cpe_cabecera_inter as cpe
				 left join tbl_cpe_det_cabecera_inter as detcpe
				 on cpe.NUM_CPE_INTERMEDIA = detcpe.NUM_CPE_INTERMEDIA
				 where cpe.COD_IDEN_CB <> 'C' AND cpe.COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS and cpe.NUM_CPE_INTERMEDIA not in(select NUM_CPE_INTERMEDIA from tbl_cpe_det_cabecera_inter));
    set i_tot_det = i_det + cantidad;
    
    
    repeat
		fetch cur_det into num_cpe_inter;
		if not done then
		repeat
			start transaction;
			insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
			PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
			NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS,PORCENTAJE_ISC, DATO_EXTRA_1, DATO_EXTRA_2, IMPORTE_TOTAL_ITEM)
			VALUES(i,'NIU',1.00,1245.68,'10',1469.9024,
			0.00,224.22,concat('Producto ', i),'010001',1245.68,'',0.00,num_cpe_inter,pCOD_CLIENTE_EMIS,'','dato 1','dato 2', 1469.90);
            set i = i + 1;
            commit;
		until i > 1
        end repeat;  
        end if;	
        set i = 1;
	until done    
    end repeat;
    
    close cur_det;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SEE_ITC_INSERT_DET_FAC_BOL_DE_UNO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SEE_ITC_INSERT_DET_FAC_BOL_DE_UNO`(
IN CANTIDAD INT)
BEGIN

declare i_det int;
    declare i_tot_det int;
    declare i int default 1;
    declare result int;
    
    set i_det = (select count(DISTINCT NUM_CPE_INTERMEDIA) from tbl_cpe_cabecera_inter);
    set i_tot_det = i_det + cantidad;
    
    
    repeat
                               repeat
                                               start transaction;
                                               insert into tbl_cpe_det_cabecera_inter(NUM_LIN_ITEM,COD_UNID_ITEM,CANT_UNID_ITEM,VAL_VTA_ITEM,COD_TIP_AFECT_IGV_ITEM,
                               PRC_VTA_UNIT_ITEM,MNT_DSCTO_ITEM,MNT_IGV_ITEM,TXT_DESCR_ITEM,COD_ITEM,VAL_UNIT_ITEM,COD_TIP_SIST_ISC,MNT_ISC_ITEM,
                                               NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS)
                                               VALUES(i,'NIU',1.00,3.20,'10',3.20,
                                               0.00,0.58,'PRESTOBARBA 101','010001',3.20,'01',0.00,i_det,'1');
            set i = i + 1;
            commit;
                               until i > 3
        end repeat;
        
        set i_det = i_det + 1;
        set i = 1;
                until i_det >= i_tot_det    
    end repeat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizarEstados_EnvioPortal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_actualizarEstados_EnvioPortal`(
in pCOD_EST_DOC char(2),
in pCOD_CLIENTE_EMIS char(4),
in pNUM_CPE_INTER int(11)
)
BEGIN

	Update tbl_cpe_cabecera_inter set COD_ESTADO_DOC = pCOD_EST_DOC where 
    NUM_CPE_INTERMEDIA = pNUM_CPE_INTER and COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizarEstados_RespSunat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_actualizarEstados_RespSunat`(
in pFECHA_ENVIO_SUNAT datetime,
in pTICKET_SUNAT varchar(50),
in pFECHA_RECP_SUNAT datetime,
in pFEC_GENE_DOC_SUNAT datetime,
in pCOD_RPTA_ENVIO_SUNAT varchar(10),
in pCOD_ESTADO_SUNAT char(3),
in pCOD_ESTADO_DOC char(2),
in pFLAG_NUM_INT char(1),
in pFLAG_CORREO char(1),
in pFEC_RECP_DOC2 datetime,
in pTXT_RESP char(2),
in pNUM_CPE_INTERMEDIA int(11),
in pCOD_CLIENTE_EMIS char(4)
)
BEGIN

       UPDATE tbl_cpe_cabecera_inter
       SET FECHA_ENVIO_SUNAT =pFECHA_ENVIO_SUNAT, TICKET_ID_RECEP_SUNAT = pTICKET_SUNAT,
       FECHA_RECP_SUNAT = pFECHA_RECP_SUNAT, FEC_GENE_DOC_SUNAT = pFEC_GENE_DOC_SUNAT,
       COD_RPTA_ENVIO_SUNAT = pCOD_RPTA_ENVIO_SUNAT, COD_ESTADO_SUNAT = pCOD_ESTADO_SUNAT,
       COD_ESTADO_DOC = pCOD_ESTADO_DOC, FLAG_NUM_INT = pFLAG_NUM_INT,
       FLAG_CORREO = pFLAG_CORREO, FEC_RECP_DOC2 = pFEC_RECP_DOC2, TXT_RESP = pTXT_RESP
       WHERE NUM_CPE_INTERMEDIA = pNUM_CPE_INTERMEDIA and COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizarEstados_RespSunat_Retencion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_actualizarEstados_RespSunat_Retencion`(
in pFECHA_ENVIO_SUNAT datetime,
in pTICKET_SUNAT varchar(50),
in pFECHA_RECP_SUNAT datetime,
in pFEC_GENE_DOC_SUNAT datetime,
in pCOD_RPTA_ENVIO_SUNAT varchar(10),
in pCOD_ESTADO_SUNAT char(3),
in pCOD_ESTADO_DOC char(2),
in pFLAG_NUM_INT char(1),
-- in pFLAG_CORREO char(1),
in pFEC_RECP_DOC2 datetime,
in pTXT_RESP char(2),
in pNUM_CPE_INTERMEDIA int(11),
in pCOD_CLIENTE_EMIS char(1)
)
BEGIN

	   UPDATE tbl_cpe_cabecera_retencion_inter
       SET FECHA_ENVIO_SUNAT =pFECHA_ENVIO_SUNAT, TICKET_ID_RECEP_SUNAT = pTICKET_SUNAT,
       FECHA_RECP_SUNAT = pFECHA_RECP_SUNAT, FEC_GENE_DOC_SUNAT = pFEC_GENE_DOC_SUNAT,
       COD_RPTA_ENVIO_SUNAT = pCOD_RPTA_ENVIO_SUNAT, COD_ESTADO_SUNAT = pCOD_ESTADO_SUNAT,
       COD_ESTADO_DOC = pCOD_ESTADO_DOC, FLAG_NUM_INT = pFLAG_NUM_INT,
       -- FLAG_CORREO = pFLAG_CORREO, 
       FEC_RECP_DOC2 = pFEC_RECP_DOC2, TXT_RESP = pTXT_RESP
       WHERE NUM_CPE_INTERMEDIA = pNUM_CPE_INTERMEDIA and COD_CLIENTE_EMIS = pCOD_CLIENTE_EMIS;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizarFlag_EnvioAlaIntermedia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_actualizarFlag_EnvioAlaIntermedia`(
in pNUM_CPE_INTERMEDIA int(11)
)
BEGIN

    update tbl_cpe_cabecera_inter set TXT_FLAGCARGA ='2' where NUM_CPE_INTERMEDIA = pNUM_CPE_INTERMEDIA;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_FLAGCARGA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_ACTUALIZAR_FLAGCARGA`(in pNumcpeIntermedia int(11))
BEGIN

    update tbl_cpe_cabecera_inter set TXT_FLAGCARGA='3', TXT_RESP='1', COD_ESTADO_DOC='02'
    where NUM_CPE_INTERMEDIA = pNumcpeIntermedia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_ANTICIPO_INTER_UBL_2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_ANTICIPO_INTER_UBL_2_1`(in pnumcpe int)
BEGIN

	 declare done int default 0;

     select TXT_SERIE, TXT_CORRELATIVO, COD_AFECTAC_IGV, 
     MONTO, COD_REL_ATRI, NUM_CPE_INTERMEDIA
     from tbl_anticipo_inter 
     where NUM_CPE_INTERMEDIA= pnumcpe;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_CABECERA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_CABECERA`(in pcliente char(4))
BEGIN
   declare done int default 0;

			select NUM_CPE_INTERMEDIA, COD_TIP_CPE, COD_MND, COD_ESTADO_DOC, COD_ESTADO_SUNAT, 			
			COD_ERROR_SUNAT, COD_CLIENTE_EMIS, NUM_RUC_EMIS, NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS,
			COD_UBI_EMIS, TXT_DMCL_FISC_EMIS, TXT_URB_EMIS, TXT_PROV_EMIS, TXT_DPTO_EMIS,
			TXT_DISTR_EMIS, TXT_SERIE, TXT_CORRELATIVO, COD_TIP_ESCENARIO, TXT_PLACA, NUM_IDEN_RECP, 
			COD_TIP_NIF_RECP, NOM_RZN_SOC_RECP, TXT_DMCL_FISC_RECEP, PORCENTAJE_DSCTO, MNT_ANTICIPO,
            TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
            MNT_TOT_GRAVADAS, MNT_TOT_INAFECTAS, MNT_TOT_EXONERADAS, MNT_TOT_GRATUITAS, MNT_OTROS_CARGOS, 			
            MNT_TOT_DESC_GLOBAL, MNT_TOT_IGV, MNT_TOT_IGV_ISC, TIPO_PERCEPCION, 			
			MNT_TOT_BASE_IMPONIBLE, PORCENTAJE_PERCEPCION, MNT_TOT_PERCEPCION, MNT_TOT_A_PERCIBIR, MNT_TOT,
            
            MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
				
            TXT_DESCR_MOTIVO_BAJA, COD_TIP_NC_ND_REF, TXT_CORRELATIVO_CPE_REF, TXT_SERIE_REF, COD_CPE_REF, FEC_EMIS_REF, TXT_SUSTENTO,			
			TICKET_ID_RECEP_SUNAT, COD_RPTA_ENVIO_SUNAT, FECHA_ENVIO_SUNAT, FECHA_RECP_SUNAT, FEC_GENE_DOC_SUNAT, 
			FEC_EMIS, FEC_VENCI, FEC_RECP_DOC1, FLAG_NUM_INT, FLAG_ENVIO_BOLETAS, COD_IDEN_CB, COD_IDEN_RD, 
			COD_IDEN_COM_BAJA, FEC_GENER_BAJA, TXT_CORREO_ADQUIRIENTE, FLAG_CORREO, TXT_RESP, TIPO_CAMBIO, 
            TXT_CONDICION_PAGO, FLAG_PAGADO, COD_OPERACION, OBSERVACIONES, ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,			
            			
            GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB, GUIA_TXT_PROV,			
			GUIA_TXT_DPTO, GUIA_TXT_DISTR, GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA, 
			GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA, GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, 
            GUIA_TXT_PLACA_AUTO_TRNSP, GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP, 			
            GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP, GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, 			
            GUIA_COD_UNID_MED, DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4, MARCA_EXPOR , ORIGEN_EXPOR, DESPACHO_EXPOR, 
            SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR, PESOBRUTO_EXPOR, PESONETO_EXPOR, VOLUMEN_EXPOR, ESTAD_ITEM
            
            from tbl_cpe_cabecera_inter where COD_CLIENTE_EMIS = pcliente 
            and TXT_FLAGCARGA='2'   LIMIT 300;
								

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_CABECERA_UBL_2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_CABECERA_UBL_2_1`(in pcliente char(4))
BEGIN

	declare done int default 0;

			select NUM_CPE_INTERMEDIA, COD_TIP_CPE, COD_MND, COD_ESTADO_DOC, COD_ESTADO_SUNAT, 			
			COD_ERROR_SUNAT, COD_CLIENTE_EMIS, NUM_RUC_EMIS, NOM_RZN_SOC_EMIS, COD_TIP_NIF_EMIS, COD_LOC_EMIS,
			COD_UBI_EMIS, TXT_DMCL_FISC_EMIS, TXT_URB_EMIS, TXT_PROV_EMIS, TXT_DPTO_EMIS,
			TXT_DISTR_EMIS, TXT_SERIE, TXT_CORRELATIVO, COD_TIP_ESCENARIO, TXT_PLACA, NUM_IDEN_RECP, 
			COD_TIP_NIF_RECP, NOM_RZN_SOC_RECP, TXT_DMCL_FISC_RECEP, PORCENTAJE_DSCTO, MNT_ANTICIPO,
            TXT_SERIE_ANTICIPO, TXT_CORRELATIVO_ANTICIPO, TXT_COD_CPE_ANTICIPO,
            MNT_TOT_GRAVADAS, MNT_TOT_INAFECTAS, MNT_TOT_EXONERADAS, MNT_TOT_GRATUITAS, MNT_OTROS_CARGOS, 			
            MNT_TOT_DESC_GLOBAL, MNT_TOT_IGV, MNT_TOT_IGV_ISC, MNT_TOT_ICBPER,TIPO_PERCEPCION, 			
			MNT_TOT_BASE_IMPONIBLE, PORCENTAJE_PERCEPCION, MNT_TOT_PERCEPCION, MNT_TOT_A_PERCIBIR, MNT_TOT,
            
            MNT_TOT_DETRAC, PERCENT_DETRAC, DESCRIP_DETRAC, NUM_CTA_BN, TIP_DETRAC, INFOS_DETRAC,
				
            TXT_DESCR_MOTIVO_BAJA, COD_TIP_NC_ND_REF, TXT_CORRELATIVO_CPE_REF, TXT_SERIE_REF, COD_CPE_REF, FEC_EMIS_REF, TXT_SUSTENTO,			
			TICKET_ID_RECEP_SUNAT, COD_RPTA_ENVIO_SUNAT, FECHA_ENVIO_SUNAT, FECHA_RECP_SUNAT, FEC_GENE_DOC_SUNAT, 
			FEC_EMIS, HORA_EMIS, FEC_VENCI, FEC_RECP_DOC1, FLAG_NUM_INT, FLAG_ENVIO_BOLETAS, COD_IDEN_CB, COD_IDEN_RD, 
			COD_IDEN_COM_BAJA, FEC_GENER_BAJA, TXT_CORREO_ADQUIRIENTE, FLAG_CORREO, TXT_RESP, TIPO_CAMBIO, 
            TXT_CONDICION_PAGO, COD_MODO_PAGO, FLAG_PAGADO, COD_OPERACION, OBSERVACIONES, ORDEN_COMPRA, GUIA_REMISION, FLAG_ENVIO_AUTOMATICO,			
            			
            GUIA_TXT_COD_UBIG, GUIA_TXT_DMCL_FISC, GUIA_TXT_URB, GUIA_TXT_PROV,			
			GUIA_TXT_DPTO, GUIA_TXT_DISTR, GUIA_TXT_PAIS, GUIA_COD_UBIG_LLEGDA, GUIA_TXT_DMCL_FISC_LLEGDA, 
			GUIA_TXT_URB_LLEGDA, GUIA_TXT_PROV_LLEGDA, GUIA_TXT_DPTO_LLEGDA, GUIA_TXT_DISTR_LLEGDA, GUIA_TXT_PAIS_LLEGDA, 
            GUIA_TXT_PLACA_AUTO_TRNSP, GUIA_TXT_CERT_AUTO_TRNSP, GUIA_TXT_MARCA_AUTO_TRNSP, GUIA_TXT_LIC_COND_TRNSP, 			
            GUIA_TXT_RUC_TRNSP, GUIA_TXT_COD_OTR_TRNSP, GUIA_TXT_RZN_SCL_TRNSP, GUIA_TXT_COD_MOD_TRNSP, GUIA_MNT_TOTAL_BRUTO, 			
            GUIA_COD_UNID_MED, DATO_EXTRA_1, DATO_EXTRA_2, DATO_EXTRA_3, DATO_EXTRA_4, MARCA_EXPOR , ORIGEN_EXPOR, DESPACHO_EXPOR, 
            SOLDTO_EXPOR, SHIPTO_EXPOR, NUMEROCAJAS_EXPOR, PESOBRUTO_EXPOR, PESONETO_EXPOR, VOLUMEN_EXPOR, ESTAD_ITEM,
            COD_TIP_FRMPGO, MNTO_CRDT_TTAL
            
            from tbl_cpe_cabecera_inter where COD_CLIENTE_EMIS = pcliente 
            and TXT_FLAGCARGA='2'   LIMIT 300;
            
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_CREDITO_CUOTA_INTER_UBL_2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_CREDITO_CUOTA_INTER_UBL_2_1`(in pnumcpe int)
BEGIN

	 declare done int default 0;

     select NUM_CPE_INTERMEDIA, NUM_CUOTA, MNT_CRDT_CTA, 
     FCHA_CTA
     from tbl_credito_cuota_inter 
     where NUM_CPE_INTERMEDIA= pnumcpe;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_DETALLE_INTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_DETALLE_INTER`(in pnumcpe int , in pcodcliente char(4))
BEGIN
     declare done int default 0;

     select NUM_DET_CABECERA_INTER, NUM_LIN_ITEM, COD_UNID_ITEM, 
     CANT_UNID_ITEM, VAL_VTA_ITEM, COD_TIP_AFECT_IGV_ITEM, 
     PRC_VTA_UNIT_ITEM, MNT_DSCTO_ITEM, MNT_IGV_ITEM, TXT_DESCR_ITEM,
     COD_ITEM, VAL_UNIT_ITEM, COD_TIP_SIST_ISC, PORCENTAJE_ISC, MNT_ISC_ITEM, 
     NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, DATO_EXTRA_1, DATO_EXTRA_2, IMPORTE_TOTAL_ITEM 
     from tbl_cpe_det_cabecera_inter 
     where NUM_CPE_INTERMEDIA= pnumcpe and COD_CLIENTE_EMIS = pcodcliente;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_DETALLE_INTER_UBL_2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_DETALLE_INTER_UBL_2_1`(in pnumcpe int , in pcodcliente char(4))
BEGIN

	 declare done int default 0;

     select NUM_DET_CABECERA_INTER, NUM_LIN_ITEM, COD_UNID_ITEM, 
     CANT_UNID_ITEM, VAL_VTA_ITEM, COD_TIP_AFECT_IGV_ITEM, 
     PRC_VTA_UNIT_ITEM, MNT_DSCTO_ITEM, MNT_IGV_ITEM, TXT_DESCR_ITEM,
     COD_ITEM, COD_PROD_SUNAT, VAL_UNIT_ITEM, COD_TIP_SIST_ISC, PORCENTAJE_ISC, MNT_ISC_ITEM, 
     NUM_CPE_INTERMEDIA, COD_CLIENTE_EMIS, VAL_UNIT_ICBPER, CANT_ICBPER_ITEM, MNT_ICBPER_ITEM,
     DATO_EXTRA_1, DATO_EXTRA_2, IMPORTE_TOTAL_ITEM 
     from tbl_cpe_det_cabecera_inter 
     where NUM_CPE_INTERMEDIA= pnumcpe and COD_CLIENTE_EMIS = pcodcliente;
     
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CARGAR_RETENCIONES_INTER_UBL_2_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CARGAR_RETENCIONES_INTER_UBL_2_1`(in pnumcpe int)
BEGIN
	
    select RETENCION_CODIGO, RETENCION_FACTOR, RETENCION_BASE, RETENCION_MONTO
    from tbl_retenciones where NUM_CPE_INTERMEDIA = pnumcpe;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONSULTA_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CONSULTA_CLIENTE`()
BEGIN
	select cli.NUM_COD_CLIENTE AS COD_CLIENTE , cli_pa.TXT_VALOR_PARAMETRO AS USUARIO, 
    cli_pa.TXT_VALOR_PARAMETRO2 AS PASS, cli.NUM_RUC_EMIS 
    from tbl_cliente_inter as cli inner join tbl_cliente_parametros_inter as cli_pa 
	on cli.NUM_COD_CLIENTE = cli_pa.NUM_COD_CLIENTE where COD_PARAMETRO in ('023');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Consulta_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Consulta_Usuario`(
in pCOD_USUARIO varchar(30),
in pPASSWORD varchar(100)
)
BEGIN
                
    select u.COD_USUARIO,c.NUM_COD_CLIENTE, u.NUM_RUC_EMIS, c.NOM_RZN_SOC_EMIS from tbl_usuario_inter u
    inner join tbl_cliente_inter c
    on u.NUM_RUC_EMIS = c.NUM_RUC_EMIS
    where u.COD_USUARIO = pCOD_USUARIO  and u.PASSWORD = pPASSWORD and u.Flag_Estado = '1';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Obtener_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_Obtener_Usuario`(
in pCOD_USUARIO varchar(30),
in pPASSWORD varchar(100)
)
BEGIN

    SELECT COUNT(*) as contar FROM tbl_usuario_inter as u where u.COD_USUARIO = pCOD_USUARIO  
    and u.PASSWORD = pPASSWORD and u.Flag_Estado = '1';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_validaUsuario_RespSunat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_validaUsuario_RespSunat`(
in pUSUARIO varchar(100),
in pPASSWORD varchar(50)
)
BEGIN


    select count(*) as contar from tbl_cliente_inter c  
    inner join tbl_cliente_parametros_inter cp
    on c.NUM_COD_CLIENTE = cp.NUM_COD_CLIENTE
    where cp.TXT_VALOR_PARAMETRO = pUSUARIO and cp.TXT_VALOR_PARAMETRO2 = pPASSWORD;             

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 17:13:52
