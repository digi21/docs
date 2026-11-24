# Orientar por troncos
<!-- id: orientar-por-troncos -->

[Generar Proyecto](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/generar-proyecto.md)

Esta herramienta orienta entre sí varias estaciones de láser escáner terrestre (TLS) tomadas en arbolado y las une en un solo fichero. No necesita dianas, esferas ni puntos de apoyo: usa la huella de los troncos, igual que la orientación de naves usa los cortes de las paredes.

Cada nube del proyecto tiene que ser **una estación** en el sistema de su escáner (el escáner en el origen) y venir **nivelada** por el inclinómetro, como las exportan los escáneres FARO con el inclinómetro activo. Así, de cada estación solo hay que calcular cuatro valores: el giro alrededor de la vertical (κ) y la traslación en X, Y y Z. Las estaciones tienen que compartir troncos con alguna otra: hacen falta al menos 6 troncos comunes a menos de 30 m de los dos escáneres.

La herramienta está en la ficha [Proyecto](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/), en el grupo **Generar**, junto a [Juntar nubes](juntar-nubes.md). Solo se activa si el proyecto tiene alguna nube LAS, LAZ o E57.

## Cuadro de diálogo

Es el de [Juntar nubes](juntar-nubes.md) (nubes que se unen, formato y fichero de salida), con una fila más:

* **Fichero del informe (HTML)**: dónde se guarda el informe. Se propone *&lt;salida sin extensión&gt;_informe.html* junto al fichero de salida, y la propuesta cambia con la salida mientras no se escriba otro nombre. Un nombre sin carpeta se guarda en la carpeta de la salida; si se escribe solo una carpeta, se usa el nombre propuesto; si no acaba en .html o .htm, se le añade .html. Con el botón **...** se elige el fichero en un cuadro de diálogo de Windows.

Al aceptar se comprueba, además de lo de Juntar nubes, que la carpeta del informe existe y que el nombre no lleva dos puntos detrás de la unidad (en NTFS, *nube.las:informe.html* escribiría dentro de la nube en vez de crear un fichero).

## Cómo calcula

1. **Rasgos de cada estación.** Con el suelo local de la estación, corta la nube en rodajas a 1, 2… 6 m sobre el suelo y busca en cada una las circunferencias de los troncos (residuo de 2 cm o menos, al menos 60° de arco visto, radio de hasta 80 cm). Las circunferencias de alturas seguidas forman un tronco, con su eje y su radio. También mide el nivel de referencia de la estación: la cota del suelo en el centro del hueco que deja el trípode.
2. **Parejas.** Para cada par de estaciones, busca el giro y la traslación en planta que hacen coincidir más troncos (parejas de troncos con la misma separación y radios parecidos), calcula la Z con el suelo de las dos y lo afina con los puntos de la zona común.
3. **Unión.** Empieza por la pareja que mejor coincide y añade, una a una, la estación que mejor se ajusta a lo ya unido.
4. **Repaso.** Ajusta otra vez cada estación contra todas las demás ya colocadas.

La nube resultante queda en el sistema de la primera estación de la unión, que conserva sus coordenadas. Las estaciones que no coinciden con las demás no entran en la nube; el informe dice cuáles son.

Si junto a una nube está la carpeta del proyecto FARO de esa estación (*&lt;nombre de la nube&gt;.fls*), se leen de ella la brújula, el altímetro y la hora de la toma. No entran en el cálculo: el informe los usa para contrastar el resultado.

## Qué se guarda

* **La nube unida**, en el formato y con el nombre del cuadro de diálogo, como en [Juntar nubes](juntar-nubes.md). Cada punto lleva en el campo *point source ID* el número de su estación: las últimas cifras del nombre de su nube (por ejemplo, 4079 para *B4P4079.las*) o, si no tiene cifras, su posición en la lista.
* **El informe** (página HTML), que se abre en el navegador al terminar. Tiene un resumen, el plano de la unión con los troncos de cada estación, la precisión de cada estación, las coincidencias entre estaciones, los contrastes (cierre de triángulos de estaciones, brújula y altímetro), los datos de cada estación, el orden de unión con las transformaciones, las parejas y un resumen del método.
* **Las transformaciones**, una por estación, en la carpeta *&lt;salida sin extensión&gt;_transformaciones*, con el nombre *Transformacion_&lt;estación&gt;.txt*. Tienen el formato de los archivos de orientación de las naves, así que se pueden aplicar a la nube de la estación con [/ORIENTARNUBEARCHIVO](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md#orientar-con-un-archivo-de-orientación).

## Durante el cálculo

La barra de progreso avanza con la orientación y luego con la unión, y el proceso se puede cancelar. En la ventana de información se ve el resultado. Si la unión no termina, no queda fichero de salida a medias.

Vea también:

* [Juntar nubes](juntar-nubes.md)
* [Herramientas Proyectos](README.md)
* [Proyectos de MDTopX](../operaciones-con-archivos/proyectos-de-mdtopx.md)
