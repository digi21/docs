# Archivos Digi

Importador y exportador de **Archivos Digi**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.bin <Precision> <OrigenGlobal.x> <OrigenGlobal.y> <OrigenGlobal.z>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Precisión | Sí |
| 2 | Origen global X | Sí |
| 3 | Origen global Y | Sí |
| 4 | Origen global Z | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bin`, `.bik` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
