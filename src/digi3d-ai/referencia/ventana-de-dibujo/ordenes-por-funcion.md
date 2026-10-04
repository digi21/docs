# Órdenes por función
<!-- id: ordenes-por-funcion -->

Esta página agrupa las órdenes de la ventana de dibujo por la función que realizan. Los grupos siguen los menús de la ventana de dibujo. Las órdenes que no tienen opción de menú están en el grupo que corresponde a lo que hacen.

La lista alfabética completa está en [Órdenes de la ventana de dibujo](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/README.md).

## Archivos

### Abrir, importar y exportar

* [CAPTURA\_VENTANA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/captura-ventana-dibujo.md): Crea un archivo .PNG con el contenido de la ventana de dibujo.
* [CARGA\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-p.md): Lee el contenido de un fichero ASCII de coordenadas, incorporando al archivo de trabajo un punto por cada conjunto de coordenadas \(X Y Z\) leídas.
* [CARGA\_T](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-t.md): Lee la información de un fichero ASCII que contiene coordenadas y textos, incorporando al archivo de trabajo el texto en las coordenadas indicadas.
* [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md): Exporta el archivo actual a otros formatos (BIN, DGN, DWG, Geomedia y otros).
* [EXPORTAR\_ENTIDADES\_SELECCIONADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md): Exporta las geometrías seleccionadas a un archivo de dibujo.
* [EXPORTAR\_VIRTUALES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md): Exporta únicamente las entidades virtuales a un archivo nuevo.
* [FICHERO\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-dibujo.md): Especifica al sistema el fichero de dibujo con el cual se va a trabajar, entre los archivos de referencia cargados con la orden CARGA\_F.
* [FIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin.md): Da por finalizada la sesión de trabajo sobre el fichero actual.
* [IMPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md): Importa archivos de otros formatos (BIN, DGN, DWG, Geomedia y otros) en el archivo de dibujo.
* [IMPORTAR\_UNIENDO\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar-uniendo-poligonos.md): Importa uno o varios archivos en el archivo de dibujo y une los polígonos importados que sean colindantes con los del archivo de dibujo y que tengan los mismos códigos y atributos de base de datos.
* [NUEVO\_PROYECTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/nuevo-proyecto.md): Muestra el cuadro de diálogo para abrir un modelo fotogramétrico o un archivo de dibujo.
* [PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md): Especifica los parámetros que se enviarán al importador o exportador correspondiente, de modo que no aparezca el cuadro de diálogo de configuración al importar o exportar un archivo de ese tipo.
* [SALIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/salir.md): Guarda el archivo de dibujo activo y cierra Digi3D.AI.

### Archivos de referencia

* [CAMBIA\_FICHEROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md): Cambia el fichero de dibujo activo por el fichero de dibujo que tengas de referencia, intercambiándose.
* [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md): Visualiza en pantalla, junto al fichero actual de dibujo, uno o varios ficheros gráficos de referencia.
* [DEJAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md): Descarga los ficheros de referencia que se encuentren unidos al fichero de trabajo.
* [RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md): Recarga los archivos de referencia que admiten región de interés para con las entidades que solapan con la vista actual.

### Herramientas de archivo

* [ASIGNAR\_ETIQUETAS\_ARCHIVO\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-etiquetas-archivo-dibujo.md): Asigna etiquetas a un archivo de dibujo en el panel de archivos de dibujo.
* [BAK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bak.md): Realiza una copia de seguridad del fichero de dibujo activo.
* [BININFO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bininfo.md): Visualiza por pantalla información relativa a las entidades de los ficheros de dibujo cargados.
* [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md): Elimina en el fichero de dibujo todos los elementos que tengan la marca de borrado y actualiza las topologías cargadas en memoria.
* [FICHERO\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md): Establece o cambia el fichero de puntos que utiliza DigiNG sin necesidad de abandonar la sesión de trabajo y salir a la pantalla de inicio del programa.
* [GUARDAR\_TABLA\_CODIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar-tabla-codigos.md): Guarda en un archivo la tabla de códigos activa.
* [PRODUCCION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/produccion.md): Permite generar un fichero con la información acerca de la producción del archivo de dibujo abierto en ese momento.

## Edición

### Deshacer, buscar y entidades de interés

* [ANULA\_ENTIDADES\_DE\_INTERES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-entidades-de-interes.md): Anula las entidades de interés de modo que todas las entidades cargadas se activan para todos los procesos.
* [BUSCAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar.md): Especifica criterios de búsqueda para entidades.
* [ENTIDADES\_DE\_INTERES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entidades-de-interes.md): Especifica las entidades de interés en la que se centrarán las órdenes que realizan modificaciones sobre entidades.
* [REDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redo.md): Rehace la última operación deshecha con la orden UNDO.
* [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md): Deshace las últimas acciónes efectuadas por el programa.

### Eliminar, recortar y recuperar entidades

* [BORRA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md): Borra todas aquellas entidades que tengan un código igual al indicado por el usuario.
* [BORRA\_COD\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-v.md): Borra todas aquellas entidades que tengan un código igual al teclado por el usuario y que además estén asociadas a una ventana, bien en el interior de la ventana, bien en solape con ella o bien que se corten con la ventana misma.
* [BORRA\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md): Borra del dibujo las entidades gráficas y textos que se indiquen.
* [BORRA\_LIN1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-lin1.md): Borra las líneas registradas con un solo punto y los elementos cuyos vértices coinciden todos.
* [BORRA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md): Borra la última entidad registrada en el fichero de dibujo.
* [BORRA\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-v.md): Borra el dibujo de las entidades gráficas que se encuentran dentro de los límites de una entidad, definida previamente por el usuario.
* [CORTAR\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f.md): Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo elegida por el usuario.
* [CORTAR\_F\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f-centroide.md): Genera un nuevo fichero con los elementos que se encuentren dentro de los límites de una entidad de dibujo con un centroide específico.
* [LIMPIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limpia.md): Corta las entidades que atraviesan el contorno de textos o de líneas límite y borra o recodifica los tramos que quedan dentro.
* [RECUPERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md): Permite recuperar los elementos marcados con la señal de borrado en el fichero de dibujo, debemos tener la orden BORRADOS activada.
* [RECUPERA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera-cod.md): Recupera todas aquellas entidades borradas que tengan un código igual al tecleado.

### Códigos y atributos de las entidades

* [ACTUALIZA\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/actualiza_atributos.md): Actualiza los atributos de la geometría seleccionada con los activos en el panel Atributos Activos.
* [ANADIR\_CODIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos.md): Añade los códigos de la lista de códigos activos a una entidad seleccionada.
* [CAMB\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md): Sustituye los atributos de la geometría seleccionada por los activos en el panel Atributos Activos.
* [CAMB\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md): Cambia el código asignado a un elemento gráfico.
* [EDITAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar_atributos.md): Edita los atributos de la entidad seleccionada.
* [EDITAR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-cod.md): Edita los códigos de la entidad seleccionada.
* [ELIMINAR\_CODIGOS\_DESCONOCIDOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-desconocidos.md): Elimina todos los códigos desconocidos del archivo de dibujo.
* [RENOMBRAR\_CODIGOS\_DESCONOCIDOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renombrar-codigos-desconocidos.md): Permite renombrar los códigos desconocidos localizados en el archivo de dibujo.
* [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md): Cambia el código correspondiente a una serie de entidades por otro código, ya sea el activo o el código que se especifique en la llamada a la orden.
* [RENOMCOD\_SEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-sel.md): Cambia el código correspondiente otro código a las entidades seleccionadas.
* [SEPARA\_MULTICOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/separa-multicod.md): Explota entidades con múltiples códigos en múltiples entidades con un solo código.
* [SUSTITUYE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sustituye-cod.md): Sustituye los códigos de la entidad seleccionada por los activos.

### Coordenadas: mover, copiar y duplicar

