# ON
<!-- id: on -->

Activa la visualización de uno o varios códigos en la ventana de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código/os que se mostrarán en la pantalla de dibujo | Si. |

### Ejemplos

Muestra todos los códigos en pantalla:

```text
ON=*
```

Muestra todos los códigos que comiencen por 02:

```text
ON=02*
```

Muestra los elementos cuyo código sea 020123:

```text
ON=020123
```

## Observaciones

La orden solo actúa sobre la ventana de dibujo. Para activar los códigos también en la ventana fotogramétrica, ejecuta [OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md).

Separa los códigos con espacios. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos a activar. Añade códigos con el botón _Añadir_, o selecciona una etiqueta en el desplegable para añadir los códigos que la tienen asignada.

Para activar solo algunos tipos de geometría de un código, ejecuta [ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](on.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)<br>[ON\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md)<br>[ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md)<br>[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md)<br>[ONSOLO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md) |
| Nombre interno | {536E917F-6A24-4288-B613-6B4DF30FC0DB} |

