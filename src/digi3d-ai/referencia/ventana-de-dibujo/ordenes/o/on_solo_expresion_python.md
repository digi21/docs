# ON\_SOLO\_EXPRESIÓN\_PYTHON
<!-- id: on-solo-expresion-python -->

Muestra solo las geometrías para las que una expresión Python devuelve verdadero. En cada archivo de dibujo cargado, la orden oculta todas las geometrías y después muestra las que cumplen la expresión.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Expresión Python. Todo el texto que sigue al signo `=` forma la expresión. Se ignoran los espacios del principio y del final.<br>o<br>Nombres de [selecciones](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) de la tabla de códigos, cada uno precedido de `#` y separados por espacios. Se muestran las geometrías que cumplen cualquiera de ellas. | Sí. Sin parámetros, la orden muestra el cuadro de diálogo **Expresión Python**, descrito en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

La variable `g`, los atributos (`g.codes[0].attributes`), el valor que debe devolver la expresión y los fragmentos de código se explican en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). Si ninguno de los nombres con `#` existe en la tabla de códigos, la orden no cambia nada.

El menú **Ver** muestra las selecciones de la tabla de códigos activa. Cada opción ejecuta esta orden con la expresión de esa selección.

### Ejemplos

Para mostrar solo las geometrías que tienen exactamente 3 vértices:

```text
ON_SOLO_EXPRESION_PYTHON=len(g) == 3
```

Para mostrar solo las geometrías con el código 020400 cuyo campo Plantas vale 3:

```text
ON_SOLO_EXPRESION_PYTHON=g.has_code('020400') and g.codes[0].attributes.get('Plantas') == 3
```

Para mostrar solo las geometrías que cumplen la selección "Edificios" o la selección "Deportivo":

```text
ON_SOLO_EXPRESION_PYTHON=#Edificios #Deportivo
```

## Observaciones

* Si la expresión falla, Digi3D.AI muestra el error de Python una vez por archivo de dibujo, y **todas las geometrías de ese archivo quedan ocultas**. Para volver a verlas, ejecuta [VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md).
* Ocultar y mostrar por expresión es independiente de la visibilidad por código: una geometría cuyo código está apagado sigue sin dibujarse.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Solo las que cumplan con expresión Python...<br>Ver/(selecciones de la tabla de códigos) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md)<br>[ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[ONSOLO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md)<br>[VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md) |
| Nombre interno | {59456486-1146-4F25-B8BD-3435FD2FF715} |
