# Ejemplos de controles de calidad
<!-- id: ejemplos-3 -->

En el repositorio de GitHub
[**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D)
hay una colección de controles de calidad listos para usar y adaptar.

Es un único `guiones.py` que reúne muchas funciones de control (decoradas con
`@quality_control()`), junto con reglas de representación dinámica. Para usarlas, se carga el
contenido en la pestaña *Entorno Python* del **Editor de Tablas de Códigos** y se asignan los controles
deseados a cada código.

Algunos ejemplos de lo que comprueban:

- Que una geometría sea un **área** (polígono o línea cerrada) y que su superficie llegue a un
  mínimo.
- Que la coordenada **Z** de los vértices sea constante, creciente o decreciente, o que no se aleje del
  modelo digital del terreno.
- Que existan (o no existan) ciertas **relaciones** entre geometrías de distintos códigos.
- Validaciones sobre los **campos de base de datos** asociados a un código.

Para entender cómo se escribe, se declara y se asigna un control, consulta
[Controles de calidad](../README.md).

La página [Repositorio de controles de calidad en Python](../../guiones-control-calidad/README.md) describe
cada control y cada regla de representación dinámica de `guiones.py`, con sus parámetros.

## Ejemplos explicados

| Ejemplo | Qué comprueba |
| :--- | :--- |
| [Detectar vértices con Z superior a la del anterior vértice](detectar-vertices-con-z-superior-a-la-anterior.md) | Que la Z de los vértices de la geometría no aumente. |
