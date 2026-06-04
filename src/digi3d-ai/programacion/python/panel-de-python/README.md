# Panel de Python

Digi3D.AI incorpora un **intérprete de Python embebido** que ejecuta guiones **dentro de la
propia aplicación**, con acceso a la **ventana de dibujo activa**, las órdenes, los paneles y
demás servicios del programa.

Estos guiones disponen del módulo **`digi3d`**, que solo existe dentro de Digi3D.AI (no se
puede importar desde una [aplicación de consola](../aplicaciones-de-consola/README.md)).

```python
import digi3d

view = digi3d.current_view()
for geometry in view:
    print(type(geometry).__name__)
```

## Formas de ejecutar un guion

Un guion se puede ejecutar desde el **panel de Guiones Python**, **como una orden** (por su
nombre, desde la consola de órdenes) o como **control de calidad**. Lo explica
[Cómo ejecutar guiones](ejecutar-guiones.md).

## El objeto `digi3d`

El punto de entrada habitual es
[`current_view()`](../referencia/digi3d/functions.md#current_view), que devuelve la
[DrawingView](../referencia/digi3d/drawing-view.md) activa. `digi3d` **reexporta** además los
tipos del núcleo de [digi21.base](../referencia/digi21.base/README.md), de modo que dentro de un
guion se pueden usar sin importar nada más (`FeatureCode`, `Geometry`, `Point`, `Line`,
`Polygon`…).

La descripción completa del módulo está en la
[Referencia: módulo `digi3d`](../referencia/digi3d/README.md).

```python
import digi3d

# Crear una línea y añadirla a la ventana de dibujo activa
linea = digi3d.Line(["CARR"], [(0, 0, 0), (10, 0, 0), (10, 10, 0)])
digi3d.current_view().add(linea)
```

## Enlaces

- [Cómo ejecutar guiones](ejecutar-guiones.md) — panel, orden (consola) y control de calidad.
- [Ejemplos de programación](ejemplos/README.md) — guiones y órdenes listos para usar.
- [Referencia: módulo `digi3d`](../referencia/digi3d/README.md) — DrawingView, órdenes, tareas, funciones…
- [Referencia: digi21.base](../referencia/digi21.base/README.md) — los tipos del núcleo que `digi3d` reexporta.