* [CAMB\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md): Sustituye la altitud asignada a un elemento gráfico, por un nuevo valor.
* [CAMB\_Z\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z-activa.md): Cambia la Z de uno o más elementos a la Z que está activa en ese momento.
* [COPIA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md): Realiza una copia de una entidad de dibujo permitiendo rotarla con un segundo dato.
* [COPIA2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md): Copia una entidad de dibujo, aplicando traslación, factor de escala y giro.
* [COPIAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md): Realiza una copia de una entidad de dibujo.
* [DESPLAZAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar.md): Desplaza entidades del archivo de dibujo distancias definidas por el usuario mediante desplazamientos en X, Y y Z.
* [DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md): Realiza una copia de una entidad sobre sí misma.
* [DUPLICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md): Duplica una entidad respetando su código.
* [EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editor.md): Permite editar las coordenadas de la geometría que se seleccione.
* [JUNTAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar-z.md): Asigna la Z de un punto digitalizado al vértice más cercano de cada línea próxima a ese punto.
* [MOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md): Cambia la posición de una o varias entidades en X, Y y Z.
* [MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md): Permite cambiar la cota de una o varias entidades.
* [REDONDEA\_COORDENADA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redondea-coordenada.md): Sustituye por un valor dado las coordenadas X o Y de los vértices de las líneas y polígonos seleccionados que difieren de ese valor como máximo una tolerancia.
* [REESCRIBE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/reescribe.md): Reescribe las geometrías seleccionadas.
* [ZFIJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md): Asigna a todos los vértices de la geometría/s seleccionada/s una misma coordenada Z, múltiplo de la equidistancia.

### Polilíneas

* [ACUERDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acuerdo.md): Dibuja un acuerdo circular entre dos segmentos con un vértice común de una entidad.
* [AJUSTA\_AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-area.md): Mueve el segmento seleccionado para ajustar el área de la línea cerrada seleccionada al área deseada.
* [ALINEAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/alinear.md): Mueve los vértices cuya distancia a la línea virtual digitalizada sea inferior o igual al valor de la distancia activa principal.
* [BORRA\_VERTICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-vertice.md): Elimina un vértice de una entidad lineal.
* [CAMB\_MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-maxpuntos.md): Divide las entidades lineales, con un número de vértices superior al especificado, en varios tramos con menor número de vértices.
* [CAMB\_SEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen.md): Modifica el sentido en que se han registrado los puntos después de haber digitalizado un elemento gráfico.
* [CAMB\_SEN\_BAJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-baja.md): Cambia el sentido de una línea para que quede digitalizada desde el extremo más alto hacia el más bajo.
* [CAMB\_SEN\_SUBE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-sube.md): Cambia el sentido de una línea para que quede digitalizada desde el extremo más bajo hacia el más alto.
* [CIERRA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra.md): Cierra una entidad ya existente en el fichero de dibujo.
* [CORTA\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/corta-2p.md): Corta una entidad por dos puntos de la misma.
* [CORTAR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-e.md): Corta o descompone un elemento en otros dos.
* [CORTAR\_Y\_BORRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-y-borrar.md): Corta o descompone un elemento en otros dos y luego elimina uno de los dos elementos creados.
* [COTAS\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cotas-curvas.md): Asigna cota a las curvas de nivel de manera global.
* [CRUCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cruce.md): Dibuja el cruce de una entidad con otras dos, de forma que el tramo de la primera comprendido entre los puntos de intersección con las dos últimas, se elimina del dibujo.
* [DESPLAZAR\_ORIGEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar-origen.md): Cambia la localización del origen \(comienzo y final\) de una línea cerrada.
* [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md): Modifica la posición planimétrica \(X, Y\) de los vértices de un elemento.
* [EDITAR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md): Modifica la posición tridimensional \(X, Y, Z\) de los vértices de un elemento.
* [EDITAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md): Modifica la coordenada Z de la entidad seleccionada.
* [ESTIRA\_RECORTA\_POR\_TOLERANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/estira-recorta-por-tolerancia.md): Estira o recorta extremos de líneas visibles para que toquen a otras.
* [EXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext.md): Estira o recorta una entidad hasta el punto de intersección con otra entidad dada.
* [EXT\_M](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-m.md): Estira o recorta un grupo de entidades hasta que interseccionen con otra entidad dada.
* [EXT\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-p.md): Estira o recorta una entidad hasta su intersección con otra quedando ambas partidas en el punto de intersección, es decir, genera un nodo en este punto.
* [EXT\_PLANO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-plano.md): Extiende el extremo de una línea más cercano a la selección hasta un plano seleccionado.
* [EXT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext-xyz.md): Estira o recorta una entidad contra un límite haciendo que la coordenada Z del extremo ajustado coincida con la del límite.
* [EXT2X](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext2x.md): Prolonga dos entidades hasta su intersección.
* [EXTIENDE\_EXTREMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extiende_extremo.md): Prolonga el extremo de una polilínea dinámicamente.
* [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md): Generaliza líneas, polígonos y entidades complejas: elimina los vértices superfluos midiendo las distancias en el espacio (X, Y y Z).
* [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md): Generaliza líneas y polígonos midiendo las distancias solo en el plano XY: la Z de los vértices no interviene.
* [INSERTA\_VÉRTICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inserta-vertice.md): Inserta un vértice en una línea o en un polígono.
* [INTERPOLA\_Z\_ENTRE\_VERTICES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/interpola-z-entre-vertices.md): Interpola la coordenada Z de los vértices comprendidos entre dos vértices seleccionados de una línea.
* [JUNTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar.md): Traslada todos los puntos en un entorno, que será determinado por el tamaño del cursor, a un mismo punto.
* [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md): Modifica el trazado geométrico de una entidad en XY.
* [MOD\_MÚLTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md): Modifica el trazado geométrico de varias entidades en XY.
* [MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md): Modifica el trazado geométrico de una entidad en XYZ.
* [MOD\_Z\_MÚLTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md): Modifica el trazado geométrico de varias entidades en XYZ.
* [MODIFICA\_VÉRTICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/modifica-vertice.md): Modifica la posición de un vértice en una línea o en un polígono.
* [RET](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/ret.md): Retranquea un segmento de una entidad.
* [SUAVIZA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/suaviza.md): Suaviza la forma geométrica de un elemento lineal existente en el dibujo.
* [SUAVIZA\_SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/suaviza-spline.md): Suaviza una línea creando una spline cúbica.
* [TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol.md): Establece el _factor de tolerancia_ en el proceso de generalización.
* [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol-ang.md): Establece el _factor de tolerancia angular_ en el proceso de generalización.
* [TRIM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim.md): Corta una entidad hasta su punto de intersección con el borde de otra.
* [TRIM\_LADO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-lado.md): Recorta múltiples entidades, seleccionando primero la línea de límite y luego digitalizando un punto a un lado.
* [TRIM\_M](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/trim-m.md): Recorta múltiples entidades, seleccionando primero la línea de límite y luego digitalizando un límite virtual.
* [UNIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md): Une dos entidades lineales que has de seleccionar, generando un único elemento de dibujo.
* [UNIR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-cod.md): Une polilíneas que comparten un código y que corta una línea de selección.

### Puntos

* [CAMB\_ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-esc-act.md): Asigna la escala activa a uno o varios puntos del dibujo.
* [EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md): Convierte el símbolo de cada punto del archivo de dibujo activo en líneas independientes con los códigos del punto, y borra el punto.
* [R\_PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md): Rota un símbolo puntual previamente insertado en el archivo de dibujo.

### Textos

* [BORRAR\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-texto.md): Borra todos los textos cuyo "texto" coincida con alguno de los parámetros (admite comodines).
* [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md): Asigna el ángulo activo a la rotación de uno o varios textos o puntos del dibujo.
* [CAMB\_AT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md): Modifica la altura de uno o varios textos del dibujo.
* [CAMB\_CARÁCTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-caracter.md): Sustituye un carácter de texto determinado por otro diferente.
* [CAMB\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md): Modifica la justificación de uno o varios textos existentes en el dibujo.
* [CAMB\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md): Modifica la justificación de uno o varios textos existentes en el dibujo, pero sin modificar su posición.
* [CAMB\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-texto.md): Sustituye todos los textos iguales por otro que ha de ser especificado por el usuario.
* [EDITAR\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-texto.md): Edita un texto del fichero de dibujo.
* [R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md): Rota un texto ya existente en el archivo de dibujo.
* [REEMPLAZAR\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/reemplazar-texto.md): Reemplazar un texto por otro.

### Polígonos

* [BORRAR\_HUECO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-hueco.md): Permite borrar un hueco de un polígono.
* [CORTAR\_POLÍGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-poligono.md): Recorta un polígono en varios polígonos en función de las intersecciones del polígono a recortar y la línea de corte.
* [EXPLOTAR\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md): Divide el polígono en todas las entidades que lo forman.
* [EXPLOTAR\_POLIGONOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md): Divide varios polígonos, en todas las entidades que los forman.
* [INSERTAR\_HUECO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md): Inserta un hueco en un polígono o en una línea cerrada.
* [RECORTAR\_POLÍGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recortar-poligono.md): Recorta un polígono eliminando la parte de éste que intersecciona con un límite.
* [RECORTAR\_POLÍGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recortar-poligonos.md): Recorta todos los polígonos que interseccionen con un límite.

