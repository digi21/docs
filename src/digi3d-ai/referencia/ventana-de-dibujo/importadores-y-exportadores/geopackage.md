# Archivos GeoPackage
<!-- id: geopackage -->

Importador y exportador de **Archivos GeoPackage**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Capas y códigos

Las capas sin clave primaria, como las vistas, no se cargan: Digi3D.AI muestra un aviso con su nombre y carga el resto del archivo.

Si varios códigos enlazan con la misma tabla, una entidad recibe el primer código cuyas condiciones cumple todas; un campo sin valor (NULL) no cumple ninguna condición.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.gpkg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
