# Filtrar puntos
<!-- id: linea-de-comando-filtrar-puntos -->

[Filtrar puntos](/mdtopx/modulo-laser/editar/filtrar-puntos.md)

Esta herramienta reduce la densidad de una nube de puntos. MDTopX divide la nube en celdas de lado **PasoRejilla** y sustituye los puntos de cada celda por un único punto. Para ejecutarla desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /FILTRADO
```

La herramienta no tiene archivo de salida. MDTopX sustituye los puntos del archivo de entrada por los puntos filtrados y guarda el resultado en el mismo archivo y en su mismo formato. Haz una copia del archivo de entrada si necesitas conservar la nube original.

MDTopX toma como archivo de entrada la primera cadena de la línea de comando que no es una opción (una opción empieza por `/` o `-`). Esa cadena puede estar antes o después de `/FILTRADO`.

## Licencia

Al iniciarse, la orden `/FILTRADO` no pide la licencia del módulo MDTopX, y la herramienta no comprueba ninguna licencia antes de filtrar. Para guardar el resultado, MDTopX exige la licencia del módulo Láser si la nube es LiDAR (detección y medición por luz láser) o de un escáner terrestre, y la licencia del módulo MDTopX si es cualquier otro archivo de puntos. Si falta la licencia, MDTopX filtra la nube, muestra un cuadro de mensaje titulado «Licencia no válida» con el texto «Imposible salvar fichero.» (en inglés, «Can not save the file») y no guarda el archivo. El cuadro permanece abierto hasta que alguien lo cierra.

## Configuración

MDTopX lee la sección **\[FiltrarPuntos]** del archivo MDTopX.ini. Si una clave no está en la sección, MDTopX usa el valor guardado en la configuración del usuario, que es el último que se aceptó en el cuadro de diálogo de la herramienta [Filtrar puntos](/mdtopx/modulo-laser/editar/filtrar-puntos.md). Si nunca se guardó ese valor, MDTopX usa el valor predeterminado que se indica en cada clave.

* **Dimensiones**: 0 (2D: las celdas son cuadrados en el plano XY, para nubes aéreas) o 1 (3D: las celdas son cubos, para nubes de escáner terrestre). Valor predeterminado: 0.
* **PasoRejilla**: lado de la celda en metros. Debe ser mayor que 0. MDTopX no comprueba este valor al leerlo de MDTopX.ini. Valor predeterminado: 1.
* **CalculoCota**: criterio con el que MDTopX calcula la cota (coordenada Z) del punto de cada celda. Solo se usa con **Dimensiones** = 0; con **Dimensiones** = 1, MDTopX calcula siempre la media de las cotas de la celda. Valor predeterminado: 0. Valores admitidos:
  * **0**: cota del primer punto encontrado en la celda.
  * **1**: media aritmética de las cotas de los puntos de la celda.
  * **2**: media de las cotas ponderada con el peso 1 / d, donde d es la distancia en el plano XY del punto al centro de la celda.
  * **3**: media de las cotas ponderada con el peso 1 − |a| / 90, donde a es el ángulo de escaneo del punto en grados.
  * **4**: menor cota de la celda.
  * **5**: mayor cota de la celda.

MDTopX lee también las claves **DistanciMax** (escrita así, sin la «a» final) y **SegunClasificacion**, pero esta herramienta no las usa.

```ini
[FiltrarPuntos]
Dimensiones = 0
PasoRejilla = 0.5
CalculoCota = 4
```

Es indiferente que los nombres de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
