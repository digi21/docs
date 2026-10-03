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

La orden solo actúa sobre la ventana de dibujo. Para desactivar los códigos también en la ventana fotogramétrica, ejecuta [OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md).

Separa los códigos con espacios. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos a desactivar. Añade códigos con el botón _Añadir_, o selecciona una etiqueta en el desplegable para añadir los códigos que la tienen asignada.

Para desactivar solo algunos tipos de geometría de un código, ejecuta [OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](off.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md)<br>[OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md)<br>[OFF\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md)<br>[OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md) |
| Nombre interno | {A893D97A-96A2-4862-9210-AE45F12A976F} |

