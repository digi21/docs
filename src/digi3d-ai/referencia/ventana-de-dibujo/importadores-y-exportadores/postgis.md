# Archivos de conexión con PostGIS

Importador y exportador de **Archivos de conexión con PostGIS**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.pg <Servidor> <Puerto> <Usuario> <Contraseña> <BaseDeDatos>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Servidor | Sí |
| 2 | Puerto | Sí |
| 3 | Usuario | Sí |
| 4 | Contraseña | Sí |
| 5 | Base de datos | Sí |


## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.pg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
