# Archivos DGNv8

Importador y exportador de **Archivos DGNv8**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.dgn <RutaArchivoPlantilla> <CriterioCodigos> <UtilizarArchivoCelulas> <ArchivoCelulas> <TransformarNivelesEntidadesQueFormanCell> <ImportarPaleta> <UtilizarColoresDGN> <ImportarCelulasComoPuntualDigi> <IncrementoRegistroSplines> <FormatoDesconocidos> <RutasArchivosRecursos>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta del archivo plantilla | Sí |
| 2 | Criterio para asignar los códigos | Sí |
| 3 | Utilizar archivo de células (0/1) | Sí |
| 4 | Archivo de células | Sí |
| 5 | Transformar niveles de las entidades que forman la célula (0/1) | Sí |
| 6 | Importar la paleta (0/1) | Sí |
| 7 | Utilizar los colores del DGN (0/1) | Sí |
| 8 | Importar células como puntual de Digi (0/1) | Sí |
| 9 | Incremento de registro de splines | Sí |
| 10 | Formato de los desconocidos | Sí |
| 11 | Rutas de los archivos de recursos | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.dgn` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
