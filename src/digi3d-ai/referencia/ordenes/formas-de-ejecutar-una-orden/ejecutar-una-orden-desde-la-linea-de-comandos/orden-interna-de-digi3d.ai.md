# Orden interna de Digi3D.AI
<!-- id: orden-interna-de-digi3d.ai -->

Son las órdenes que se incorporan con Digi3D.AI. Puedes ver un listado de las órdenes incorporadas en [Órdenes](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/ordenes.md).

Introduce el nombre de la orden en la [línea de comandos](./) para ejecutar una orden interna. Por ejemplo, para ejecutar [ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md), escribe:

```
ZOOME
```

Algunas órdenes admiten parámetros. Para pasar parámetros a una orden, escribe el nombre de la orden, un signo de igual (=) y los parámetros separados por espacios:

```
MODOB=2 4 7
```

Algunas órdenes requieren un texto como parámetro. Si el texto contiene espacios, escríbelo entre comillas, como en este ejemplo:

```
EXPORTAR="c:\mis trabajos\2021001\prueba.bin"
```

## Nombre interno de la orden

Digi3D.AI se puede ejecutar en castellano y en inglés.

Los nombres de las órdenes varían en función de si el programa se está mostrando en castellano o en inglés.

Esto es así porque las órdenes tienen un nombre interno, y el programa dispone de un archivo de _alias_ que hace corresponder el nombre en un determinado idioma con el nombre interno.

Por ejemplo: la orden de tipo variable real [AA](../../../ventana-de-dibujo/variables/a/aa.md) (ángulo activo) tiene como nombre interno el siguiente: {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}.

Puedes usar el nombre interno para ejecutar una orden de Digi3D.AI. Ejecuta la siguiente orden para asignar el valor 27 grados sexagesimales al ángulo activo:

```
{55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}=27
```

El nombre interno permite, por ejemplo, asignar una orden a una tecla y ejecutarla con esa tecla independientemente del idioma configurado en el programa.
