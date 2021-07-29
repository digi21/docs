---
description: Cuadro de diálogo Perfiles transversales de viales
---

# Perfiles transversales de viales

[Módulo Viales](../)

Desde esta herramienta, el usuario puede calcular los perfiles transversales correspondientes a un vial y generar un nuevo documento de dibujo, con la configuración de los datos que se muestran a continuación:

* **Seleccionar alzado**: Se deberá seleccionar el alzado a utilizar para aplicar las diferentes secciones tipo que tiene el trazado asociadas.
* **Configuración transversales**
* **Separación**: Se indicará la separación en metros a lo largo del trazado entre cada perfil transversal.
* **Comienzo**: Se indicará el punto kilométrico inicial en metros a partir del cual se empezarán a calcular los perfiles transversales. Por defecto, será cero.
* **Final**: Se indicará el punto kilométrico final en metros hasta donde se calcularán los perfiles transversales. Por defecto, valdrán la longitud total del trazado.
* **Escalas**: Se indicarán los denominadores de la escala horizontal y vertical. Estos valores son importantes para calcular el factor de exageración vertical de los perfiles y los límites geométricos para el filtrado de puntos innecesarios en la definición de los perfiles.
* **Anchos mínimos del perfil del terreno**: Se indicarán los anchos mínimos en metros que tendrá el perfil obtenido del MDT. De esta forma, independientemente del ancho del vial, todos los viales tendrán al menos el ancho aquí indicado. Estos anchos están medidos a partir del eje del vial.

Además, se puede configurar el tipo de proyección de los alzados sobre el MDT pulsando el botón [Tipo proyección](../../herramientas-mdt/perfiles/tipo-de-proyeccion.md).

La presentación gráfica de los perfiles transversales también puede ser modificada mediante el cuadro de diálogo que se muestra pulsando el botón [Presentación ](../../herramientas-mdt/perfiles/presentacion-grafica.md).

Por otro lado, la información que se muestra de los perfiles transversales en la parte inferior de éstos, puede ser modificada en el cuadro de diálogo mostrado pulsando el botón [Guitarra](../../herramientas-mdt/perfiles/guitarra.md).

Esta herramienta generará un documento de dibujo nuevo, que podrá ser salvado en formato BIN de DIGI, DXF de AutoCad o DGN de AutoCad. Pero es posible obtener documentos adicionales como:

* Informe con los valores de superficiado de los diferentes perfiles, mostrando los valores de desmonte y terraplén.
* Alzado con los puntos de cada perfil transversal en alzado. Este archivo podrá tener formato TopCal, Clip, Genius o TCP MDT para ser utilizado con dichos programas.
* Planta con los puntos de cada perfil transversal en planta. Este archivo es útil para trabajos de replanteo y podrá tener formato TopCal o ASCII. Además, se podrán seleccionar qué puntos se desean en este archivo:
* En todos los puntos: Todas las inflexiones del perfil transversal.
* Puntos sólo:
  * En el eje: Punto central del perfil transversal.
  * En el borde de la plataforma: Extremos de la plataforma del perfil.
  * En la intersección con el terreno: Intersección de la sección tipo con el terreno.
  * En la intersección con el terreno distanciados: Puntos distanciados una determinada distancia de la intersección de la sección tipo con el terreno.

