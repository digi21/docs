# BINTRAM

Automatiza la edición del archivo de dibujo.

## Parámetros

Sin parámetros, esta orden abre un cuadro de diálogo. Sus opciones se describen en el apartado **Observaciones**. Con parámetros, la orden se ejecuta sin cuadro de diálogo; los parámetros se describen al final del apartado **Observaciones**.

## Observaciones

Va a permitir al usuario:

* Corregir automáticamente errores en intersecciones y líneas no conectadas
* Detectar cruces entre líneas revisando la tolerancia en Z
* Tramificar entidades
* Detectar entidades duplicadas
* Juntar entidades para eliminar nodos superfluos

Al ejecutar la orden aparecerá el siguiente cuadro de diálogo:

![Cuadro de diálogo Bintram](../../../../../images/BINTRAM.jpg)

* Lo primero que deberás hacer es seleccionar, en la parte superior del cuadro de diálogo, los códigos de las entidades que se van a tratar en esta orden. Solo se procesan las entidades del archivo de dibujo activo que tienen alguno de esos códigos y cuyo código no está apagado. El orden de los códigos seleccionados es la prioridad que usa la opción de borrar entidades duplicadas. Si no se selecciona ningún código, la orden muestra un aviso y no hace nada.

A continuación se explican los diferentes pasos y opciones del proceso BINTRAM.

* Paso 1: Corregir errores automáticamente

Alargar o recortar líneas para "tentativarlas" automáticamente para distancias inferiores a ...

Al marcar esta casilla el usuario podrá corregir los errores de líneas no conectadas o líneas que se sobrepasan. En este caso el programa buscará líneas que se encuentren cerca de otras a distancias menores a la tolerancia mostrada, en ese caso se alargarán hasta engancharse correctamente a la otra entidad. En caso de que la línea sobrepase a otra en una distancia menor a la especificada también se recortará el segmento sobrante.

En este paso hay además dos casillas:

* **Agrupar vértices cercanos para distancias inferiores a**: une los vértices que están a una distancia menor que la indicada.
* **Insertar vértices por tolerancia**: inserta vértices en mitad de los segmentos cuando hay un vértice de otra línea a una distancia menor que la indicada, aunque las líneas no se crucen.

* Paso 2: Detección de cruces entre líneas

Aquí el usuario puede seleccionar una de las siguientes opciones:

* No buscar cruces entre líneas
* Insertar un vértice en el punto de cruce en las dos líneas
* Partir las líneas por un punto de cruce
* Generar un error en los cruces entre líneas
* Generar un error en los cruces entre líneas si las diferencias en Z son superiores al valor "ToleranciaZ": al marcar esta opción se habilitará el parámetro de Tolerancia Z, para que el usuario pueda especificar este valor.

Con la opción de partir las líneas se puede marcar la casilla **Partir únicamente al principio y al final de la intersección**.
* Paso 3: Detección de líneas no conectadas

Opciones:

* No buscar líneas no conectadas
* Marcar como error los extremos de líneas no conectados
* Marcar como error los extremos de líneas no conectados si se localiza otra entidad a una distancia inferior a "Distancia máx"
* Marcar como error los extremos de líneas no conectados (3D)
* Paso 4: Detección de entidades duplicadas

Opciones:

* No buscar entidades duplicadas
* Marcar como error las entidades duplicadas
* Borrar entidades duplicadas, conservando la entidad cuyo código está antes en la lista de códigos seleccionados
* Borrar todas las entidades duplicadas: solo se conservan las entidades no duplicadas
* Agrupar todas las entidades duplicadas en una única entidad con todos sus códigos

En la parte derecha se puede especificar que tipo de entidades buscar líneas, puntos o textos.

* Paso 5: Unión de líneas
* No unir líneas
* Por código: unir líneas independientemente de si en las mismas coordenadas "nace" otra línea con código diferente
* Por tabla: unir líneas únicamente en caso de que en las mismas coordenadas no "nace" otra línea con código diferente
* Las dos opciones anteriores con la condición adicional de que coincida la coordenada Z

Generar un fichero de errores:

Bintram genera por defecto un archivo de extensión .bin que se cargará como fichero de referencia una vez terminado el proceso. En este archivo aparecerán los símbolos que señalarán los errores.

Si se pulsa sobre Configurar aparece la siguiente ventana en la cual se podrá especificar la dirección y nombre del archivo de errores:

Por defecto esta marcada la casilla de Cargar el fichero de errores como fichero de referencia y Eliminar el archivo de errores si ya existe.

En el lado derecho parecerán los códigos de los símbolos de error que se van a generar, cada tipo de error podrá tener otro código para una mejor diferenciación. También se puede especificar el tamaño del error en metros.

Resultados del proceso BINTRAM:

La orden BINTRAM ayudará al usuario a detectar y corregir errores mediante el archivo de errores de formato BIN y la salida de resultados en la [Ventana de Tareas](/digi3d-ai/referencia/paneles/tareas.md) y la [Ventana de Resultados](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/VentanaResultados.md).

Ventana de Tareas:

En la columna Descripción se informa al usuario del tipo de error, por ejemplo: Intersección de líneas, Error de Extremos o Línea duplicada...

En la columna de Información de la entidad se explica el error en concreto. El usuario podrá hacer doble clic en los campos de error de esta ventana para que el cursor le lleve automáticamente al error correspondiente para corregirlo. También es posible el marcar entonces la casilla situada a la izquierda del campo para llevar un control de los errores corregidos y por corregir.

