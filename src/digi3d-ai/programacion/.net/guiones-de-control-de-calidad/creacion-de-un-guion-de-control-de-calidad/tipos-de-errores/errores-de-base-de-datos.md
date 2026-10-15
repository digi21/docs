# Errores de base de datos
<!-- id: errores-de-base-de-datos -->

Para comunicar que un campo de base de datos de un código de la geometría tiene un valor incorrecto, la función devuelve un `digi3d.DatabaseFieldError`:

```python
DatabaseFieldError(message, codeIndex, field)
```

| Argumento | Descripción |
| :--- | :--- |
| `message` | Descripción del error. |
| `codeIndex` | Índice, en `geometry.codes`, del código cuyo campo es incorrecto. Normalmente, el `code_index` que recibe la función. |
| `field` | Nombre del campo. |

* Al digitalizar, Digi3D.AI abre un cuadro de diálogo para corregir el valor del campo. Si el usuario cancela, o si la tabla de códigos no tiene el esquema de la tabla del código, la geometría no se guarda. Si lo corrige, Digi3D.AI vuelve a ejecutar los controles del código.
* Bajo demanda, Digi3D.AI añade una tarea de error al panel de tareas.

## Ejemplo

Del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D):

```python
@quality_control()
def atributo_bbdd_no_puede_ser_nulo(geometry, adding_geometry, code_index, nombre_atributo):
    'Comunica un error si el código que se está analizando no tiene entre sus atributos el atributo pasado por parámetros o si el valor de este atributo es nulo'
    atributosCodigo = geometry.codes[code_index].attributes

    if nombre_atributo not in atributosCodigo:
        return digi3d.GeometryError('Se esperaba que el código {} de esta geometría tuviera un atributo con nombre {} pero no lo tiene'.format(geometry.codes[code_index].code, nombre_atributo))

    if atributosCodigo[nombre_atributo] is None:
        return digi3d.DatabaseFieldError('Atributo con valor nulo', code_index, nombre_atributo)
```