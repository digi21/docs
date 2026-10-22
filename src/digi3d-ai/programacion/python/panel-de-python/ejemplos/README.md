# Ejemplos de programación
<!-- id: ejemplos-2 -->

Los guiones y órdenes de ejemplo que se explican en esta sección están en el repositorio de GitHub
[**ComandosDigi3DPython**](https://github.com/digi21/ComandosDigi3DPython).

Puedes ejecutarlos de dos maneras:

- Como **órdenes**: escribe en la línea de comandos el nombre del archivo sin la extensión `.py`. Las
  órdenes que reciben parámetros se invocan con `NOMBRE=parámetro1 parámetro2 ...`. Digi3D.AI instala
  estas órdenes en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar una orden,
  copia el `.py` en tu directorio de macroinstrucciones y edita esa copia, que tiene prioridad sobre la
  instalada. La página [Órdenes en Python del repositorio ComandosDigi3DPython](../../ordenes-python.md)
  indica en qué carpetas busca Digi3D.AI el archivo y resume cada orden.
- Desde el [panel de Guiones Python](../README.md), pegando o abriendo el guion. Esta forma solo sirve para
  los guiones que no reciben parámetros.

Cada página muestra el código completo y lo explica paso a paso. Las páginas de cada grupo están ordenadas
de menor a mayor dificultad.

Si a una orden con parámetros le faltan parámetros o recibe un número no válido, la orden emite el sonido
de error y muestra un cuadro con el motivo y la forma de uso.

## Guiones sin parámetros

- [Borrar el enlace a base de datos](borra-atr.md)

## Órdenes con parámetros

- [Transformar complejos en puntos](transforma-complejo-a-punto.md)
- [Redondear la cota Z de las curvas](redondea-z.md)
- [Crear tareas con áreas pequeñas](crea-tareas-con-areas-inferior-a-valor.md)
- [Unir curvas de nivel cercanas](crear-tramos-para-unir-curvas.md)
- [Eliminar curvas por equidistancia](elimina-curvas-por-equidistancia.md)
- [Filtrar curvas (finas y maestras)](filtrar.md)
- [Renombrar un código manteniendo sus atributos](renomcod-manteniendo-atributos.md)

## Órdenes interactivas

- [Texto del callejero del Catastro](dibuja-texto-extraido-callejero-catastro.md)
- [Texto del callejero de Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md) (parámetro: la
  clave de Azure Maps)
- [Prefijar los códigos de la geometría seleccionada](prefija-cod.md) (parámetro: el prefijo)

> El intérprete de Python embebido en Digi3D.AI solo dispone de la **biblioteca estándar** (no hay
> paquetes de terceros como `numpy` o `requests`). Los ejemplos que consultan servicios web usan
> `urllib.request`, que sí forma parte de la stdlib.

## Véase también

- [Guiones en el panel de Digi3D.AI](../README.md)
- [Referencia de la API de Python](../../referencia/README.md)
