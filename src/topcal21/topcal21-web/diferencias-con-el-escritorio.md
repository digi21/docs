# Diferencias con Topcal21 para Windows
<!-- id: topcal21-web-diferencias -->

Topcal21 web todavía no incluye todas las funciones de [Topcal21 para Windows](../README.md). Esta página enumera las funciones que faltan y los comportamientos que cambian.

## Órdenes que todavía no están disponibles

Las entradas de menú y los botones siguientes aparecen deshabilitados, y su información sobre herramientas muestra «No disponible en la web».

| Menú o barra | Órdenes |
|---|---|
| Archivo | Exportar..., Agregar archivo... |
| Editar | Comprimir archivo..., Renumerar puntos..., Renumerar visuales..., Preferencias de croquis..., Lista de códigos de dibujo..., Lista de códigos de croquización..., Librería de símbolos..., Relacionar ficheros de puntos... |
| Ver | Barra de estado (la web siempre muestra la barra de estado) y Propiedades del objeto... |
| Herramientas | Croquis de visuales..., Mínimos cuadrados..., Mínimos cuadrados 3D... y Transformación de coordenadas... |
| Cálculos | Máximas y mínimas...; Perfiles (Longitudinales... y Transversales...); Transformaciones (Helmert/Afín..., Coordenadas geográficas..., Coordenadas geográficas manual..., Struve a Hayford..., Entre sistemas de referencia..., Entre sistemas de referencia utilizando rejilla NTV2..., de unidades... y Cambio de altura según rejilla...); Generar reseñas (Vértices... y Puntos de apoyo...); Calcular medias CD-CI...; Calcular medias de visuales...; Calcular errores accidentales...; Nivelación geométrica...; Compensación MMCC red de nivelación... |
| Dibujo | Todas las entradas del menú: la web todavía no abre ni edita croquis |
| Barra de botones inferior | **Transfor.** y **Comp3D** |

La web tampoco incluye los comandos Imprimir, Presentación preliminar, Configurar impresora, Abrir carpeta contenedora, Actualizar y Calculadora de Windows. Para imprimir un listado, usa el botón **Imprimir** del visor de listados.

Las páginas de [Topcal21 para Windows](../README.md) explican estas funciones. Para usarlas, abre los archivos del proyecto con Topcal21 para Windows, que lee los mismos archivos.

## Funciones que cambian

### Archivos y proyectos

* **Archivo › Nuevo...** crea siempre un proyecto. No crea archivos de puntos, de visuales ni de croquis sueltos.
* Los archivos se eligen entre los archivos subidos a [Mis archivos](mis-archivos.md); la web no lee archivos del disco del ordenador, salvo los archivos que se arrastran al cuadro «Proyecto nuevo» y a «Propiedades de proyecto», y los archivos `.dat` de **Importar del escritorio…**.
* Cada archivo puede medir hasta 20 MiB y cada cuenta puede ocupar hasta 200 MiB.
* La web no importa archivos DIGI (BIN o ASCII), DXF ni DGN. Ver [Importar archivos de campo](importar-archivos-de-campo.md).
* Los instrumentos y los sistemas de referencia se guardan al pulsar **Aceptar** en su cuadro; Topcal21 para Windows los escribe al cerrar el programa.
* La web no usa llave de protección.

### Rejillas

* La rejilla siempre muestra los registros borrados.
* Al pegar texto desde Microsoft Excel, la web separa las celdas solo por tabuladores y conserva las celdas vacías. Topcal21 para Windows también separa por comas y descarta las celdas vacías, de modo que desplaza las celdas siguientes.
* Pegar una sola celda con varias filas seleccionadas escribe el valor solo en las filas seleccionadas, aunque no sean contiguas. Topcal21 para Windows lo escribe en todas las filas entre la primera y la última seleccionada.
* Si una celda de un bloque pegado se rechaza (por ejemplo, un punto con un número ya existente), la web omite el resto de las celdas de esa fila y continúa con las filas siguientes. Topcal21 para Windows escribe solo la primera celda de cada fila siguiente.
* Un clic en la cabecera de una columna ordena por esa columna. Con columnas ocultas, Topcal21 para Windows interpreta la posición de la columna pulsada como la posición en el orden fijo de todos los campos (en los puntos: número, X, Y, Z, desorientación, nombre y código), de modo que puede ordenar por otro campo.
* La web recorta el texto de las columnas Nombre y Código a 29 bytes al terminar la edición de la celda; Topcal21 para Windows lo recorta al guardar el archivo.

### Cálculos

* La web ejecuta cada cálculo en el servidor. Un cálculo que no termina en 60 segundos se interrumpe, y la web permite como máximo 2 cálculos simultáneos por instancia del servidor. Topcal21 para Windows no limita el tiempo.
* El botón **Ayuda** de los asistentes y de los cuadros de preferencias, instrumentos y sistemas de referencia está deshabilitado.
* La web muestra los listados en un visor dentro de la página, no en un programa visor externo.
* El cuadro de resultados de **Cálculo de superficies** no incluye la parcela en un croquis, y el botón **Ajustar...** está deshabilitado. Los asistentes de Hansen, bisección mixta y poligonales muestran el grupo «Incluir en croquis» deshabilitado.
* Cuando introduces un número no válido en un cuadro, la web muestra «Escriba un número.» o «Escriba un número entero.», con el título «Error».

## Resultados numéricos

El motor de cálculo de Topcal21 web es un porte a C# del motor de Topcal21 para Windows. El porte conserva el orden de las operaciones, las constantes y los criterios de convergencia.

El servidor de Topcal21 web ejecuta Linux, mientras que Topcal21 para Windows usa la biblioteca de C de Windows. Con los mismos datos, un resultado intermedio puede diferir del que calcula Windows en el último dígito de su representación binaria. Los listados con los decimales habituales (por ejemplo, 3 decimales lineales y 4 angulares) no muestran esa diferencia.

## Qué hacer con una función no disponible

Si una función que falta es necesaria para un trabajo, usa Topcal21 para Windows con los mismos archivos. Para comunicar una función que echas en falta, crea un [ticket de soporte técnico](soporte-tecnico.md).
