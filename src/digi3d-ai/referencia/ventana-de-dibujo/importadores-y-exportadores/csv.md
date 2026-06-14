# Valores separados por comas

Importador de **Valores separados por comas**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.csv <Separador> <NombreColumnaX> <NombreColumnaY> <NombreColumnaZ>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Carácter separador de campos | Sí |
| 2 | Nombre de la columna X | Sí |
| 3 | Nombre de la columna Y | Sí |
| 4 | Nombre de la columna Z | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.csv`, `.txt` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | No |