### Complejos

* [EXPLOTAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md): Explota las entidades complejas quedando divididas por las cadenas de líneas que componen la entidad compleja.
* [EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md): Explota las entidades complejas quedando divididas por las cadenas de líneas que componen la entidad compleja.
* [EXPLOTAR\_COMPLEJOS\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md): Divide varios elementos complejos por código, sin respetar el código de los sub-elementos.

### Avanzado

* [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md): Explota la simbología con la escala configurada en la pestaña Archivo de dibujo.
* [DIVIDIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dividir.md): Inserta textos o símbolos a lo largo de una entidad lineal.
* [ORDENA\_POR\_CÓDIGO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo.md): Ordena por código las entidades de un fichero, agrupando en el fichero las entidades por el código al que pertenezcan.
* [ORDENA\_POR\_CÓDIGO\_N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo-n.md): Ordena por código numérico las entidades de un fichero, agrupando en el fichero las entidades por el código numérico al que pertenezcan.
* [ORDENA\_POR\_DIGI\_TAB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-digitab.md): Reordena las entidades de un archivo según el orden en la tabla de códigos activa.
* [ROTULA\_DESCRIPCION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-descripcion.md): Rotula entidades puntuales con un texto cuyo texto es la descripción del código del punto que se está rotulando.
* [TRANSFORMA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/transforma.md): Realiza transformaciones en el archivo de dibujo.

## Visualización de códigos y entidades

* [ASIGNAR\_REPRESENTACIONES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md): Asigna un archivo de representaciones para modificar la representación de las geometrías en pantalla.
* [COLOR\_DESCONOCIDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/color-desconocido.md): Establece el color con el que se dibujan las entidades cuyo código es desconocido.
* [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md): Desactiva la visualización de uno o varios códigos.
* [OFF\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md): Desactiva códigos en la ventana de dibujo para un determinado número de archivo.
* [OFF\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_expresion_python.md): Desactiva la visualización de geometrías que devuelvan verdadero en la expresión Python pasada por parámetros.
* [OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md): Desactiva códigos en la pantalla ortogonal.
* [OFF\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md): Oculta la visualización de todas las geometrías.
* [OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md): Desactiva el código \(o códigos\) que no se desean visualizar en la pantalla de dibujo, tanto en DigiNG como en la pantalla de visión estereoscópica.
* [OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md): Desactiva códigos en la pantalla fotogramétrica y en la de dibujo.
* [OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md): Desactiva códigos en la pantalla estereoscópica.
* [OFFS\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-archivo.md): Desactiva códigos en la ventana fotogramétrica para un determinado número de archivo.
* [OFFS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md): Desactiva códigos en la pantalla fotogramétrica.
* [ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md): Activa la visualización de uno o varios códigos en la ventana de dibujo.
* [ON\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md): Activa códigos en la ventana de dibujo para un determinado número de archivo.
* [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md): Activa la visualización de geometrías que devuelvan verdadero en la expresión Python pasada por parámetros.
* [ON\_SOLO\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_solo_expresion_python.md): Activa la visualización únicamente de las geometrías que devuelvan verdadero en la expresión Python pasada por parámetros.
* [ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md): Activa códigos en la pantalla ortogonal.
* [OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md): Activa el código \(o códigos\) que se desea visualizar en el dibujo, tanto en la pantalla de visión estereoscópica como en Digi.NG.
* [OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md): Activa códigos en la pantalla fotogramétrica y la de dibujo.
* [ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md): Activa códigos en la pantalla estereoscópica.
* [ONS\_ARCHIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-archivo.md): Activa códigos en la ventana fotogramétrica para un determinado número de archivo.
* [ONS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md): Activa códigos en la pantalla fotogramétrica.
* [ONSOLO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md): Activa únicamente los códigos especificados en la ventana de dibujo y en la ventana fotogramétrica.
* [PATRONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/patrons.md): Activa/desactiva la visualización de los patrones de línea en la pantalla de visualización estereoscópica.
* [REPRESENTACION\_DINAMICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/representacion-dinamica.md): Asigna como representación dinámica la pasada por parámetros.
* [VER\_SOLO\_CÓDIGOS\_ACTIVOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-codigos-activos.md): Activa únicamente los códigos activos y apaga el resto, en la pantalla de dibujo y en la pantalla estereoscópica.
* [VER\_SOLO\_CÓDIGOS\_ENTIDAD\_SELECCIONADA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/var-solo-codigos-entidad-seleccionada.md): Deja activos en pantalla solamente los códigos de la entidad seleccionada, apagando el resto.
* [VER\_SOLO\_CON\_ENLACE\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-con-enlace-bbdd.md): Muestra únicamente las entidades que tienen algún enlace a la base de datos.
* [VER\_SOLO\_ENTIDADES\_CON\_ENLACE\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-con-enlace-bbdd.md): Muestra únicamente las entidades en las que todos sus códigos tienen enlace a la base de datos.
* [VER\_SOLO\_ENTIDADES\_SELECCIONADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-seleccionadas.md): Oculta todas las entidades excepto las seleccionadas.
* [VER\_SOLO\_ENTIDADES\_SIN\_ENLACE\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-entidades-sin-enlace-bbdd.md): Muestra únicamente las entidades en las que ninguno de sus códigos tiene enlace a la base de datos.
* [VER\_SOLO\_ETIQUETAS\_CÓDIGOS\_ACTIVOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-etiquetas-codigos-activos.md): Activa únicamente los códigos pertenecientes a las etiquetas a las que pertenecen los códigos activos.
* [VER\_SOLO\_ETIQUETAS\_ENTIDAD\_SELECCIONADA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-etiquetas-entidad-seleccionada.md): Activa únicamente los códigos que pertenezcan a las distintas etiquetas a las que pertenecen los códigos de la entidad seleccionada.
* [VER\_SOLO\_SIN\_ENLACE\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-solo-sin-enlace-bbdd.md): Muestra únicamente las entidades que tienen al menos un código sin enlace a la base de datos.
* [VER\_TODAS\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-todas-entidades.md): Activa la visualización de todas las entidades.

## Zooms y vista

* [ABRIR\_BING\_MAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-bing-maps.md): Abre una ventana de Bing Maps en las coordenadas donde está el cursor en la ventana de dibujo.
* [ABRIR\_GOOGLE\_MAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-maps.md): Solicita un punto y abre una ventana de Google Maps centrada en las coordenadas de ese punto.
* [ABRIR\_GOOGLE\_STREET\_VIEW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-street-view.md): Solicita un punto y abre una ventana de Google Street View en las coordenadas de ese punto.
* [ABRIR\_OPEN\_STREET\_MAP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-open-street-map.md): Solicita un punto y abre una ventana de Open Street Map en las coordenadas de ese punto.
* [ABRIR\_SIGPAC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-sigpac.md): Solicita un punto y abre una ventana del visor de SIGPAC en las coordenadas de ese punto.
* [CAMARA\_CONICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-conica.md): Asigna como cámara en la ventana de dibujo una cámara cónica.
* [CAMARA\_ORTOFONAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-ortofonal.md): Asigna como cámara en la ventana de dibujo una cámara ortogonal.
* [ENTRAR\_EN\_ESFERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/entrar-en-esfera.md): Entra en una esfera seleccionando un punto en pantalla.
* [ESCALA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escala.md): Al ejecutar esta orden, se informa de la escala de visualización actual del fichero de dibujo.
* [ESFERA\_ANTERIOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/esfera-anterior.md): Entra en la esfera anterior.
* [ESFERA\_SIGUIENTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/esfera-siguiente.md): Entra en la siguiente esfera.
* [GIRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/girar.md): Gira la ventana de visualización.
* [IR\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ir-a.md): Lleva el índice del restituidor Digi3D al punto donde esté el cursor o al punto que se le especifique.
* [MOVER\_CAMARA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-camara-fps.md): Mueve la cámara cónica como un juego en primera persona.
* [PARAMETROS\_CAMARA\_CONICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-camara-conica.md): Asigna parámetros de la cámara cónica.
* [PUNTO\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-vista.md): Sitúa el punto de vista de la ventana ortográfica en una de las vistas predefinidas.
* [PUNTO\_VISTA\_DINAMICO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-vista-dinamico.md): Permite girar dinámicamente el punto de vista de la ventana ortográfica mediante una esfera de rotación.
* [REGENERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/regenera.md): Regenera la pantalla, actualizando la visualización del fichero de dibujo.
* [ROTAR\_CÁMARA\_FPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotar_camara_fps.md): Rota la cámara en la ventana de dibujo mediante movimientos del ratón.
* [ZOOM\_ANTERIOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md): Restaura la vista que tenía la ventana de dibujo antes del último cambio de vista.
* [ZOOM\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md): Ejecuta un zoom en la entidad seleccionada.
* [ZOOM-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-menos.md): Disminuye el factor de zoom.
* [ZOOM+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-mas.md): Aumenta el factor de zoom.
* [ZOOM2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom2p.md): Permite desplazarnos con el ratón en la pantalla de DigiNG.
* [ZOOMA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zooma.md): Centra la visualización de los elementos de la pantalla, en torno al punto donde está el cursor/restituidor.
* [ZOOMDER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomder.md): Permite una visualización selectiva del dibujo hacia la derecha.
* [ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md): Realiza un zoom extendido.
* [ZOOME\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome-r.md): Realiza un zoom extendido por recinto, calculando topologías en tiempo real.
* [ZOOMIN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomin.md): Aumenta el factor de zoom.
* [ZOOMINF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoominf.md): Permite una visualización selectiva del dibujo hacia abajo.
* [ZOOMIZQ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomizq.md): Permite una visualización selectiva del dibujo hacia la izquierda.
* [ZOOMOUT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomout.md): Disminuye el factor de zoom.
* [ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md): Permite hacer un centrado del dibujo en el punto que escoja el operador.
* [ZOOMSUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomsup.md): Permite una visualización selectiva del dibujo hacia arriba.
* [ZOOMV](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md): Visualiza por pantalla el contenido de una zona de dibujo que el usuario ha de indicar, delimitando el contorno con una ventana.

