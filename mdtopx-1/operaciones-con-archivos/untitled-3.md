# Agregar modelos digitales del terreno

[Editar Archivo](untitled.md)

La aplicación permite unir la información contenida en diferentes archivos de modelos digitales del terreno mediante la herramienta Agregar. Esta herramienta leerá los puntos y líneas de ruptura de uno o varios archivos y la añadirá al documento MDT actual. Para ello el programa efectuará una retriangulación para evitar el solape entre triángulos, manteniendo la consistencia del modelo digital del terreno.

En caso de que exista solape entre las zonas que representan los archivos el programa efectuará una pregunta al usuario para saber cómo actuar. Esta pregunta se realiza a través un cuadro de diálogo, donde se muestran las siguientes opciones:

* No insertar puntos nuevos: No inserta los puntos nuevos que se encuentren en el área de MDT actual.
* Borrar los puntos originales: Borra los puntos del MDT actual que se encuentre en el área del MDT que se está añadiendo.
* Juntar todos los puntos: Se añaden los puntos sin realizar ninguna modificación sobre ellos.
* Insertar puntos nuevos con cota proyectada: Se añaden los puntos nuevos pero calculando previamente la cota proyectada sobre el MDT actual en la zona de solape.
* Calcular cota media en puntos nuevos: Se añaden los puntos nuevos pero calculando previamente la media entre la cota que tienen y la cota proyectada sobre el MDT actual en la zona de solape.
* Calcular cota media en todos los puntos: Se añaden los puntos nuevos y actuales en la zona de solape pero calculando previamente la media entre la cota que tienen y la cota proyectada sobre el MDT contrario.
* Calcular cota según distancia al MDT en puntos nuevos: Se añaden los puntos nuevos pero calculando previamente la media ponderada entre la cota que tienen y la cota proyectada sobre el MDT actual en la zona de solape inversamente proporcional a la distancia que les separa del centro de cada MDT.
* Calcular cota según distancia al MDT en todos los puntos: Se añaden los puntos nuevos y actuales en la zona de solape pero calculando previamente la media ponderada entre la cota que tienen y la cota proyectada sobre el MDT contrario inversamente proporcional a la distancia que les separa del centro de cada MDT.

Si se pulsa al botón Salir se cancelará la operación y no se modificará el documento.

Esta herramienta tiene la posibilidad de ser ejecutada desde la [línea de comandos](../untitled-277/untitled-2.md).

