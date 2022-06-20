:On Error exit

IF DB_ID('SanRafael') IS NOT NULL
  BEGIN
    Print 'Base de datos ya creada';
    DROP DATABASE SanRafael;
    SET NOEXEC ON
  END

/* Script encargado de crear la base de datos en el contenedor con todas las tablas y relaciones requeridas */
:r script_crear_bd.sql

/*Script encargado de modificar la relación entre Areas de produccion y recetas debido a que esta relacion se crea por default en cascada y eso crea un defecto */
:r Configuracion_Relacion_Receta_AreaProduccion.sql

/* Script con los insumos de la empresa Gastrocafé */
:r script_insumos.sql

SET NOEXEC OFF