# Quitar clasificación
<!-- id: lot-of-points-quitar-clasificacion -->

**Quitar clasificación**, en **Algoritmos básicos** de **Clasificación de puntos**, asigna la clase 1
a los puntos procesados. El comando no necesita parámetros.
El botón requiere alguna nube con registro de ediciones e índices del archivo original.

El comando elige las nubes abiertas que cumplen esas dos condiciones, incluidas las ocultas y las remotas.
El comando escribe en **Salida** el motivo por el que omite cada nube.
El cálculo conserva los demás atributos y excluye los puntos borrados.

Una llamada que cambia clases añade un evento al historial.
Los puntos que ya pertenecían a la clase 1 no cuentan como reclasificados.
La salida indica «Quitar clasificación: *n* puntos pasan a la clase 1 en *k* nubes.».
Pulsa **Deshacer** en la barra de título para revertir el evento confirmado.

| Característica | Valor |
|---|---|
| Lado del núcleo | 1000 unidades de la nube. |
| Ancho del solape | 0 unidades de la nube. |
| Teselas simultáneas | Sí. |
| Atributos adicionales requeridos | Ninguno. |

El identificador es `lop.example.remove_classification`.
El código está en `Sdk/example/remove_classification.c`; la selección de nubes está en
`Sdk/example/editable_clouds.c`.
