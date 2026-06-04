# Controles de calidad

Un **control de calidad** es una función de Python que comprueba si una geometría cumple una
regla y comunica un error (o una advertencia) cuando no la cumple. Digi3D.NET los ejecuta
sobre las geometrías de cada código, según lo configurado en la tabla de códigos.

Hay un repositorio con muchos controles listos para usar:
[**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D).

## Cuándo se ejecutan

- **Bajo demanda**: con **Control de calidad → Analizar control de calidad**, se ejecutan los
  controles habilitados de cada código de cada geometría del dibujo. Los errores encontrados
  se muestran en el [panel de tareas](tasks.md).
- **En tiempo real**: si está activado **Control de calidad en tiempo real**, cada vez que se
  digitaliza (dibuja) una geometría, **antes de almacenarla** se comprueban sus controles y,
  si no los cumple, se avisa al usuario con cuadros de diálogo.

> Un código solo dispara controles si los tiene **asignados** en la tabla de códigos. Una
> geometría con un código sin controles asignados no genera ninguna comprobación.

## Cómo se asignan a un código

En el **Editor de Tablas de Códigos**, en la pestaña *Python*, se pegan los guiones con las
funciones de control. Después, en cada código, se añaden los controles deseados en el campo
**Controles de calidad a aplicar**, indicando los parámetros de cada uno.

## Cómo se declara un control de calidad

Una función se reconoce como control de calidad si cumple tres condiciones:

1. Está decorada con **`@quality_control()`** (lo proporciona el entorno de Digi3D.NET).
2. Recibe al menos los parámetros `geometry`, `adding_geometry` y `code_index`. Puede tener
   **más** parámetros: serán los valores configurables que se piden al asignar el control a un
   código (códigos, distancias, mensajes, etc.).
3. Tiene una **descripción** en la primera línea de su *docstring*: es el texto que se muestra
   en el editor de tablas de códigos.

| Parámetro | Descripción |
|---|---|
| `geometry` | La [geometría](../referencia/digi21.base/geometry.md) que se está analizando. |
| `adding_geometry` | `True` si se ejecuta **en tiempo real** (la geometría se acaba de dibujar y aún no está en el archivo); `False` si se ejecuta **bajo demanda** desde el menú. |
| `code_index` | Índice del código de la geometría que se está analizando (una geometría puede tener varios códigos). |

El comportamiento puede cambiar según `adding_geometry`: en tiempo real suele bastar con
devolver el **primer** error (e incluso un control interactivo podría proponer una geometría
sustituta), mientras que bajo demanda conviene devolver **todos** los errores localizados.

## Cómo comunica el resultado

- Si la geometría **cumple** la regla, la función sale con un simple `return` (sin valor).
- Si **no** la cumple, devuelve uno de los tipos de [error o advertencia](exceptions.md):
  `GeometryError`, `GeometryRelationError`, `GeometryWarning` o `DatabaseFieldError`. Para
  comunicar varios problemas a la vez, devuelve una **lista** de ellos.

## Ejemplo

```python
import digi3d

def es_area(g):
    'Verdadero si la geometría es un área (polígono o línea cerrada)'
    return type(g) is digi3d.Polygon or (type(g) is digi3d.Line and g.closed_2d)

@quality_control()
def debe_ser_area(geometry, adding_geometry, code_index,
                  mensaje="La geometría debería ser un área"):
    'La geometría debe ser un área (polígono o línea cerrada en planta)'
    if not es_area(geometry):
        return digi3d.GeometryError(mensaje)
    # Si es un área, no hay problema: salimos sin devolver nada.

@quality_control()
def debe_tener_area_igual_o_mayor(geometry, adding_geometry, code_index, minima):
    'El área de la geometría debe ser igual o mayor que el valor indicado'
    if es_area(geometry) and abs(geometry.area) < float(minima):
        return digi3d.GeometryError(f"El área {abs(geometry.area):.2f} es menor que {minima}")
```

Asignados al mismo código, estos dos controles comprueban que sus geometrías son áreas y que
su superficie llega a un mínimo (p. ej. 100 m²).

## Véase también

- [Excepciones](exceptions.md) — los tipos de error y advertencia que devuelve un control.
- [Cómo ejecutar guiones](ejecutar-guiones.md)
- Repositorio de controles: [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D)
