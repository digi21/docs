# Archivos Digi de doble precisión

Importador y exportador de **Archivos Digi de doble precisión**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.bind <NombreGestorModeloDatosBaseDatos> <ConexionBBDD>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Gestor del modelo de datos de base de datos | Sí |
| 2 | Cadena de conexión a la base de datos | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bind` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
