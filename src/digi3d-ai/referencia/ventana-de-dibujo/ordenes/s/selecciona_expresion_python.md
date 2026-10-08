# SELECCIONA\_EXPRESION\_PYTHON
<!-- id: selecciona-expresion-python -->

Envía a la orden en curso las geometrías del archivo de dibujo activo para las que una expresión Python devuelve verdadero.

Esta orden solo funciona como orden transparente: se ejecuta mientras otra orden que admite selección múltiple está en curso (por ejemplo BORRAR o MOVER), y le envía las geometrías seleccionadas. Si no hay ninguna orden en curso que admita selección múltiple, la orden muestra el aviso «No se está ejecutando ninguna orden que admita selección múltiple», emite un sonido de error y termina sin hacer nada más.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Expresión Python | Todo el texto que sigue al signo `=` forma la expresión. Se ignoran los espacios del principio y del final. No admite nombres de selecciones con `#`. | Sí. Sin parámetros, o con un parámetro en blanco, la orden muestra el cuadro de diálogo **Expresión Python**, descrito en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md). |

La variable `g`, los atributos (`g.codes[0].attributes`), el valor que debe devolver la expresión y los fragmentos de código se explican en [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md).

### Ejemplo

Con la orden BORRAR en curso, para borrar los textos vacíos:

```text
SELECCIONA_EXPRESION_PYTHON=type(g).__name__ == 'Text' and g.text == ''
```

## Observaciones

* La orden evalúa solo las geometrías del archivo de dibujo activo que son visibles y están dentro de la zona de interés. Las geometrías borradas solo se evalúan si está activada la variable [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md).
* Si la expresión falla, Digi3D.AI muestra el error de Python y la orden en curso recibe una selección vacía.
* El submenú **Inmediato/Selecciona por expresión Python...** muestra, debajo de **Introduciendo expresión...**, las selecciones de la tabla de códigos activa. Cada opción ejecuta esta orden con la expresión de esa selección. Las opciones están desactivadas mientras no haya una orden en curso que admita selección múltiple.

## Características de la orden

| Tipo de orden | Orden transparente |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Selecciona por expresión Python.../Introduciendo expresión...<br>Inmediato/Selecciona por expresión Python.../(selecciones de la tabla de códigos) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [BORRADOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) |
| Órdenes relacionadas | [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[SELECCIONA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md)<br>[SELECCIONA\_POR\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md) |
| Nombre interno | {60FBEA4A-2F76-40BB-9201-12C85A211682} |
