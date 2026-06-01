# OFF

Desactiva la visualización de uno o varios códigos.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código/os que se ocultarán en la pantalla de dibujo | Si. |

### Ejemplos

Oculta todos códigos en pantalla:

```text
OFF=*
```

Oculta todos los códigos que comiencen por 02:

```text
OFF=02*
```

Oculta únicamente los elementos cuyo código sea 020123:

```text
OFF=020123
```

## Observaciones

En el caso de que se quiera activar la visualización en la pantalla de visión estereoscópica, se pueden emplear las órdenes [OFFD](/digi3d-net/referencia/ventana-de-dibujo/ordenes/o/offd.md).

Podemos especificar el tipo de entidad a mostrar, para cada uno de los códigos: Líneas, Puntos ó Textos.

Digi3D nos permite cargar archivos de muestra de códigos o guardar uno que generemos nostros:

* Cargar de archivo...: carga un archivo de muestra de códigos previamente generado y guardado.
* Guardar en archivo...: podemos guardar mediante un nombre, la lista de códigos seleccionada para una posterior utilización. Los archivos generados estarán en formato .xml.

## Características de la orden

| Tipo de orden | [Orden interactiva](off.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

