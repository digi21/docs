# AA
<!-- id: aa -->

Establece el valor del _ángulo activo._

## Parámetros

Esta orden se puede ejecutar con o sin parámetros.

### Con parámetros

| Número de parámetro | Descripción | Valores admitidos | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo | Número real, o **?** para consultar el valor actual en un globo | Si |

### Sin parámetros

Si ejecutas esta orden sin parámetros, la orden te solicitará en la barra de estado que teclees el valor del ángulo activo o que digitalices dos puntos. Si digitalizas dos puntos, la orden asignará al ángulo activo el ángulo del vector que va del primer punto al segundo.

## Observaciones

Introduce el valor del _ángulo activo_ en grados sexagesimales. El origen de los ángulos coincide con el eje positivo de las coordenadas X, y los ángulos aumentan en sentido contrario al de las agujas del reloj.

El valor por defecto es 0.

## Ejemplos

Ejecuta la siguiente orden para asignar como ángulo activo el valor 45 grados sexagesimales:

```text
AA=45
```

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Ángulo activo |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C} |

