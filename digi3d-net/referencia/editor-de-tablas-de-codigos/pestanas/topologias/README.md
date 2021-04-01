# Topologías

Permite configurar las topologías que se pueden generar mediante el menú [Topología ](../../../digi3d.net/ventana-de-dibujo/menus/topologia.md)de Digi3D.NET.

## Descripción

Una topología es una selección de códigos de líneas agrupadas bajo un determinado nombre.

Al analizar una determinada topología, el programa analizará geométricamente todas las líneas del archivo de dibujo que tengan algún código de los especificados en la topología.

Se analizará la continuidad de estas líneas para localizar todos los [polígonos topológicos](poligonos-topologicos.md) que se puedan formar.

Los _polígonos topológicos_ deben tener un [Centroide](centroide.md) en su interior. Si se localiza más de un centroide se considerará un error, y si no se localiza ninguno el programa puede que lo considere un error en función de cómo se haya configurado este escenario en la topología.

## Ventanas

Este panel dispone de las siguientes ventanas:

### Lista de topologías configuradas

Muestra un listado con todas las topologías configuradas en la tabla de códigos.

Dispone de los siguientes botones:

* **Añadir** Permite añadir una nueva topología mediante el cuadro de diálogo [Añadir Topología](anadir-topologia.md). 
* **Eliminar** Elimina la topología seleccionada.
* **Modificar** Permite modificar la topología seleccionada mediante el cuadro de diálogo _Añadir topología_.

### Lista de códigos

Muestra un listado con todos los códigos con los que se forma la topología seleccionada en la [lista de topologías configuradas](./#lista-de-topologias-configuradas).

Dispone de los siguientes botones:

* **Añadir** Permite añadir un código a la topología seleccionada mediante el cuadro de diálogo [Seleccionar códigos para topología](seleccionar-codigos-para-topologia.md). 
* **Eliminar** Elimina el código seleccionado.

### Lista de centroides

Muestra un listado con todos los centroides configurados para la topología seleccionada en la [lista de topologías configuradas](./#lista-de-topologias-configuradas).

Dispone de los siguientes botones:

* **Añadir** Permite añadir centroides mediante el cuadro de dialogo [Añadir centroide](anadir-centroide.md).
* **Eliminar** Elimina el centroide seleccionado.
* **Modificar** Modifica el centroide seleccionado mediante el cuadro de diálogo _Añadir centroide_.

### Diccionario de valores

Muestra el [diccionario de valores](centroide.md#diccionario-de-valores) asociado con el centroide seleccionado en la [lista de centroides](./#lista-de-centroides).

Dispone de los siguientes botones:

* **Añadir** Permite añadir una nueva entrada al diccionario de valores mediante un cuadro de diálogo que permite introducir una clave y un valor.
* **Eliminar** Elimina la entrada seleccionada en el diccionario de valores.
* **Modificar** Modifica la entrada seleccionada en el diccionario de valores.

