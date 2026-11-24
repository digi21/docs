# Diferencias con Topcal21 para Windows
<!-- id: topcal21-web-diferencias -->

## Órdenes y botones que no están disponibles

La única entrada de menú que la web no ejecuta es **Dibujo › Insertar paralela...**. Aparece deshabilitada, y su información sobre herramientas muestra «No disponible en la web».

Estas funciones están disponibles solo en parte:

| Menú o cuadro | Qué no está disponible |
|---|---|
| Archivo › Nuevo... | Los tipos **Puntos** y **Visuales** del cuadro «Fichero nuevo» aparecen deshabilitados. Los tipos **Proyecto** y **Croquis** están disponibles. |
| Archivo › Exportar... | La orden exporta croquis y está deshabilitada con otro documento activo. El tipo DGN aparece deshabilitado. La web no exporta archivos de puntos ni de visuales. |
| Editar › Lista de códigos de dibujo... | Los botones **Carga Digi.Tab** y **Carga Xml**. |
| Editar › Librería de símbolos... | El botón **Carga desde DGN...**. |
| Cálculos › Perfiles | Los tipos de archivo de dibujo distintos de DIGI. |
| Cálculos › Cálculo de superficies | El botón **Ajustar...** y la inclusión de la parcela en un croquis. |

La web tampoco incluye los comandos Imprimir, Presentación preliminar, Configurar impresora, Abrir carpeta contenedora, Actualizar y Calculadora de Windows. Para imprimir un listado, usa el botón **Imprimir** del visor de listados.

El botón **Rotar** de la barra Paleta está deshabilitado, igual que en Topcal21 para Windows. Los textos de ayuda de los botones **Mover V** y **Borrar** de esa barra mencionan el botón central del ratón y la tecla **Mayúsculas** para añadir entidades a la selección; ni Topcal21 para Windows ni la web ejecutan esas acciones.

Las páginas de [Topcal21 para Windows](../README.md) explican estas funciones. Para usarlas, abre los archivos del proyecto con Topcal21 para Windows, que lee los mismos archivos.

## Funciones que cambian

### Archivos y proyectos

* **Archivo › Nuevo...** abre el cuadro «Fichero nuevo». Crea proyectos y, con un proyecto abierto, croquis. No crea archivos de puntos, de visuales ni de croquis sueltos.
* Los archivos se eligen entre los archivos subidos a [Mis archivos](mis-archivos.md); la web no lee archivos del disco del ordenador, salvo los archivos que se arrastran al cuadro «Proyecto nuevo» y a «Propiedades de proyecto», los archivos `.dat` de **Importar del escritorio…** y los archivos de las listas y librerías de códigos que se cargan con **Cargar...**.
* Cada archivo puede medir hasta 20 MiB y cada cuenta puede ocupar hasta 200 MiB.
* La web no importa archivos DIGI (BIN o ASCII), DXF ni DGN. Ver [Importar archivos de campo](importar-archivos-de-campo.md).
* **Agregar archivo...** agrega un archivo por orden; Topcal21 para Windows admite elegir varios archivos en la misma orden.
* Los instrumentos y los sistemas de referencia se guardan al pulsar **Aceptar** en su cuadro; Topcal21 para Windows los escribe al cerrar el programa.
* La web no usa llave de protección. Los cálculos que en Windows exigen la llave (por ejemplo, **Mínimos cuadrados 3D** y **Cambio de altura según rejilla**) y la escritura de listados están disponibles para cualquier cuenta activa.

### Rejillas

* La rejilla siempre muestra los registros borrados.
* Al pegar texto desde Microsoft Excel, la web separa las celdas solo por tabuladores y conserva las celdas vacías. Topcal21 para Windows también separa por comas y descarta las celdas vacías, de modo que desplaza las celdas siguientes.
* Pegar una sola celda con varias filas seleccionadas escribe el valor solo en las filas seleccionadas, aunque no sean contiguas. Topcal21 para Windows lo escribe en todas las filas entre la primera y la última seleccionada.
* Si una celda de un bloque pegado se rechaza (por ejemplo, un punto con un número ya existente), la web omite el resto de las celdas de esa fila y continúa con las filas siguientes. Topcal21 para Windows escribe solo la primera celda de cada fila siguiente.
* Un clic en la cabecera de una columna ordena por esa columna. Con columnas ocultas, Topcal21 para Windows interpreta la posición de la columna pulsada como la posición en el orden fijo de todos los campos (en los puntos: número, X, Y, Z, desorientación, nombre y código), de modo que puede ordenar por otro campo.
* La web recorta el texto de las columnas Nombre y Código a 29 bytes al terminar la edición de la celda; Topcal21 para Windows lo recorta al guardar el archivo.

