# MDTopX
<!-- id: lot-of-points-pestana-mdtopx -->

La biblioteca de enlace dinámico (DLL) `lop_magic_surface.dll` añade dos comandos mediante
`lop_register_commands`. Los botones aparecen en la sección **MDTopX** de la pestaña **Clasificación de puntos**
(`lop.tab.classification`). La DLL proporciona textos en español para el idioma `es` y en inglés para los demás idiomas.

| Botón | Operación | Requisito del botón |
|---|---|---|
| [Nube aérea](nube-aerea.md) | Clasifica nubes de vuelo en suelo, vegetación y edificios mediante la Superficie Mágica de [MDTopX](../../../mdtopx/README.md). | Alguna nube con registro de ediciones e índices del archivo original. |
| Clasificación urbana | Recorre las nubes abiertas y solicita cargar un GeoPackage de referencia. | Alguna nube abierta. |

La página de [Nube aérea](nube-aerea.md) detalla los atributos adicionales que exige la clasificación,
los 17 parámetros y los mensajes del comando.

## Clasificación urbana

**Clasificación urbana** (`mdtopx.urban_classification`) se puede ejecutar, pero la implementación actual
no extrae elementos urbanos ni modifica puntos. El comando no tiene parámetros.

1. Abre alguna nube.
2. Pulsa **Clasificación urbana** en la sección **MDTopX** de **Clasificación de puntos**.

El comando recorre todas las nubes abiertas, incluidas las ocultas, mediante `process_tiles` en modo de solo lectura.
El recorrido no exige registro de ediciones, índices del archivo original ni atributos adicionales.
Los núcleos de las teselas tienen 1000 unidades de la nube de lado y no incluyen solape.
El cálculo actualiza el progreso y comprueba la cancelación durante las esperas previstas para una duración
de 8 segundos; ese valor no garantiza la duración total del comando.

Si `process_tiles` devuelve `LOP_OK`, el comando solicita cargar mediante `load_geopackage` este archivo
preexistente como capas de referencia:

```text
E:\Desktop\jj\Berruguete\Clasificacion2\Clasificación urbana de MOCHILA_Berrugete_pequeña_2_clas.gpkg
```

La ruta está fijada en `lop_urban_classification.cpp`; el comando no permite elegir otro archivo.
El comando no genera ese GeoPackage ni escribe un resumen propio en **Salida**.
