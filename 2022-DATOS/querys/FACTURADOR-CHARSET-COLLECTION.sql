alter table tbl_adquiriente convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_almacen convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_inv_movimientos convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
 alter table tbl_grupo_user convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
  alter table tbl_guia_remision convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
   alter table tbl_guia_remision_detalle convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_salida convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_salida_detalle convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_serie convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_tipo_documento convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_tipo_movimiento convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inventario convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_log_excel_carga convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_motivo_traslado convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_opciones convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_orden_compra convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_perfil convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_perfil_opcion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_producto_unidades convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_tipo_doc_identidad convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_entrada convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_inv_entrada_detalle convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    -- LENTO alter table tbl_cpe_det_cabecera convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_tipo_doc_inventario convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
    alter table tbl_tipo_isc convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_movimiento convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_regimen_percepcion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_regimen_retencion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_ubicacion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_ubigeo convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_unidad_medida convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_unidad_peso convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_usuario convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_usuario_perfil convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_aplicacion_parametros convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_categoria convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_clase convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_codigos_detraccion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cotizacion_detalle convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cpe_cabecera_retencion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cpe_compra convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_cpe_det_cabecera_retencion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_credito_cuota convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_departamento convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_detalle_orden_compra convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_distrito convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_emisor convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_empleado convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_errores_sunat convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_familia convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_proveedor convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_provincia convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_relacion_factura_guia convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_retenciones convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_segmento convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

-- se pudo arriba, NO SALE ABAJO
alter table tbl_anticipo convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cliente_parametros convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_condicion_pago convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cotizacion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cpe convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cpe_cabecera convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_cuentas_bancarias convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_estado_doc convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_doc_rel_trib convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_estd_sunat convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_series convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_local convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_modo_pago convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_parametros convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_producto convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tbls_catalogo convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tbls_catalogo_codigo convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

alter table tbl_tipo_afectacion_igv convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_cambio convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_cuenta_banco convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_moneda convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_notas convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_tipo_operacion convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table tbl_usuario_local convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;
alter table vis_ubigeo convert to character set utf8mb4 collate utf8mb4_0900_ai_ci;

-- -- -- - - -






