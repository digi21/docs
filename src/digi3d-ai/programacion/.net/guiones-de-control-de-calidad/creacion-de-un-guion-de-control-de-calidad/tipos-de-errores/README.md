# Tipos de errores
<!-- id: tipos-de-errores -->

Una función de control de calidad comunica su resultado con el valor que devuelve. El módulo `digi3d` define los cuatro tipos de error y advertencia; su referencia está en [Excepciones](/digi3d-ai/programacion/python/referencia/digi3d/exceptions.md). Aunque la referencia los llama excepciones, la función los devuelve con `return`: no son clases derivadas de `BaseException` y `raise` no los admite.

| Resultado | Página |
| :--- | :--- |
| `None` | [La geometría no tiene errores](la-geometria-no-tiene-errores.md) |
| `GeometryWarning` | [La geometría no tiene errores pero mostrar una advertencia al usuario](la-geometria-no-tiene-errores-pero-mostrar-una-advertencia-al-usuario.md) |
| `GeometryError` | [Errores de la geometría que se está analizando](errores-de-la-geometria-que-se-esta-analizando.md) |
| `GeometryRelationError` | [Errores entre dos o más geometrías](errores-entre-dos-o-mas-geometrias.md) |
| `DatabaseFieldError` | [Errores de base de datos](errores-de-base-de-datos.md) |

Para comunicar varios problemas, la función devuelve una lista con objetos de estos tipos. Al digitalizar, Digi3D.AI muestra juntos en un cuadro de diálogo los mensajes de todos los errores de geometría de la lista, y en un globo los de todas las advertencias. Bajo demanda, añade una tarea por cada elemento de la lista al panel de tareas.

Los controles de calidad de Python no pueden sustituir la geometría analizada por otra: Digi3D.AI solo lee los cuatro tipos anteriores y las listas de ellos, e ignora cualquier otro valor devuelto.