### Croquis

* Las barras **Dibujo** y **Paleta** tienen una posición fija debajo del área de trabajo. En Topcal21 para Windows se pueden acoplar y mover.
* La barra de estado muestra las instrucciones de la herramienta activa. Topcal21 para Windows las calcula y no las muestra.
* Mientras se mantienen pulsadas las teclas **Espacio** o **Ctrl**, que activan temporalmente las herramientas de mover y de zoom, la web cambia el cursor, pero la barra, el menú y la barra de estado siguen mostrando la herramienta seleccionada. Topcal21 para Windows cambia también la marca de la herramienta y el texto de estado.
* El historial de **Deshacer** de un croquis conserva 200 pasos. Topcal21 para Windows conserva 10 copias completas del croquis.
* Los cuadros de preferencias de croquis, de listas de códigos y de librerías guardan los cambios en la carpeta `.topcal21` al pulsar **Aceptar**. Los botones **Cargar...** leen un archivo del ordenador del usuario y los botones **Salvar...** descargan un archivo al ordenador.
* **Archivo › Exportar...** escribe el archivo en la carpeta del croquis de «Mis archivos» y pide confirmación antes de sustituir un archivo que ya existe. La orden se cancela si dura más de 60 segundos.
* La web rechaza una escala de exportación menor que 1; Topcal21 para Windows no comprueba la escala.

### Cálculos

