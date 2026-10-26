# Lista de objetos
<!-- id: lista-de-objetos -->

[Ficha de herramientas MMS Editar objetos](./)

Muestra en una lista los objetos de la nube de puntos de la ventana activa. Desde la lista se pueden seleccionar los objetos en la vista, ir a ellos, cambiar su clasificación y borrarlos.

Los objetos se crean con [**Generar**](generar-objetos.md) o con [**Nuevo**](objeto-nuevo.md). Si la nube no tiene objetos, el botón **Lista** está desactivado.

El cuadro de diálogo no bloquea la ventana de la nube: se puede seguir trabajando en la vista con la lista abierta. La lista se vuelve a leer cada vez que se activa el cuadro de diálogo, de modo que recoge los objetos que se hayan creado, borrado o cambiado entretanto. Se cierra al cerrar la ventana de la nube.

## Columnas

| Columna | Significado |
|---|---|
| Nº | Número del objeto en la nube. |
| Puntos | Cantidad de puntos del objeto. |
| Clasificación | Código y nombre de la clase LiDAR del objeto (la de su primer punto). |
| X, Y, Z | Centro del rectángulo que envuelve el objeto. |
| Dif. altura | Diferencia entre la Z más alta y la más baja de los puntos del objeto. |

Al pulsar en la cabecera de una columna, la lista se ordena por esa columna. Al pulsar otra vez en la misma cabecera, se invierte el orden.

## Seleccionar objetos

La lista admite selección múltiple: con la tecla **Ctrl** se añaden o se quitan objetos sueltos y con **Mayús** se selecciona un intervalo. Los dos botones que hay debajo de la lista, a la derecha, deseleccionan todos los objetos y seleccionan todos los objetos.

Los puntos de los objetos seleccionados en la lista quedan seleccionados en la vista. Debajo de la lista se indica cuántos objetos hay y cuántos están seleccionados.

## Botones

* **Cambiar clasificación...**: abre la lista de clases LiDAR para elegir la clase nueva y la asigna a todos los puntos de los objetos seleccionados.
* **Borrar...**: borra los objetos seleccionados. Antes pregunta si se borran también sus puntos:
  * **Sí**: se borran los objetos y sus puntos.
  * **No**: se borran solo los objetos; los puntos se quedan en la nube, sin objeto.
  * **Cancelar**: no se borra nada.
* **Ir a**: amplía la vista hasta abarcar los objetos seleccionados. Hacer doble clic en un objeto de la lista hace lo mismo con ese objeto.
* **Ayuda**: abre esta página.
* **Cerrar**: cierra el cuadro de diálogo.

Los cambios de clasificación y los borrados se pueden deshacer con **Deshacer**.
