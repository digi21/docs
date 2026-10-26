# Actualizar los controles de calidad Python de una tabla de códigos
<!-- id: actualizar-guiones-python -->

Los controles de calidad Python de las tablas de códigos creadas para versiones anteriores de Digi3D no son compatibles con Digi3D.AI. Al abrir un archivo de dibujo con una de esas tablas, o al analizar el control de calidad, Digi3D.AI muestra un error como este:

![Error No module named 'digi3d.relations'](../../images/error-no-module-digi3d-relations.png)

```text
ModuleNotFoundError: No module named 'digi3d.relations'; 'digi3d' is not a package
```

Para resolver este error, sustituye el entorno Python de la tabla de códigos por la última versión de los [controles de calidad de Digi21](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D).

## Pasos

1. **Haz una copia de seguridad del archivo de la tabla de códigos.** Los controles nuevos no funcionan con las versiones anteriores de Digi3D: si vas a seguir usando la tabla con versiones anteriores de Digi3D, usa la copia de seguridad.
2. Abre la tabla de códigos con el [Editor de tablas de códigos](../referencia/editor-de-tablas-de-codigos/README.md).
3. Selecciona la pestaña [Entorno Python](../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md).
4. Pulsa el botón **Descargar de GitHub la última versión**, debajo del editor. El contenido de la pestaña se sustituye por la versión descargada.
5. Pulsa **Aplicar**.
6. Pulsa **Aceptar**.

![Pestaña Entorno Python con el botón Descargar de GitHub la última versión](../../images/pestana-entorno-python.png)

Al abrir de nuevo el archivo de dibujo en Digi3D.AI, los controles de calidad funcionan.

> Si habías añadido funciones propias al entorno Python de la tabla, la descarga del paso 4 borra las funciones propias. Copia tus funciones antes de pulsar el botón **Descargar de GitHub la última versión** y pégalas al final del entorno descargado una vez finalizada la descarga. Si las funciones propias usan módulos de la versión anterior (como `digi3d.relations`), tendrás que adaptar las funciones a la interfaz de programación de aplicaciones (API) descrita en la [API de Python de Digi3D.AI](../programacion/python/controles-de-calidad/README.md).

## Véase también

* [Controles de calidad](../programacion/python/controles-de-calidad/README.md)
* [Pestaña Entorno Python](../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md)
