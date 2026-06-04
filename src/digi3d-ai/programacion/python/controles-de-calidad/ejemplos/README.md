# Ejemplos de controles de calidad

En el repositorio de GitHub
[**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D)
hay una colección de controles de calidad listos para usar y adaptar.

Es un único `guiones.py` que reúne muchas funciones de control (decoradas con
`@quality_control()`), junto con reglas de representación dinámica. Para usarlas, se pega el
contenido en la pestaña *Python* del **Editor de Tablas de Códigos** y se asignan los controles
deseados a cada código.

Algunos ejemplos de lo que comprueban:

- Que una geometría sea un **área** (polígono o línea cerrada) y que su superficie llegue a un
  mínimo.
- Que un texto tenga el **tamaño** o la **orientación** esperados.
- Que existan (o no existan) ciertas **relaciones** entre geometrías de distintos códigos.
- Validaciones sobre los **campos de base de datos** asociados a un código.

Para entender cómo se escribe, se declara y se asigna un control, consulta
[Controles de calidad](../README.md).