## Inmediato

### Códigos activos

* [CLONAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar.md): Clona las propiedades \(códigos, ángulo activo, altura de texto,...\) de la entidad seleccionada.
* [CLONAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md): Clona los atributos de la entidad seleccionada.
* [CLONAR\_CAMPOS\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md): Clona los campos de BBDD de la geometría seleccionada.
* [CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md): Sustituye los códigos de la lista de códigos activos por los de una entidad seleccionada.
* [CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md): Añade los códigos de una entidad seleccionada a la lista de códigos activa.
* [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md): Establece el código con el que se van a dibujar las entidades.
* [COD\_COTAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-cotas.md): Permite indicar un código con el que se digitalizarán cotas altimétricas.
* [COD\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-curvas.md): Define el código de las curvas directoras y finas.
* [COD\_SIN\_ORDEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-sin-orden.md): Sustituye la lista de códigos activos, igual que la orden COD.
* [COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md): Añade uno o varios códigos a la lista de códigos activos.

### Coordenada Z

* [BAJA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/baja-z.md): Baja la Z del cursor en una cuantía igual a la equidistancia de curvas que se tenga establecida.
* [SUBE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sube-z.md): Sube la Z en una cuantía igual a la equidistancia de curvas que se tenga establecida.

### Tentativos y modos de búsqueda

* [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md): Activa o desactiva el modo de búsqueda automático.
* [AUTOMODOB\_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md): Activa o desactiva el modo de búsqueda exhaustivo.
* [CAMB\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md): Establece el modo de búsqueda o enganche gráfico a elementos del dibujo.
* [CONFIGURAR\_MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md): Configura la tolerancia y los códigos que usa la visualización del paso de curvas de nivel \(variable MOSTRAR\_PASO\_CURVAS\).
* [PARAMETROS\_AUTO\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md): Carga el archivo XML con la configuración del modo de búsqueda automático.

### Medir y consultar entidades

* [LISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista.md): Nos da información de la entidad que se ha seleccionado.
* [LISTA\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista_atributos.md): Muestra en el panel de resultados los atributos de la geometría seleccionada.
* [LISTA\_WKT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista-wkt.md): Lista la geometría seleccionada en formato WKT.
* [MIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide.md): Calcula y presenta por pantalla la distancia entre dos puntos.
* [MIDE\_PERÍMETRO\_LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md): Mide el perímetro \(en el plano\) de la línea seleccionada.
* [MIDE\_PERÍMETRO\_LINEA\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md): Mide el perímetro \(en el espacio, con la coordenada Z\) de la línea seleccionada.
* [MIDE\_PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perp.md): Mide la perpendicular a un segmento seleccionado.
* [MIDE\_SEGMENTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md): Mide \(en el plano\) el segmento seleccionado en la línea seleccionada.
* [MIDE\_SEGMENTO\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md): Mide \(en el espacio, con la coordenada Z\) el segmento seleccionado en la línea seleccionada.
* [MIDE+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-mas.md): Calcula el perímetro en el plano, el perímetro en el espacio y el área de la polilínea que forman un conjunto de vértices.

### Selección

* [DESELECCIONA\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/deselecciona-todo.md): Deselecciona todas las entidades que estén seleccionadas.
* [SELECCIONA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md): Selecciona todas las entidades que tengan entre sus códigos los seleccionados.
* [SELECCIONA\_DENTRO\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md): Permite digitalizar un nuevo polígono y selecciona todas las entidades que estén completamente dentro del polígono.
* [SELECCIONA\_DENTRO\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md): Permite digitalizar una nueva ventana y selecciona todas las entidades que estén completamente dentro de la ventana.
* [SELECCIONA\_EXPRESION\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona_expresion_python.md): Envía a la orden activa todas las geometrías que cumplan con la expresión Python pasada por parámetros o introducida en el cuadro de diálogo.
* [SELECCIONA\_FUERA\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md): Permite digitalizar un nuevo polígono y selecciona todas las entidades que estén completamente fuera del polígono.
* [SELECCIONA\_FUERA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md): Permite digitalizar una nueva ventana y selecciona todas las entidades que estén completamente fuera de la ventana.
* [SELECCIONA\_INDICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md): Permite seleccionar una entidad mediante su índice de registro.
* [SELECCIONA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-inundacion.md): Envía las entidades que forman parte del límite del recinto seleccionado a la orden activa.
* [SELECCIONA\_LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-linea.md): Selecciona aquellas líneas que crucen con una línea virtual generada por el usuario.
* [SELECCIONA\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-multiple.md): Permite seleccionar y deseleccionar múltiples entidades.
* [SELECCIONA\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md): Permite digitalizar un nuevo polígono y selecciona todas las entidades que solapan con este polígono.
* [SELECCIONA\_TODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-todo.md): Selecciona todas las entidades del archivo de dibujo cuando estamos ejecutando órdenes que admitan selección múltiple.
* [SELECCIONA\_TODO\_EN\_CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-todo-en-cursor.md): Selecciona con un solo clic todas las entidades que se cruzan con el cursor.
* [SELECCIONA\_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md): Selecciona la última entidad registrada en el fichero de dibujo, cuando se ha ejecutado una orden en la cual se pide seleccionar una entidad.
* [SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md): Permite digitalizar una nueva ventana y selecciona todas las entidades que solapan con la ventana.

### Teclados virtuales y ejecución de órdenes

* [ANULA\_ORDENES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-ordenes.md): Deja de ejecutar la orden que se está ejecutando en ese momento y las órdenes que esta haya interrumpido.
* [ANULA\_REPITE\_COMANDO\_ACTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anula-repite-comando-activo.md): Si está habilitada la opción de REPITE y se está ejecutando un comando que admite repetición, al ejecutar este comando el comando activo no se repetirá.
* [CAMBIA\_TECLAS\_MNU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-teclas-mnu.md): Permite cambiar el fichero de teclas.
* [ESCAPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escape.md): Termina o da por finalizada una orden.
* [MACROINSTRUCCIONES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/macroinstrucciones.md): Ejecuta macroinstrucciones, también llamadas arrobas.
* [TECLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tecla.md): Asigna órdenes de Digi3D.AI a pulsaciones de teclas en el teclado virtual activo.

### Otras órdenes inmediatas

* [AGREGA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md): Añade las coordenadas de un punto al fichero de puntos que se haya definido en la pantalla de inicio de DigiNG, o que se haya determinado con FICHERO\_P.
* [CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cursor.md): Establece el tamaño del cursor.
* [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md): Introduce las coordenadas de uno o varios puntos.

