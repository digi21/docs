# OFF\_EXPRESIÓN\_PYTHON
<!-- id: off-expresion-python -->

Oculta las geometrías para las que una expresión Python devuelve verdadero. La orden evalúa la expresión con cada geometría de todos los archivos de dibujo cargados y marca como ocultas las que la cumplen.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Expresión Python. Todo el texto que sigue al signo `=` forma la expresión. Se ignoran los espacios del principio y del final.<br>o<br>Nombres de [selecciones](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) de la tabla de códigos, cada uno precedido de `#` y separados por espacios. | Sí. Sin parámetros, la orden muestra el cuadro de diálogo **Expresión Python**, descrito en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

La variable `g`, los atributos (`g.codes[0].attributes`), el valor que debe devolver la expresión, los fragmentos de código y los errores se explican en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). Las reglas de los nombres con `#` son las mismas que en esa orden.

### Ejemplos

Para ocultar las geometrías que tienen exactamente 3 vértices:

```text
OFF_EXPRESION_PYTHON=len(g) == 3
```

Para ocultar los polígonos de más de 1000 unidades cuadradas:

```text
OFF_EXPRESION_PYTHON=type(g).__name__ == 'Polygon' and g.area > 1000
```

Para ocultar las geometrías que cumplen la selección "Edificios" o la selección "Deportivo" de la tabla de códigos:

```text
OFF_EXPRESION_PYTHON=#Edificios #Deportivo
```

## Observaciones

* La orden actúa sobre todas las geometrías de todos los archivos de dibujo cargados.
* Si la expresión falla, Digi3D.AI muestra el error de Python una vez por cada archivo de dibujo en el que falla la expresión (con nombres de selecciones, una vez por cada selección y archivo de dibujo en los que falla), y en ese archivo OFF\_EXPRESIÓN\_PYTHON no oculta ninguna geometría por la expresión que falla. Con varios nombres de selecciones (`#`), OFF\_EXPRESIÓN\_PYTHON oculta las geometrías que cumplen las selecciones cuya expresión no falla. Si OFF\_EXPRESIÓN\_PYTHON forma parte de una [macroinstrucción](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/ejecutar-una-orden-desde-la-linea-de-comandos/macroinstrucciones.md) (`@`), Digi3D.AI ejecuta la orden siguiente de la macroinstrucción después de que el usuario cierre el cuadro de mensaje, aunque OFF\_EXPRESIÓN\_PYTHON no haya ocultado ninguna geometría. El apartado [Errores](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md#errores) de ON\_EXPRESIÓN\_PYTHON describe los errores.
* Las geometrías ocultas no se dibujan en la ventana de dibujo ni en la ventana fotogramétrica. Para volver a mostrarlas, ejecuta [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md) o [VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md).

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Ocultar las que cumplan con expresión Python... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md)<br>[OFF\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md) |
| Nombre interno | {81442225-19EB-4577-9EE9-1E74B7A59F0F} |
