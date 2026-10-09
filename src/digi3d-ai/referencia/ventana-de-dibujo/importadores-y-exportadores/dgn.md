# Archivos DGNv8
<!-- id: dgn -->

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


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Criterio para códigos | Nivel; Nivel/Célula; Nivel, color, estilo, grosor (con o sin célula); Nivel/Color; Nivel/Estilo; Nivel/Grosor; Grupo gráfico; Geographics; NGix; las mismas variantes con Número de nivel; Nivel, color/Célula; Nivel, color y célula. Por defecto, Nivel. | Atributos del elemento DGN con los que se busca su código de Digi3D.AI al leer, y que se escriben al exportar. Con las opciones de **Número de nivel**, el nivel se identifica por su número y no por su nombre. Con **Nivel, color/Célula**, el nivel se identifica por su nombre; si el elemento es una célula, basta con que coincida la célula. **Geographics** y **NGix** usan los enlaces de esos programas. |
| Archivo de plantilla | Archivo `.dgn`. Opcional. | Archivo que se usa como base al crear un archivo nuevo. Sin plantilla, el archivo nuevo se crea con los niveles y la paleta de la tabla de códigos. |
| Extraer células de | De un archivo de células de MicroStation, o de la carpeta de símbolos de Digi. Por defecto, la carpeta de símbolos. | Origen de la forma de las células. |
| Archivo de células | Archivo `.cel`. | Archivo de células que se carga si **Extraer células de** es un archivo de células. Su valor inicial es el de la opción [Archivo de células](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-bentley-microstation-v8/archivo-de-celulas.md) del cuadro de diálogo Configuración. |
| Transformar el nivel de las entidades de las células | Sí o No. Por defecto, No. | Solo al exportar: asigna a cada elemento de la célula el nivel, el color, el estilo y el grosor del código. |
| Importar paleta | Sí o No. Por defecto, Sí. | Al abrir un archivo existente, importa su paleta de colores, si la tiene. |
| Colores de las entidades | Colores del archivo DGN, o colores de la tabla de códigos activa. Por defecto, los del archivo DGN. | De dónde toman las entidades su color y su grosor al leer el archivo. |
| Importar células como | Punto o elemento complejo puntual. Por defecto, Punto. | Tipo de entidad en que se convierte cada célula al leer el archivo. |
| Incremento de registro splines | Número real. Por defecto, 1. | Distancia entre vértices al convertir las splines en polilíneas al leer. Un valor menor que 1 se toma como 1. |
| Formato desconocidos | Texto con los sustituidores `$(Nivel)`, `$(Color)`, `$(Estilo)`, `$(Grosor)` y `$(GrupoGrafico)`. Por defecto, `$(Nivel)`. | Nombre del código que se crea para los elementos sin traducción en la tabla de códigos. |
| Archivos de recursos de simbología | Rutas de archivos de recursos de MicroStation separadas por punto y coma. El último tiene más prioridad. | Archivos de recursos que se cargan al abrir el archivo. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.dgn` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