## Dibujar

### Polilíneas

* [CIERRA\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md): Cierra la línea que se está ejecutando y la finaliza.
* [CONTINUAR\_LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/continuar-linea.md): Continúa una determinada línea seleccionada.
* [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md): Da por finalizada la definición geométrica de una entidad.
* [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md): Dibuja una línea en el archivo actual.
* [PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp.md): Traza líneas perpendiculares a una entidad de dibujo.
* [PERP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-z.md): Sirve para trazar líneas perpendiculares a una entidad de dibujo.
* [SIGUIENTE\_SEGMENTO\_VERTICAL\_HACIA\_ABAJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-abajo.md): Configura la orden activa para indicar que el siguiente segmento a insertar será vertical y formado por dos puntos.
* [SIGUIENTE\_SEGMENTO\_VERTICAL\_HACIA\_ARRIBA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/siguiente-segmento-vertical-hacia-arriba.md): Configura la orden activa para indicar que el siguiente segmento a insertar será vertical y formado por dos puntos.
* [TIPO\_DE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md): Indica al programa la manera de registrar las coordenadas de Z de los vértices de las entidades lineales.
* [U](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md): Borra el último vértice de la entidad que se está registrando en el momento de ejecutar la orden.
* [U2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u2.md): Retrocede eliminando el último tramo dibujado de una entidad lineal, sin retroceder el cursor.
* [UM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/um.md): Borra los últimos puntos de la entidad que se está registrando en el momento de llamar a la orden.
* [XYLINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xylinea.md): Esta orden añade vértices a la orden que se esté ejecutando.
* [XYZLINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xyzlinea.md): Añade vértices a la orden que se esté ejecutando.

### Arcos, splines y circunferencias

* [ARCO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco.md): Dibuja un arco en el espacio a partir de tres puntos definidos por el usuario.
* [ARCO\_TANGENTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco-tangente.md): Dibuja un arco tangente al segmento anterior.
* [CIR2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir2p.md): Dibuja una circunferencia mediante el centro y un punto de la misma.
* [CIR3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir3d.md): Dibuja la circunferencia que pasa por tres puntos dados, en el plano que definen esos tres puntos.
* [CIR3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir3p.md): Dibuja una circunferencia a partir de tres puntos dados.
* [CIRCR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/circr.md): Dibuja una circunferencia mediante la definición de su centro y el radio introducido numéricamente.
* [MULTIARCO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/multiarco.md): Dibuja arcos de forma consecutiva y unidos entre sí.
* [SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md): Dibuja una figura usando arcos convirtiéndolos en una curva fluida.

### Paralelas

* [PARALELA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela.md): Dibuja líneas paralelas a una o varias entidades, a una distancia determinada.
* [PARALELA\_DA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-da.md): Dibuja una paralela con los parámetros especificados en la variable Distancia Activa.
* [PARALELA\_DINÁMICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica.md): Dibuja una línea paralela a una entidad a la distancia que especifique el operador, nos irá mostrando cómo queda la paralela según movemos el cursor.
* [PARALELA\_DINAMICA\_CON\_EJE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje.md): Dibuja una paralela dinámica con el código/s activo/s y un eje entre las dos paralelas con el código/s pasado/s por parámetros.
* [PARALELA\_DINAMICA\_CON\_EJE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z.md): Dibuja una paralela dinámica con el código/s activo/s y un eje entre las dos paralelas con el código/s pasado/s por parámetros.
* [PARALELA\_DINAMICA\_CON\_EJE\_Z\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-con-eje-z-activa.md): Dibuja una paralela dinámica con el código/s activo/s y un eje entre las dos paralelas con el código/s pasado/s por parámetros.
* [PARALELA\_DINAMICA\_PLANO\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-plano-dibujo.md): Realiza una paralela dinámica en el plano que tenga la ventana de dibujo.
* [PARALELA\_DINÁMICA\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-xyz.md): Dibuja una línea paralela a una entidad a la distancia que especifique el operador, teniendo en cuenta la Z de la ventana fotogramétrica.
* [PARALELA\_DINÁMICA\_Z\_FIJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica-z-fija.md): Dibuja una línea paralela a una entidad a la distancia que especifique el operador, con una determinada Z.
* [PARALELA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-z.md): Dibuja una paralela a una línea existente asignando la Z del punto digitalizado a todos los vértices de la paralela generada.

### Figuras, señalización y rellenos

* [2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p.md): Dibuja un cuadrado a partir de dos puntos.
* [2P\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p-aa.md): Dibuja un rectángulo girado.
* [3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/3/3p.md): Dibuja una forma geométrica rectangular.
* [CEBRA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cebra.md): Facilita el dibujo de pasos de cebra.
* [CEBRA\_4P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cebra-4p.md): Facilita el dibujo de pasos de cebra, introduciendo sólo el número de las franjas blancas y 4 puntos que definan la forma y posición de los pasos de cebra.
* [CUADROS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cuadros.md): Traza segmentos tanto paralelos como perpendiculares a la base.
* [CUADROS\_4P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cuadros-4p.md): Dibuja escaleras o matrices de polígonos de cuatro lados.
* [EJE\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eje-a-poligono.md): Dibuja un polígono que rodea a una línea existente.
* [ESCALERA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escalera.md): Dibuja escaleras en el espacio.
* [ESCALERA\_DA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/escalera-da.md): Dibuja una escalera en el espacio, especificando el ancho de los peldaños.
* [HORIZON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/horizon.md): Se utiliza para hacer líneas de señalización horizontal, mediante la inserción de símbolos \(compuestos por segmentos horizontales y verticales\) y de espacios en blanco.
* [PERP\_A](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/perp-a.md): Dibuja segmentos perpendiculares a una entidad dada.
* [PUNTEAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/puntear.md): Rellena el interior de una entidad superficial de contorno cerrado con una trama de puntos.
* [RAYAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rayar.md): Raya el interior de una entidad superficial de contorno cerrado.
* [RECTANGULO\_2P\_NORTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rectangulo-2p-norte.md): Dibuja un rectángulo orientado al norte definido por dos puntos opuestos en diagonal.
* [RECTANGULO\_DR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rectangulo-dr.md): Digitaliza un rectángulo con las dimensiones especificadas permitiendo rotarlo.
* [SIMB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/simb.md): Rellena el interior de una entidad superficial de contorno cerrado usando una trama de símbolos.
* [TRAMAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tramar.md): Trama el interior de una entidad superficial de contorno cerrado.

### Puntos

* [PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md): Dibuja un punto en el archivo actual.
* [PUNTO\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-2p.md): Dibuja un punto en el archivo actual con la escala y rotación calculados con el segundo punto insertado.
* [PUNTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto-r.md): Inserta un símbolo puntual en el dibujo permitiendo al usuario indicar una rotación.
* [SACA\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/saca-p.md): Coloca un punto junto a cada texto del archivo de dibujo que tenga alguno de los códigos indicados.

### Polígonos y centroides

* [CREAR\_POLÍGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md): Crea un polígono con huecos a partir de líneas cerradas existentes.
* [EXTRAER\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroide.md): Dibuja el centroide del polígono o la línea que se seleccione.
* [EXTRAER\_CENTROIDES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroides-cod.md): Genera un centroide dentro de los polígonos o líneas cerradas que tengan alguno de los códigos seleccionados.
* [FORMAR\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md): Crea/modifica polígonos mediante inundaciones y eliminando segmentos comunes.
* [POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md): Dibuja un polígono.

### Textos y rótulos

* [1TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md): Inserta el texto pasado por parámetros \(o introducido en la barra de mensajes\) una única vez independientemente del estado del conmutador REPITE.
* [COTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cota.md): Digitaliza una cota altimétrica.
* [ROTULA\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md): Rotula una o varias curvas de una vez con su cota correspondiente.
* [ROTULA\_REFERENCIA\_CATASTRAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-referencia-catastral.md): Consulta al servicio web del Catastro de España la referencia catastral en las coordenadas de inserción e inserta un texto con la referencia catastral.
* [ROTULA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-z.md): Rotula un punto o varios puntos con su Z correspondiente.
* [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md): Inserta un texto en el archivo de dibujo.
* [TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md): Actúa igual que la orden TEXTO pero si se le pasan parámetros, no oculta el control de edición.
* [TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md): Inserta un texto en el dibujo en la dirección indicada por el usuario.
* [TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md): Actúa igual que la orden TEXTO\_R pero si se le pasan parámetros, no oculta el control de edición.

