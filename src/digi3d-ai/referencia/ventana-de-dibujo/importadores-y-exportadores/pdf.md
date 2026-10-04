# Archivos Adobe Pdf
<!-- id: pdf -->

Exportador de **Archivos Adobe Pdf**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.pdf <Tamano> <Escala> <ExplotarSimbologia> <Titulo>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Tamaño | Sí |
| 2 | Escala | Sí |
| 3 | Explotar simbología (0/1) | Sí |
| 4 | Título | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** del cuadro de diálogo que exporta a este formato. Este formato solo se puede exportar. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Tamaño del papel | **Ajustar al modelo**, las series A, RA y B, y los tamaños de papel americanos e ingleses (Letter, Legal, Ledger, Tabloid…). Por defecto, Ajustar al modelo. | Tamaño de la página. Con **Ajustar al modelo**, la página mide lo que ocupa el dibujo a la escala de impresión. |
| Escala de impresión | Número real. Por defecto, la escala de dibujo. | Escala a la que se dibujan las entidades en el papel. |
| Explotar simbología | Sí o No. Por defecto, Sí. | Con **Sí**, las líneas se dibujan con su simbología. |
| Título | Texto. | Título del documento PDF. |

Solo se exportan las entidades cuyo código tiene activada la opción de imprimir en la tabla de códigos.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.pdf` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | No |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | No |