Ventana de Resultados:

La tabla de códigos con la que se ha hecho el proceso y el número de errores de Intersecciones, Extremos y duplicados.

DigiNG también ofrece la posibilidad de ejecutar esta orden especificando sus parámetros en la ventana de órdenes. En este caso los parámetros se pasarían al programa de la siguiente forma:

BINTRAM=\[tabla] \[generar archivo de errores \*1] \[corregir errores autom \*2] \[agrupar vértices \*7] \[insertar vértices por tolerancia \*8] \[detectar_intersecciones \*3] \[detectar_lineas_no_conectadas \*4] \[detección de entidades duplicadas \*5] \[unión de líneas \*6]

Todos los parámetros son obligatorios.

* \["tabla"], el usuario deberá especificar entre comillas el directorio y nombre con extensión de un archivo de texto con los códigos a utilizar en el proceso. La orden toma la primera palabra de cada línea del archivo. Si no se puede abrir el archivo, la orden escribe el error en la ventana de resultados y termina.
* \[generar un fichero de error \*1]. En caso de querer generar este fichero de error se pondrá un 1 como parámetro y en caso de no querer generarlo se pondrá un 0.

\*1 Si verdadero, aparecen muchos parámetros que son:

\[path al archivo de errores] \[truncar] \[tamaño del error] \[cod error intersección] \[cod error extremos] \[cod error duplicados] \[cargar archivo referencia]

Si el archivo de errores no lleva ruta, se crea en la carpeta del archivo de dibujo. \[truncar] a 1 borra el archivo de errores si ya existe.

* \[corregir errores autom \*2]: En caso de querer corregir líneas que no están conectadas y líneas que se sobrepasan se pondrá un 1 como verdadero

\*2 Si Verdadero, aparece el parámetro \[tolerancia_mínima]

* \[agrupar vértices \*7]: 1 para agrupar vértices cercanos.

\*7 Si verdadero, aparece el parámetro \[tolerancia_agrupar]

* \[insertar vértices por tolerancia \*8]: 1 para insertar vértices por tolerancia.

\*8 Si verdadero, aparece el parámetro \[tolerancia_insertar]

* \[detectar_intersecciones \*3]

\*3 Valores:

0 = No

1= Insertar vértice

2 = partir

3 = generar error

4 = generar error si tolerancia máxima. Aparece un parámetro más que es \[tolerancia_Z]

* \[detectar_lineas_no_conectadas \*4]

\*4 Valores:

0 = no

1 = Marcar como error

2 = Marcar como error con tolerancia máxima. Aparece el parámetro \[tolerancia_máxima]

3 = Marcar como error en 3D

* \[detección de entidades duplicadas \*5]

\*5 Valores:

0 = No

1 = Marcar como error

2 = Borrar, conservando la entidad de mayor prioridad

3 = Borrar todas las entidades duplicadas

4 = Agrupar las entidades duplicadas en una única entidad

Si el valor es 1 ó 2 aparecen los parámetros \[buscar_lineas] \[buscar_puntos] \[buscar_textos]

* \[unión de líneas \*6]

\*6 Valores:

0 = No

1 = Unir líneas independientemente de si en el mismo vértice nace otra con otro código

2 = Unir líneas si NO nace en el mismo vértice otra con otro código

3 = Como 1, y además tiene que coincidir la coordenada Z

4 = Como 2, y además tiene que coincidir la coordenada Z

### Ejemplo de ejecución de BINTRAM por línea de comandos:

`BINTRAM="C:\ASTE.tab" 1 "C:\err.bind" 1 2 cod1 cod2 cod3 1 1 0.3 0 0 4 0.2 2 0.5 1 1 1 1 1`

Este ejemplo hará lo siguiente:

1. Utiliza la tabla de códigos ASTE que se encuentra en el directorio C:\ASTE.tab
2. Va a generar un archivo de error
3. El archivo de error generado será el siguiente: C:\err.bind
4. Va a sobreescribir el archivo de error que hubiera previamente con el mismo nombre en el mismo directorio
5. El tamaño en metros de los errores será 2
6. El código para marcar errores de intersección será cod1
7. El código para marcar los errores de extremos será cod2
8. El código para marcar entidades duplicadas será cod3
9. El archivo de error generado se cargará automáticamente como fichero de referencia
10. Se corregirán errores automáticamente
11. Estos errores se corregirán dependiendo de la tolerancia, que en este caso es 0.3
12. No se agruparán vértices cercanos
13. No se insertarán vértices por tolerancia
14. Se generará un símbolo de error en la intersecciones que no cumplen con la tolerancia en Z
15. La tolerancia en Z de intersecciones será 0.2
16. Se marcarán como error los extremos no conectados si hay otra entidad a menos de la distancia máxima
17. La distancia máxima será 0.5
18. Se marcarán entidades duplicadas
19. Se marcarán líneas duplicadas
20. Se marcarán puntos duplicados
21. Se marcarán textos duplicados
22. Se unirán líneas independientemente de si en el mismo vértice nace otra con otro código

## Características de la orden

| Tipo de orden                                    | [Orden inmediata](bintram.md)                                                |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                        |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesTopologia.dll                                                  |
| Variables relacionadas                           | No tiene variables relacionadas                                              |
| Nombre interno | {20673463-9D22-4d74-AA28-5A60AECCA0E5} |