* La web ejecuta cada cálculo en el servidor. Salvo las compensaciones de mínimos cuadrados 2D y 3D y de redes de nivelación, un cálculo que no termina en 60 segundos se interrumpe, y la web permite como máximo 2 cálculos simultáneos por instancia del servidor. La compensación de los cuadros de mínimos cuadrados 2D y 3D y de la compensación de redes de nivelación espera en una cola y se interrumpe a los 30 minutos desde que empieza a calcular. Topcal21 para Windows no limita el tiempo.
* La web rechaza las entradas de los cálculos que superan los límites de tamaño de la web (por ejemplo, los perfiles; ver [Cálculos](calculos.md#perfiles)). Topcal21 para Windows no limita el tamaño.
* La web muestra los listados en un visor dentro de la página, no en un programa visor externo. El visor no carga las imágenes que referencia un listado HTML de reseñas.
* El cuadro de resultados de **Cálculo de superficies** no incluye la parcela en un croquis, y el botón **Ajustar...** está deshabilitado.
* En los casos en que Topcal21 para Windows termina el programa o no termina un cálculo (por ejemplo, una cantidad de perfiles por fila igual a 0 en «Presentación gráfica...», o un intervalo menor o igual que 0 con «Cada ... m» en la guitarra de los perfiles), la web muestra un mensaje y no genera el resultado.
* Cuando introduces un número no válido en un cuadro, la web muestra «Escriba un número.» o «Escriba un número entero.», con el título «Error».

## Correcciones de lectura y escritura de formatos

Topcal21 web corrige 34 defectos de lectura y de escritura de formatos que la versión publicada de Topcal21 para Windows conserva. Las listas siguientes indican, para cada formato, qué hace la web y qué hace Topcal21 para Windows. Un archivo que Topcal21 para Windows lee de forma incorrecta puede dar en la web un resultado distinto. Consulta las [novedades de la versión](../novedades-version/README.md) de Topcal21 para Windows para saber si una versión posterior corrige estos comportamientos.

### Importar visuales

* **SDR (`.sdr`).**
  * La web busca el número del visado alfanumérico con la columna del visado. Topcal21 para Windows asigna al visado el número de la estación: la visual queda con la misma estación y visado, y desaparece al comprimir el archivo.
  * La observación MC sustituye a la última visual de la libreta con esa estación y ese visado, esté en la posición que esté. Topcal21 para Windows la sustituye solo si esa visual es la última de la libreta; en otro caso añade una visual nueva.
  * Con distancias en pies en el archivo, la web convierte la distancia y las alturas del instrumento y de la mira a la unidad lineal de la libreta. Topcal21 para Windows deja sin convertir la distancia con una libreta en metros y la convierte a metros con una libreta en pies.
  * En un archivo UTF-16 con marca de orden de bytes, la web lee las unidades angular y de distancia de las columnas de la cabecera. Topcal21 para Windows lee esas unidades de las columnas anteriores a las que las contienen e interpreta mal las unidades.
* **Kern.** La web conserva la estación y la altura del instrumento del registro de estación para los registros de observación siguientes. Topcal21 para Windows asigna la estación 0 a esos registros de observación, y la compresión del archivo los elimina. En un archivo UTF-16 con marca de orden de bytes, la web importa la estación del primer registro; Topcal21 para Windows omite esa estación.
* **GSI de Leica.**
  * La web aplica la horizontal, la distancia y la estación calculadas con las coordenadas (palabras 81 a 86) a todas las visuales del archivo. Topcal21 para Windows aplica esos valores solo a las visuales anteriores a la primera palabra 21.
  * La web guarda cada lectura con su unidad: una lectura en grados centesimales posterior a una lectura sexagesimal se guarda en centesimales. Topcal21 para Windows guarda esa lectura centesimal como sexagesimal.
  * La web convierte a la unidad de la libreta cada lectura, la horizontal y la vertical, desde su propia unidad. Topcal21 para Windows convierte la vertical solo si la horizontal también está en otra unidad: si la horizontal ya está en la unidad de la libreta, deja la vertical sin convertir a la unidad de la libreta.
  * La web usa las palabras 72 a 79, sin signo ni ceros iniciales y separadas por un espacio, como código de la visual. Topcal21 para Windows no incluye esas palabras en el código.
  * La web importa archivos con líneas terminadas en «\n» que contienen «\r». Con esos archivos, Topcal21 para Windows no termina la lectura o termina con un error.
  * En un archivo UTF-16 con marca de orden de bytes, la web analiza la primera línea como GSI de 16 posiciones. Topcal21 para Windows analiza esa línea como GSI de 8 posiciones y descarta su registro o lo importa con valores erróneos.
* **GeoDat y Psion GeoDat.** La web omite las líneas formadas solo por separadores. Topcal21 para Windows puede fallar al leer esas líneas.
* **Pentax, Psion y Psion Tacor.** En un archivo UTF-16 con marca de orden de bytes, la web importa el primer registro de estación. Topcal21 para Windows omite ese registro.
* **TopCal DOS (`.obs`).** Con un recuento de registros negativo, la web rechaza el archivo con un mensaje y no importa nada. Topcal21 para Windows termina con un error que no captura.
* **Agregar archivo.** Con un archivo de visuales en otra unidad angular que la libreta, el cuadro «Fundir vuelta de horizonte» muestra las lecturas convertidas a la unidad de la libreta. Topcal21 para Windows muestra el número del archivo sin convertir.
* **Importación cancelada o sin resultado.** Si el usuario cancela «Fundir vuelta de horizonte», la web no cambia el archivo. La importación de visuales en un documento existente es un solo paso de **Deshacer**. Topcal21 para Windows, al cancelar «Fundir vuelta de horizonte», restaura la libreta al estado posterior a la última estación añadida durante la importación y no al estado anterior a la importación. Si la lectura del archivo no termina correctamente, la web muestra un mensaje que indica que no se importó ningún registro; Topcal21 para Windows puede mostrar un recuento de registros importados sin valor válido.

### Importar puntos

* **Todos los formatos.** La web conserva los puntos borrados que el documento ya tenía antes de importar. Topcal21 para Windows los quita al importar.
* **TopCal DOS (`.pto`, `.pts`).** Con un recuento de registros negativo, la web rechaza el archivo con un mensaje. Topcal21 para Windows termina con un error que no captura. La web lee el nombre del punto en 30 bytes; Topcal21 para Windows puede leer bytes sin inicializar después de esos 30 bytes.
* **GSI de Leica.**
  * La web quita el último carácter de cada palabra solo si es un espacio. Topcal21 para Windows quita siempre el último carácter, y en la última palabra de una línea sin espacio final quita la última cifra.
  * La palabra 86 (cota) con unidades 6 u 8 se asigna a la Z del punto. Topcal21 para Windows asigna ese valor a la X.
  * La palabra 90 se escribe como código con el valor redondeado a entero. Topcal21 para Windows escribe un valor incorrecto (por ejemplo, 12 se escribe como «0»).
  * En un archivo UTF-16 con marca de orden de bytes, la web analiza la primera línea como GSI de 16 posiciones. Topcal21 para Windows analiza esa línea como GSI de 8 posiciones.
* **SDR (`.sdr`).** En un archivo UTF-16 con marca de orden de bytes, la web lee el orden de las coordenadas de la columna correcta. Topcal21 para Windows lee ese orden de la columna anterior y puede intercambiar X e Y.
* **PTS Leica HDS (`.pts`).** La web ignora las líneas vacías y rechaza un bloque con un recuento negativo de puntos. Topcal21 para Windows toma el recuento de la línea anterior y lee fuera de los datos del bloque.

### Archivos de texto de los asistentes y de las librerías

* **Archivos UTF-16 con el carácter U+FFFF al principio de una línea.** La web deja de leer en esa línea, conserva los datos de las líneas anteriores y muestra un aviso con el nombre del archivo y el número de esa línea. En «Desde archivo...» de los perfiles transversales, la web conserva también el perfil en curso si tiene más de 1 punto. Topcal21 para Windows termina la lectura con un error que no captura.
* **Archivos de menos de 2 bytes o que no existen.** La web muestra el error de apertura del archivo y no lee nada. Esto afecta a la importación de campo (salvo TopCal DOS), a **Transformaciones › Coordenadas geográficas...**, a **Cambio de altura según rejilla**, a **Nivelación geométrica**, a **Compensación MMCC de red de nivelación**, al archivo de líneas base de **Mínimos cuadrados 3D**, a la plantilla de **Generar reseñas**, a «Desde archivo...» de los perfiles transversales y a la carga de la librería de códigos. Topcal21 para Windows abre el archivo como texto ANSI.
* **Líneas vacías.** La web ignora las líneas vacías de la librería de códigos de croquización, de la lista de códigos de dibujo, de la rejilla de alturas y del archivo de perfiles transversales. Topcal21 para Windows repite los valores de la línea anterior.

### Rejillas y perfiles

* **Rejilla NTV2.** La web rechaza un archivo incompleto (cabecera general, cabecera de una subrejilla o nodos truncados) o con un número negativo de subrejillas o de nodos, y muestra el error de lectura de la rejilla. Topcal21 para Windows lee un archivo truncado sin error y deja los datos que faltan a 0; con un número negativo termina el programa.
* **Rejilla de alturas.** La web lee, para cada fila, tantas líneas de 8 valores como resultan de dividir el número de columnas entre 8 y redondear hacia arriba, y rechaza una cabecera con un número de filas o de columnas no válido. Topcal21 para Windows redondea ese cociente hacia abajo y no lee las últimas columnas de cada fila cuando el número de columnas no es múltiplo de 8: esas columnas valen 0.
* **Perfiles transversales, «Desde archivo...».**
  * La coma separa campos solo si la línea no tiene espacios ni tabuladores (sin contar los iniciales ni los finales). En las demás líneas, la coma es el separador decimal: «2 3,5 11» da la distancia 3,5 y la cota 11. Topcal21 para Windows toma siempre la coma como separador de campos: esa línea da la distancia 3 y la cota 5, y descarta el 11.
  * Un perfil cuya línea «P» no tiene nombre se llama «Perfil». En Topcal21 para Windows, ese perfil queda con el nombre vacío.

### Nivelación

* **Archivo ASCII de desniveles.** La web omite las líneas sin palabras. Topcal21 para Windows añade por cada línea sin palabras un desnivel con estación 0, visado 0, desnivel 0 y distancia 0. La web lee el archivo también en formato UTF-16; Topcal21 para Windows abre un archivo UTF-16 solo para escritura y falla al leerlo.
* **GSI de Leica de nivelación.** En un archivo UTF-16 con marca de orden de bytes, la web lee la primera nivelada. Topcal21 para Windows omite la lectura de espaldas de esa nivelada.

### Ángulos sexagesimales pseudodecimales

* La web convierte correctamente los ángulos negativos cuya parte decimal termina en ceros entre la unidad sexagesimal pseudodecimal y la sexagesimal: -4.0000 es -4°00'00". Topcal21 para Windows lee -4.0000 como -4,6778° (-4°40'40"). Esto afecta, por ejemplo, al archivo de «Transformación de coordenadas geográficas».
* Con un valor de 2.147.483.648 grados o más, la web calcula los grados sin convertirlos a un entero de 32 bits; con un valor infinito, devuelve el valor sin convertir. Topcal21 para Windows convierte esos valores al entero -2.147.483.648 antes de calcular los grados.

## Resultados numéricos

El motor de cálculo de Topcal21 web es un porte a C# del motor de Topcal21 para Windows. El porte conserva el orden de las operaciones, las constantes y los criterios de convergencia.

El servidor de Topcal21 web ejecuta Linux, mientras que Topcal21 para Windows usa la biblioteca de C de Windows. Con los mismos datos, un resultado intermedio puede diferir del que calcula Windows en el último dígito de su representación binaria. Los listados con los decimales habituales (por ejemplo, 3 decimales lineales y 4 angulares) no muestran esa diferencia.

## Qué hacer con una función no disponible

Si una función que falta es necesaria para un trabajo, usa Topcal21 para Windows con los mismos archivos. Para comunicar una función que echas en falta, crea un [ticket de soporte técnico](soporte-tecnico.md).
