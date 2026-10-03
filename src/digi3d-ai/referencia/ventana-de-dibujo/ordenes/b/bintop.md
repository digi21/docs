# BINTOP

1.  Calcula la topología del archivo de dibujo activo: forma los polígonos a partir de los tramos (líneas) y les asocia los centroides (textos) que tengan los códigos seleccionados. La topología se identifica con la ruta del archivo de dibujo y la extensión TOP, y se puede cargar en memoria para que la usen otras órdenes. La orden no guarda la topología en disco.

    La topología sólo tiene validez para el archivo de dibujo en un momento dado. Si se modifica el archivo de dibujo con las órdenes de edición de _DigiNG_, hay que volver a ejecutar la orden.
2. Busca errores en la formación de dichas relaciones. Estos errores serán:
   * Polígonos sin área.
   * Polígonos sin centroide.
   * Polígonos con más de un centroide.
   * Centroides fuera de polígono.

## Parámetros

Sin parámetros, esta orden abre un cuadro de diálogo. Sus opciones se describen en el apartado **Observaciones**. Con parámetros, la orden se ejecuta sin cuadro de diálogo; los parámetros se describen en el apartado **Puedes ejecutar la orden BINTOP desde la línea de comandos**.

## Observaciones

Al ejecutar la orden aparecerá el siguiente cuadro de diálogo:

![Cuadro de diálogo Bintop](../../../../../images/BINTOP.jpg)

* **Códigos**: en la parte superior del cuadro de diálogo se seleccionan los códigos de las entidades que forman los [tramos](bintop.md) y los códigos de los textos que forman los [centroides](bintop.md).
* **Corregir automáticamente entidades con puntos dobles**: antes de calcular la topología, la orden quita los vértices repetidos de las líneas del archivo de dibujo activo cuyo primer o último vértice está repetido en X e Y.
* **Eliminar automáticamente entidades con un solo punto**: antes de calcular la topología, la orden borra los puntos del archivo de dibujo activo que tienen alguno de los códigos seleccionados.
* Casillas correspondientes a los **errores a detectar**:
  * Informar del error de polígonos sin área (una o más líneas que forman un polígono no cerrado en el plano)
  * Marcar como error los polígonos sin centroide asignado
  * Marcar como error centroides duplicados (más de un centroide en un mismo polígono cerrado). Con esta casilla también se marcan los centroides que quedan fuera de cualquier polígono.
* **Cargar el archivo topológico en memoria**: carga en memoria la topología calculada para que la usen otras órdenes.
* **Generar un fichero de errores**: si está activada esta opción se generará un archivo de errores en la ubicación y con el nombre que se especifique.
* **Fichero de errores**: Nombre del fichero que se va a crear con las marcas de error. Si existe el fichero, se borra y se crea de nuevo. Las marcas de error se guardan con los códigos `ERRCEN` (puntos dobles, entidades de un solo punto y centroides) y `NOAREA` (polígonos sin área). Los polígonos sin centroide se guardan como una línea con el contorno del polígono. También puede ser cargado como fichero de referencia, con la orden [CARGA_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md), sobre el fichero de dibujo que contiene las entidades. Las órdenes [ERR+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-mas.md), nos llevarán a cada error para visualizarlo y poder corregirlo con las funciones de edición.
* **Tamaño del error en metros**: Se dará el valor en metros (unidades terreno), para que su tamaño sea adecuado al localizar el error. Las marcas de error son cuadrados con un ángulo en uno de sus lados, de manera que las coordenadas del vértice sean las mismas que las del punto dónde esta el error.
* **Cargar el fichero de errores como archivo de referencia**: en caso de marcar esta casilla se cargará automáticamente el fichero con los símbolos de error como fichero de referencia, esto permitirá al usuario el control y la correción de los errores inmediatamente.

El primer proceso que realiza BINTOP es la detección de errores graves de [topología](bintop.md), éstos errores son:

* Puntos dobles al comienzo o al final de una línea
* Líneas compuestas de un sólo punto

Estos errores se marcarán en el fichero de errores, que se podrá cargar como referencia, y su tamaño podrá ser definido por el usuario. Si se encuentra alguno de estos errores, la orden no forma los polígonos y muestra un globo de error.

En caso de que en el fichero de dibujo existan errores de este tipo, la información correspondiente se mostrará en la Ventana de tareas.

Puedes ir al error deseado haciendo doble clic sobre el campo correspondiente al error en la ventana de tareas.

