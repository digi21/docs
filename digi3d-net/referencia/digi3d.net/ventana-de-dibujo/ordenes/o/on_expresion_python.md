# ON\_EXPRESION\_PYTHON

Activa la visualización de geometrías que devuelvan verdadero en la [expresión Python](../../../../editor-de-tablas-de-codigos/pestanas/selecciones.md) pasada por parámetros.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Expresión Python a analizar por cada una de las geometrías de todos los archivos de dibujo cargados. | No. |

### Ejemplos

Para encender todas las geometrías que tengan exactamente 3 vértices:

```text
ON_EXPRESION_PYTHON=digi3DGeometry.Points.Count == 3
```

Para encender todas las geometrías que tengan asignado en la base de datos como propietario "Dylan" y que además en la base de datos tengan asignado un valor en el campo Plantas mayor que 3 y que además tengan como primer código el código '010101' y que además tengan exactamente 7 vértices:

```text
ON_EXPRESION_PYTHON=Propietario == 'Dylan' and Plantas > 3 and digi3DGeometry.Codes[0].Name == '010101' and digi3DGeometry.Points.Count == 7
```

## Características de la orden

| Tipo de orden | [Orden interactiva](off.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