### Acotar

* [ACOTA\_H\_AUTOMATICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acota-h-automatica.md): Si el sensor activo lo admite, proyecta una línea hacia abajo y hacia arriba y acota la intersección de esta línea con el modelo.
* [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md): Calcula la superficie de entidades gráficas cerradas y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.
* [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md): Inserta un texto con la diferencia de altura \(el incremento de la coordenada Z\) entre dos puntos digitalizados por el usuario.
* [DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md): Inserta un texto con la distancia planimétrica \(2D\) entre dos puntos digitalizados por el usuario.
* [DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md): Inserta un texto con la distancia real \(3D\) entre dos puntos digitalizados por el usuario, teniendo en cuenta la diferencia de cota entre ambos.
* [DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md): Calcula el perímetro \(la longitud\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.
* [DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md): Calcula el perímetro 3D \(la longitud real, teniendo en cuenta los desniveles\) de una entidad gráfica seleccionada y sitúa en la pantalla un texto con este valor, en la posición indicada por el usuario.
* [PONE\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-altura.md): Coloca un texto con el valor de la diferencia en altura entre dos puntos que registrará el usuario.
* [PONE\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-distancia.md): Coloca un texto con el valor de la distancia entre dos puntos.
* [PONER\_XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-xy.md): Coloca dos textos numéricos con los valores de las coordenadas X,Y del punto que selecciones.

### Interpolación

* [DENSIFICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/densifica.md): Inserta vértices en las líneas y polígonos de los códigos indicados para que ningún tramo supere una distancia.
* [INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md): Interpola curvas de nivel.
* [INTER\_EJE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter-eje.md): Interpola una entidad entre otras dos seleccionadas por el usuario.
* [INTERPOLAR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/interpolar-cod.md): Interpola curvas de nivel con cuatro puntos tomando como directrices las entidades de un código.

### Complejos y bloques

* [BLOQUE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md): Almacena en un nuevo fichero una entidad o conjunto de entidades, que podrán ser insertadas posteriormente en cualquier dibujo.
* [BLOQUE\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque-2p.md): Almacena en un nuevo fichero una entidad o conjunto de entidades, que podrán ser insertadas posteriormente en cualquier dibujo.
* [CREAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md): Crea elementos complejos a partir de varias entidades.
* [CREAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md): Crear elementos complejos agrupando entidades con el mismo código.
* [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md): Inserta un fichero de dibujo en el fichero de trabajo.
* [INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md): Inserta un bloque en 3D a partir de tres puntos: el primero fija la posición, el segundo la orientación y el tercero la rotación.
* [INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md): Inserta un fichero de dibujo en el archivo de trabajo girado el ángulo activo.
* [INS\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md): Inserta el contenido de un archivo de dibujo como un único elemento complejo puntual.
* [INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md): Permite insertar un bloque, almacenado en un fichero de dibujo, en una determinada posición del fichero de trabajo actual.

### Gráfico de hojas

* [HOJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/h/hoja.md): Crea un archivo de dibujo con un marco de hoja a una determinada escala, con marcas cada cierta distancia y rótulos de coordenadas.
* [RECORTA\_TRAZA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recorta-traza.md): Crea una serie de hojas al estilo de la orden HOJA.
* [TRAZA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/traza.md): Crea un gráfico de hojas en forma de traza con centroides para crear con posterioridad hojas con la orden RECORTA\_TRAZA.

### Imágenes

* [INS\_FOTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto.md): Inserta una imagen en el archivo de dibujo mediante dos puntos: el primero para el centro y el segundo para indicar la rotación y escala.
* [INS\_FOTO\_2P\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto-2p-aa.md): Inserta una imagen en el archivo de dibujo mediante dos puntos y ángulo activo.
* [INS\_FOTO\_3P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-foto-3p.md): Inserta una imagen en el archivo de dibujo mediante tres puntos.

## MDT

* [CREA\_DEM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crea-dem.md): Genera una nueva triangulación a partir de cartografía existente dentro del límite seleccionado y proyecta sobre esa triangulación una malla regular de puntos, que guarda en un archivo LAS, en un archivo GeoTIFF o en los dos.
* [CURVAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/curvar.md): Realiza el curvado de una triangulación.
* [MDT\_MUEVE\_DIGI3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mdt-mueve-digi3d.md): Indica si los modelos digitales del terreno cargados modifican la coordenada Z de Digi3D.
* [MOVER\_Z\_V](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md): Permite cambiar la cota de entidades situadas dentro de una entidad cerrada.
* [PROYECTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md): Proyecta la/s geometría/a seleccionada/s.
* [PROYECTA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md): Proyecta entidades sobre el MDT cargado en le momento de ejecutarla.
* [PROYECTA\_COD\_ETIQUETA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md): Proyecta todas la entidades con un determinado código sobre los MDTs cargados que tengan asignada la etiqueta indicada.
* [PROYECTA\_POR\_CONDICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md): Proyecta los vértices de las entidades con un determinado código sobre los MDT cargados si la diferencia de Z cumple una condición.
* [PROYECTA\_PUNTOS\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md): Proyecta sobre los MDT cargados las entidades que forman los recintos de una topología.
* [TRIANGULAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md): Calcula la triangulación de un Modelo Digital del Terreno \(MDT\) a partir de las geometrías de la ventana de dibujo.
* [TRIANGULAR\_LINEAS\_EXCEPTO\_PUNTOS\_CON\_CODIGO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md): Calcula una triangulación exceptuando aquellos nodos a los que lleguen una línea con un determinado código.
* [TRIANGULAR\_PUNTOS\_TOPOLOGIA\_EXCEPTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md): Calcula una triangulación con las líneas de una topología exceptuando las líneas que tengan un determinado código.

## Ortofoto y ráster

* [ACOPLAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acoplar.md): Genera un archivo TIFF con las entidades de los archivos de dibujo visibles que caen dentro de una línea de límite rectangular, dibujadas con su simbología.
* [CAL\_ORTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cal-orto.md): Efectúa el cálculo para generar ortofotografías.

## Análisis geométricos

* [AGRUPAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md): Agrupa todas las entidades duplicadas en una única entidad por código.
* [AGRUPAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md): Agrupa todas las entidades visibles duplicadas en una única entidad.
* [AJUSTA\_LIMITES\_ARCHIVOS\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md): Agrupa e inserta por tolerancia vértices en las líneas de case entre límites de modelos moviendo los vértices de las geometrías que llegan a esos vértices modificados.
* [ASIGNAR\_Z\_MAXIMA\_VERTICES\_NODO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-maxima-vertices-nodo.md): Localiza todos los vértices que llegan a un determinado nodo y modifica la Z de todos para que se ajuste a la Z máxima.
* [ASIGNAR\_Z\_MAXIMA\_VERTICES\_NODO\_TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-maxima-vertices-nodo-tol.md): Localiza todos los vértices que llegan a un determinado nodo y modifica la Z de todos para que se ajuste a la Z máxima siempre que su Z esté a menos de la tolerancia de la Z máxima.
* [COMPARAR\_Z\_MDT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comparar-z-mdt.md): Compara la coordenada Z de los vértices de las entidades con la Z del modelo digital del terreno cargado y añade al panel de tareas las entidades en las que la diferencia supera una tolerancia.
* [DESAGRUPAR\_ENTIDADES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desagrupar-entidades.md): Desagrupa las entidades que tengan más de un código en múltiples entidades con un único código.
* [DETECTAR\_BUCLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles.md): Detecta bucles \(o auto intersecciones\) en entidades de tipo Línea y Polígono.
* [DETECTAR\_BUCLES\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-bucles-lineas-visibles.md): Detecta bucles en líneas visibles.
* [DETECTAR\_CRUCE\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas.md): Crea una tarea de error por cada intersección de líneas detectada por código.
* [DETECTAR\_CRUCE\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-visibles.md): Crea una tarea de error por cada intersección de líneas visibles detectada.
* [DETECTAR\_CRUCE\_LINEAS\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-cruce-lineas-z.md): Detecta cruces entre líneas y marca como error aquellas cuya diferencia en Z supere una tolerancia.
* [DETECTAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md): Detecta todas las entidades que están duplicadas por código.
* [DETECTAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md): Detecta todas las entidades visibles que están duplicadas.
* [DETECTAR\_ERRORES\_ATRIBUTOS\_BBDD\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-atributos-bbdd-cases.md): Detecta líneas y polígonos de dos archivos de dibujo distintos que tienen continuidad geométrica pero con atributos de BBDD distintos.
* [DETECTAR\_ERRORES\_CONTINUIDAD\_LINEAS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md): Detecta errores de continuidad en líneas que finalizan en el límite de dos modelos y que no continuan en el siguiente modelo.
* [DETECTAR\_INTERSECCION\_SENTIDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-interseccion-sentido.md): Detecta líneas y polígonos que se unen en un nodo con sentidos de digitalización incompatibles.
* [DETECTAR\_LINEAS\_NO\_CONECTADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar_lineas_no_conectadas.md): Crea una tarea de error por cada extremo de línea que no esté conectado por código con otra entidad.
* [DETECTAR\_LINEAS\_NO\_CONECTADAS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-no-conectadas-3d.md): Crea una tarea de error por cada extremo de línea que no esté conectado por código en 3D.
* [DETECTAR\_LINEAS\_VISIBLES\_NO\_CONECTADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md): Crea una tarea de error por cada extremo de línea visible que no esté conectado.
* [DETECTAR\_LINEAS\_VISIBLES\_NO\_CONECTADAS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas-3d.md): Crea una tarea de error por cada extremo de línea visible que no esté conectado en 3D.
* [DETECTAR\_SEGMENTOS\_CORTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-segmentos-cortos.md): Detecta líneas y polígonos con segmentos de longitud inferior al valor especificado.
* [DETECTAR\_ZIGZAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-zigzag.md): Analiza líneas y detecta ZigZags en sus vértices.
* [ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md): Elimina los códigos comunes de todas las entidades visibles duplicadas.
* [ELIMINAR\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md): Elimina las entidades duplicadas manteniendo únicamente la que tenga un código que esté antes en la línea de comandos, por código.
* [ELIMINAR\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md): Elimina las entidades visibles duplicadas manteniendo únicamente la que tenga un código que esté antes en la tabla de códigos.
* [ELIMINAR\_PUNTOS\_DOBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-puntos-dobles.md): Elimina los puntos dobles de las entidades del archivo de dibujo activo.
* [ELIMINAR\_SEGMENTOS\_CORTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-segmentos-cortos.md): Elimina automáticamente vértices de geometrías para evitar que éstas tengan segmentos cuyo perímetro sea inferior a un valor especificado.
* [ELIMINAR\_TODAS\_ENTIDADES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md): Elimina todas las entidades duplicadas, por código.
* [ELIMINAR\_TODAS\_ENTIDADES\_VISIBLES\_DUPLICADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md): Elimina todas las entidades visibles duplicadas.
* [INSERTAR\_VERTICE\_INTERSECCION\_LINEA\_PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-linea-punto.md): Inserta un vértice en la intersección de líneas con puntos.
* [INSERTAR\_VERTICE\_INTERSECCION\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas.md): Inserta un vértice en la intersección de las líneas de los códigos pasados por parámetro.
* [INSERTAR\_VERTICE\_INTERSECCION\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-vertice-interseccion-lineas-visibles.md): Inserta un vértice en la intersección de las líneas que son visibles en la vista ortogonal.
* [JUNTAR\_VERTICES\_CERCANOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/j/juntar-vertices-cercanos.md): Junta vértices cercanos por tolerancia.
* [PARTIR\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas.md): Parte las líneas en sus intersecciones por código.
* [PARTIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md): Parte las entidades visibles por sus intersecciones.
* [UNIR\_LINEAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas.md): Une las líneas visibles que comparten alguno de los códigos indicados.
* [UNIR\_LINEAS\_TABLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md): Une las lineas en pantalla siempre que al nodo no lleguen más de dos entidades con el mismo código.(siempre que tengan el mismo código y continuidad geométrica) por código.
* [UNIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles.md): Une las lineas visibles en pantalla (siempre que tengan el mismo código y continuidad geométrica).
* [UNIR\_LINEAS\_VISIBLES\_TABLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles-tabla.md): Une las lineas visibles en pantalla siempre que al nodo no lleguen más de dos entidades con el mismo código.(siempre que tengan el mismo código y continuidad geométrica).
* [UNIR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md): Une las líneas cuyos códigos se pasen por parámetros si en el nodo de unión coincide la coordenada Z.
* [UNIR\_XYZ\_TABLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz-tabla.md): Une las líneas cuyos códigos se pasen por parámetros si en el nodo de unión coincide la coordenada Z y sólo llegan dos geometrías al nodo.

## Control de calidad

* [CONTROL\_CALIDAD\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-cod.md): Realiza análisis de control de calidad por código.
* [CONTROL\_CALIDAD\_ENTIDADES\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md): Realiza análisis de control de calidad a las entidades visibles.
* [CONTROL\_CALIDAD\_SELECCION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md): Realiza análisis de control de calidad a las entidades seleccionadas.

## Inundación

* [ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md): Añade los códigos activos a las entidades que forman el contorno de los recintos seleccionados en la topología temporal y, opcionalmente, inserta un centroide en el recinto.
* [BUSCAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md): Busca, por inundación, el centroide del polígono topológico sobre el que se está trabajando.
* [DESCARGAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md): Descarga la topologia para inundación cargada en memoria.
* [DIBUJA\_R\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r-i.md): Dibuja recintos topológicos por inundación.
* [EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md): Edita los códigos de las entidades que forman el recinto topológico seleccionado.
* [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md): Genera una topología para ejecutar con posterioridad las órdenes de inundación.
* [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md): Genera una topología para ejecutar con posterioridad las órdenes de inundación.
* [MOSTRAR\_COD\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md): Muestra todos los códigos de los segmentos que forman un recinto topológico por inundación.
* [PONER\_ATR\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md): Añade los códigos activos a las entidades que forman el contorno de los recintos seleccionados en la topología temporal.

## Topología

* [ANADIR\_CODIGOS\_BORDES\_POLIGONOS\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos-bordes-poligonos-topologia.md): Añade los códigos activos a las líneas que forman el borde de los polígonos que tengan un determinado centroide para una determinada topología.
* [ASIGNAR\_Z\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-z-centroide.md): Asigna la Z del centroide a las líneas que forman cada polígono de las topologías indicadas.
* [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md): Calcula la topología del archivo de dibujo activo y busca errores en la formación de polígonos y centroides.
* [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md): Automatiza la edición del archivo de dibujo.
* [BORRA\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md): Borra un código (atributo) de las entidades que forman el contorno de los recintos seleccionados en la topología temporal.
* [BORRA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md): Borra códigos por recinto topológico.
* [BUSCAR\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md): Localiza el centroide dentro de un recinto, después de haber cargado uno o varios topológicos.
* [CAMB\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod-r.md): Cambia el código por recinto topológico.
* [CAMBIA\_CODIGO\_LINEAS\_DENTRO\_POLIGONOS\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-codigo-lineas-dentro-poligonos-topologia.md): Cambia el código de los tramos de líneas que estén dentro de polígonos de una topología.
* [CONTROL\_TOPOLOGICO\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md): Detecta polígonos vecinos con centroides distintos entre archivos de dibujo.
* [COPIAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md): Copia el centroide de un recinto de la topología temporal en otros recintos que no tienen centroide.
* [CREAR\_CENTROIDES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-centroides.md): Crea los centroides de los polígonos de las topologías cargadas.
* [CREAR\_TOPOLOGIAS\_CODIGOS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-topologias-codigos-visibles.md): Crea topologías con los códigos visibles en la ventana de dibujo.
* [DEJAR\_TOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar-top.md): Descarga un fichero de topología, generado mediante la orden BINTOP, de los cargados en el momento de ejecutar la orden.
* [DETECTAR\_POLIGONOS\_SIN\_CENTROIDE\_TOPOLOGIAS\_CARGADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-sin-centroide-topologias-cargadas.md): Marca como error aquellos polígonos que se formen al formar una topología con todos los recintos de las topologías cargadas y que no tengan un centroide.
* [DETECTAR\_POLIGONOS\_UNA\_TOPOLOGIA\_DENTRO\_POLIGONOS\_OTRA\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-una-topologia-dentro-poligonos-otra-topologia.md): Marca como error aquellos polígonos de una topología que están dentro de polígonos de alguna de las topologías seleccionadas.
* [DETECTAR\_POLIGONOS\_VECINOS\_MISMO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-vecinos-mismo-centroide.md): Marca como error aquellos polígonos que son vecinos y que tienen el mismo centroide.
* [DETECTAR\_RECINTOS\_SIN\_VECINOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-recintos-sin-vecinos.md): Analiza los recintos topológicos de todas las topologías cargadas y muestra como error aquellos tramos que pertenezcan únicamente a un único recinto topológico, excluyendo aquellos que tengan entre sus códigos alguno de los indicados como códigos de límite.
* [DETECTAR\_SOLAPES\_TODAS\_LAS\_TOPOLOGIAS\_CARGADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-todas-las-topologias-cargadas.md): Marca como error solapes entre polígonos de todas las topologías cargadas.
* [DETECTAR\_SOLAPES\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md): Marca como error solapes entre polígonos de una topología contra las seleccionadas en un listado de topologías cargadas.
* [DIBUJA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r.md): Dibuja recintos topológicos a partir de una topología cargada.
* [ELIMINAR\_MUROS\_POLIGONOS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-muros-poligonos-3d.md): Analiza polígonos creados mediante topologías 3D y elimina muros que superen un determinado alto.
* [ERR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err.md): Visualiza los errores encontrados por BINTRAM en el archivo cargado como referencia.
* [ERR-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-menos.md): Retrocede al error anterior encontrado por BINTRAM.
* [ERR+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-mas.md): Avanza al siguiente error encontrado por BINTRAM.
* [EXPORTAR\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-topologia.md): Exporta a un archivo, como polígonos, las topologías cargadas que se seleccionen.
* [GENERALIZAR\_TOPOLOGIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generalizar-topologia.md): Elimina centroides y líneas para agrupar polígonos vecinos con el mismo centroide en la topología pasada por parámetros.
* [PONER\_COD\_RECINTO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md): Añade el código de recinto a las entidades que forman el contorno de los recintos topológicos seleccionados y, además, inserta en el centroide del recinto un texto con el código de centroide.
* [RENOMCOD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md): Renombra códigos por recinto topológico.
* [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md): Genera polígonos a partir de la topología pasada por parámetros.
* [VER\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/v/ver-topologias.md): Activa o desactiva la visualización de una topología así como cambia su orden.

## Base de datos

* [ANADE\_ATRIBUTO\_ACTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade_atributo_activo.md): Añade un atributo al panel Atributos activos.
* [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md): Esta orden asigna un valor a un atributo en la lista de atributos activos en la barra acoplable de base de datos.
* [ASIGNA\_ATRIBUTO\_BBDD\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md): Asigna un nuevo valor a un campo en la BBDD para una entidad.
* [ASIGNAR\_ANGULO\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md): Solicita al usuario que digitalice dos puntos y asigna el ángulo trigonométrico del segundo respecto al primero en el campo de base de datos pasado por parámetros.
* [ASIGNAR\_AZIMUT\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md): Solicita al usuario que digitalice dos puntos y asigna el valor del azimut en el campo de base de datos pasado por parámetros.
* [ASIGNAR\_DISTANCIA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md): Solicita al usuario que digitalice dos puntos y asigna el valor de la distancia entre los dos puntos en el campo de base de datos pasado por parámetros.
* [CAMBIAR\_VALORES\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambiar-valores-bbdd.md): Cambia valores en la BBDD asociada con el archivo de dibujo.
* [COPIA\_ATRIBUTO\_BBDD\_ENTIDAD\_EN\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md): Copia el valor de un campo de la base de datos de una entidad en un campo de otra entidad.
* [CREAR\_VISTA\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-vista-bbdd.md): Crea un archivo de dibujo virtual que muestra campos de base de datos de un archivo de dibujo determinado.
* [ELIMINA\_ATRIBUTOS\_ACTIVOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina_atributos_activos.md): Elimina todos los atributos del panel Atributos activos.
* [RESETEA\_ATRIBUTOS\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/resetea-atributos-bbdd.md): Asigna como atributos activos los atributos de BBDD de la tabla de códigos para un código.
* [SELECCIONA\_EDITOR\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-editor-bbdd.md): Selecciona en el dibujo las entidades enlazadas a los registros que estén seleccionados en un editor de base de datos.
* [SELECCIONA\_GEOMETRIA\_PANEL\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-geometria-panel-bbdd.md): Selecciona en los paneles editores de bases de datos la geometría que se corresponde con la geometría seleccionada.
* [SELECCIONA\_POR\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md): Envía una selección a la orden activa por atributos de base de datos.
* [SQL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sql.md): Ejecuta las consultas SQL especificadas en el archivo pasado por parámetros.

## Ventanas, tareas y resultados

* [BORRA\_BARRA\_SALIDA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-barra-salida.md): Borra el contenido de la barra de salida.
* [BORRAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-tareas.md): Borra las tareas que se muestran en ese momento en la ventana de tareas.
* [CARGA\_DISPOSICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-disposicion.md): Carga una disposición previamente guardada de ventanas y visualización en DigiNG.
* [CARGAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cargar-tareas.md): Carga un fichero de tareas previamente generado con la orden GUARDAR\_TAREAS en la ventana de tareas en el momento de la ejecución de la orden.
* [CARGAR\_TAREAS\_FICHERO\_FORMATO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cargar-tareas-fichero-formato.md): Carga un fichero de texto con cualquier formato que contenga coordenadas de puntos.
* [GUARDA\_DISPOSICION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guarda-disposicion.md): Guarda la disposición de ventanas y visualización del archivo de dibujo de DigiNG.
* [GUARDAR\_RESULTADOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar_resultados.md): Guarda en un archivo TXT el contenido del panel de resultados.
* [GUARDAR\_TAREAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/guardar-tareas.md): Guarda en un archivo XML las tareas del panel de tareas.
* [LOCALIZAR\_TAREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/localizar-tarea.md): Esta orden solicita al usuario que digitalize un punto y se localiza y selecciona la tarea que hubiera en ese punto (si es que había alguna).
* [MENU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/menu.md): Lanza un menú de usuario de Digi3D a partir de su número.
* [TAREA-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tarea-menos.md): Lleva al usuario a las coordenadas de cada una de las tareas que se están mostrando en la ventana de tareas en ese momento, en sentido descendente.
* [TAREA+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tarea-mas.md): Lleva al usuario a las coordenadas de cada una de las tareas que se están mostrando en la ventana de tareas en ese momento, en sentido ascendente.

## Configuración, dispositivos y variables

* [DIGI3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/digi3d.md): Asocia el cursor de **DigiNG** a los movimientos de **Digi3D**.
* [DISPOSITIVO\_ENTRADA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dispositivo-entrada.md): Establece el dispositivo de entrada de la ventana de dibujo (por ejemplo, un GPS), desactivando el ratón.
* [LIMITE\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md): Desactiva una zona de trabajo, establecida como límite por la orden LIMITE\_1.
* [LIMITE\_1](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-1.md): Establece una zona de trabajo, cuyos límites se corresponderán con el contorno geométrico de una línea.
* [N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md): Activa como dispositivo de entrada el fichero ASCII especificado en la pantalla de inicio de DigiNG o mediante la orden FICHERO\_P.
* [SALVAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/salvar.md): Establece cada cuántos minutos se hace automáticamente una copia de seguridad del archivo de dibujo activo.

## Programación y macros

* [CARGA\_ENSAMBLADO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-ensamblado.md): Carga el ensamblado pasado por parámetros.
* [EJECUTA\_ORDEN\_PASANDOLE\_ULTIMA\_GEOMETRIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ejecuta-orden-pasandole-ultima-geometria.md): Esta orden permite incluir en macroinstrucciones y órdenes en pulsaciones de teclas la posibilidad de ejecutar una orden que espera a que se seleccione una geometría.
* [ORDEN\_ATOMICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/orden-atomica.md): Ejecuta las órdenes pasadas por parámetros como órdenes atómicas.
* [PROGRAMA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/programa.md): Ejecuta un programa externo o abre un archivo con la aplicación que tenga asociada.
* [PROHIBE\_ORDEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/prohibe-orden.md): Prohíbe que se ejecute la orden especificada por parámetros.
* [PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/python.md): Ejecuta un guión de Python, opcionalmente pasándole argumentos.

## Ayuda

* [AYUDA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ayuda.md): Abre la ayuda de Digi3D.AI.
* [MUESTRA\_AYUDA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/muestra-ayuda.md): Muestra un documento HTML en el panel de ayuda del programa.
