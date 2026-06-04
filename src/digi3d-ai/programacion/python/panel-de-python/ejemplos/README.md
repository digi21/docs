# Ejemplos de programación

En el repositorio de GitHub
[**ComandosDigi3DPython**](https://github.com/digi21/ComandosDigi3DPython) encontrarás los guiones
y órdenes de ejemplo que se explican en esta sección, listos para descargar y adaptar.

Puedes ejecutarlos de dos maneras:

- Desde el [panel de Guiones Python](../README.md), pegando o abriendo el guion.
- Instalándolos como **órdenes**: copia el `.py` en tu carpeta de macroinstrucciones o pégalo en la
  pestaña de macroinstrucciones de la tabla de códigos. A partir de ahí Digi3D.NET reconoce el nombre
  del archivo (en mayúsculas) como una orden más. Las órdenes que reciben parámetros se invocan con
  `NOMBRE=parámetro1 parámetro2 ...`.

Cada página muestra el código completo y lo explica paso a paso. Están ordenadas de menor a mayor
dificultad.

## Guiones del panel

- [Transformar complejos en puntos](transforma-complejo-a-punto.md)
- [Redondear la cota Z de las curvas](redondea-z.md)
- [Borrar el enlace a base de datos](borra-atr.md)
- [Crear tareas con áreas pequeñas](crea-tareas-con-areas-inferior-a-valor.md)
- [Unir curvas de nivel cercanas](crear-tramos-para-unir-curvas.md)

## Órdenes con parámetros

- [Eliminar curvas por equidistancia](elimina-curvas-por-equidistancia.md)
- [Filtrar curvas (finas y maestras)](filtrar.md)
- [Renombrar un código manteniendo sus atributos](renomcod-manteniendo-atributos.md)

## Órdenes interactivas

- [Texto del callejero del Catastro](dibuja-texto-extraido-callejero-catastro.md)
- [Texto del callejero de Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md)

> El intérprete de Python embebido en Digi3D.NET solo dispone de la **biblioteca estándar** (no hay
> paquetes de terceros como `numpy` o `requests`). Los ejemplos que consultan servicios web usan
> `urllib.request`, que sí forma parte de la stdlib.

## Véase también

- [Guiones en el panel de Digi3D.NET](../README.md)
- [Referencia de la API de Python](../../referencia/README.md)
