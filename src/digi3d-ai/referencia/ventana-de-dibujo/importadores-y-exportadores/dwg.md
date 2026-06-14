# Archivos AutoCAD DWG

Importador y exportador de **Archivos AutoCAD DWG**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.dwg <Version> <RutaArchivoPlantilla> <ImportarBloques> <RutaImportacionBloques> <ImportarBloquesComoPuntualDigi> <ImportarPaleta> <UtilizarColoresArchivoDibujo>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Versión de AutoCAD | Sí |
| 2 | Ruta del archivo plantilla | Sí |
| 3 | Importar bloques (0/1) | Sí |
| 4 | Ruta de importación de bloques | Sí |
| 5 | Importar bloques como puntual de Digi (0/1) | Sí |
| 6 | Importar la paleta (0/1) | Sí |
| 7 | Utilizar los colores del archivo de dibujo (0/1) | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.dwg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
