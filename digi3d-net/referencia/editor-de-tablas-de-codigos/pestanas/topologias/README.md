# Topologías

Permite configurar las topologías que se pueden generar mediante el menú [Topología ](../../../digi3d.net/ventana-de-dibujo/menus/topologia.md)de Digi3D.NET.

## Descripción

Una topología es una selección de códigos de líneas agrupadas bajo un determinado nombre. 

Al analizar una determinada topología, el programa analizará geométricamente todas las líneas del archivo de dibujo que tengan algún código de los especificados en la topología.

Se analizará la continuidad de estas líneas para localizar todos los [polígonos topológicos](poligonos-topologicos.md) que se puedan formar.

Los _polígonos topológicos_ deben tener un [Centroide](centroide.md) en su interior. Si se localiza más de un centroide se considerará un error, y si no se localiza ninguno el programa puede que lo considere un error en función de cómo se haya configurado este escenario en la topología.

## Ventanas

* Una lista con las topologías configuradas. Dispone de los siguientes botones:
  * Permite añadir una topología al listado de topologías mediante el cuadro de diálogo [Añadir Topología](anadir-topologia.md).
* Una lista con los códigos que forman parte de la topología seleccionada.
* Una lista con los centroides que forman la topología seleccionada.
* Un diccionario de valores asociados con el centroide seleccionado.