Una vez corregido el error, lo podrás marcar en la casilla situada a la izquierda del campo para saber en cualquier momento que error se ha corregido.

En caso de encontrar errores relacionados con polígonos el programa marcará estos, mediante un relleno y los mostrará en la ventana de tareas.

### Puedes ejecutar la orden BINTOP desde la línea de comandos:

BINTOP=\[tabla] \[polígonos_sin_area] \[polígonos_sin_centroide] \[topología_3D] \[centroides_duplicados] \[generar_archivo_errores] \[cargar_topológico_en_memoria]

* \[tabla]: ruta y nombre de un archivo de texto con los códigos de las entidades que forman la topología. La orden lee la primera palabra de cada línea del archivo. Si no se puede abrir el archivo, la orden escribe el error en la ventana de resultados y termina.
* \[polígonos_sin_area]: en caso de querer marcar los polígonos sin area se pondrá aquí el valor 1 (verdadero) en caso contrario se pondrá un 0 (falso).
* \[polígonos_sin_centroide]: en caso de querer marcar polígonos sin centroide se pondrá el valor 1 (verdadero).
* \[topología_3D]: 1 para calcular la topología en 3D, 0 para calcularla en 2D.
* \[centroides_duplicados]: en caso de querer que el programa marque como error los centroides duplicados se pondrá aquí el valor 1.
* \[generar_archivo_errores]: 1 para generar un archivo de errores. En ese caso se necesitan especificar a continuación los siguientes parámetros:
  * \[nombre_fichero_de_errores]: ruta y nombre del fichero con los símbolos de error. Si no lleva ruta, se crea en la carpeta del archivo de dibujo. Si no termina en `bin`, se le añade la extensión `.bin`.
  * \[tamaño_de_error]: este es el tamaño de los símbolos de error en metros.
  * \[cargar_como_referencia]: en caso de querer cargar el archivo automáticamente como referencia se deberá poner aquí un 1, en caso contrario se escribirá un 0.
* \[cargar_topológico_en_memoria]: 1 para cargar la topología en memoria, 0 para no cargarla.

Todos los parámetros son obligatorios cuando se indica la tabla. Si falta alguno, la orden emite un sonido de error, muestra el aviso «Faltan parámetros» y termina sin calcular la topología.

Si la variable [CREAR\_TOPOLOGIAS\_ARCHIVOS\_REFERENCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/crear-topologias-archivos-referencia.md) está activada, la orden calcula una topología para cada archivo de dibujo cargado; si no, solo para el archivo de dibujo activo.

También se puede indicar como único parámetro `#nombre`, donde _nombre_ es una topología definida en la tabla de códigos. En ese caso la orden toma los códigos, la opción de polígonos sin centroide y la opción 3D de esa definición, marca los polígonos sin área y los centroides duplicados, no genera fichero de errores y carga la topología en memoria.

### Ejemplos de ejecución de BINTOP por la línea de comandos:

`bintop="c:\tabla1.tab" 1 0 0 0 0 1`

1. Hace topología con la tabla c:\tabla1.tab
2. Marca polígonos sin área
3. No marcará polígonos sin centroide
4. Calcula la topología en 2D
5. No marcará centroides duplicados
6. No genera fichero de errores
7. Carga la topología en memoria

`bintop="c:\tabla1.tab" 1 1 0 1 1 "c:\err.bin" 2 1 1`

1. Hace topología con la tabla c:\tabla1.tab
2. Marca polígonos sin área
3. Marca polígonos sin centroide
4. Calcula la topología en 2D
5. Marca centroides duplicados
6. Genera un fichero de errores
7. El fichero será c:\err.bin
8. Con errores con un tamaño de 2 metros
9. Carga el fichero de errores como referencia
10. Carga la topología en memoria

## Características de la orden

| Tipo de orden                                    | [Orden inmediata](bintop.md)                                                 |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                        |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesTopologia.dll                                                   |
| Variables relacionadas                           | [CREAR\_TOPOLOGIAS\_ARCHIVOS\_REFERENCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/crear-topologias-archivos-referencia.md) |
| Órdenes relacionadas                             | [BUSCAR\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md)<br>[CREAR\_TOPOLOGIAS\_CODIGOS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-topologias-codigos-visibles.md)<br>[DEJAR\_TOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar-top.md)<br>[EXPORTAR\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-topologia.md)<br>[TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md)<br>[VER\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-topologias.md) |
| Nombre interno | {4FB24176-ED2B-4626-BB9B-1A80C76D2F7D} |
