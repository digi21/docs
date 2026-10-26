# Algoritmos por teselas
<!-- id: lot-of-points-algoritmos -->

Los comandos de extensiones pueden procesar nubes por teselas mediante `process_tiles`.
El comando elige las nubes y las opciones; Lot Of Points prepara las teselas, llama al cálculo y registra
los cambios de clasificación y borrado que el cálculo confirma.

Una tesela es una región cuadrada en planta que abarca toda la altura de la nube.
El programa divide los puntos para que el cálculo pueda recorrer las nubes por partes.

## Dónde están los botones

Las extensiones añaden comandos mediante bibliotecas de enlace dinámico (DLL) o archivos de Python.
Cada comando declara una pestaña existente o el título de una nueva y la sección donde aparece su botón.
Las pestañas nuevas aparecen después de las propias de Lot Of Points.

La DLL de ejemplo `lop_examples.dll` distribuye sus botones así:

| Pestaña | Sección | Comandos |
|---|---|---|
| Visualización | Algoritmos básicos | Información y Datos del punto. |
| Herramientas de selección | Algoritmos básicos | Seleccionar objeto. |
| Clasificación de puntos | Algoritmos básicos | Quitar clasificación y Clasificar por altura. |

El [gestor de extensiones](../gestor-de-extensiones.md) permite habilitar o deshabilitar los comandos.
La sección de [Programación](../programacion/README.md) explica cómo crear extensiones.

## Ejecutar un comando

1. Abre las nubes que quieras procesar.
2. Revisa los parámetros del comando en **Configuración**, en la página de su sección de extensión.
3. Pulsa el botón del comando.
4. Consulta los mensajes en **Salida**.

El comando toma los parámetros al iniciar la ejecución. El botón permanece pulsado mientras el comando
está activo. Si el comando declara requisitos, el programa deshabilita su botón cuando no se cumplen.
**Información** requiere una nube abierta; los dos comandos de clasificación requieren una nube con
registro de ediciones e índices del archivo original.

Durante `process_tiles`, el programa muestra el progreso sobre la vista con el mensaje
«*comando*: *porcentaje*. Esc para cancelar.». El visor muestra las clases y los borrados a medida que
se procesan las teselas. La primera línea que el comando escribe en **Salida** trae ese panel al frente.
Cada comando determina los mensajes de su resumen.

## Qué nubes procesa un algoritmo

El comando selecciona las nubes por sus identificadores; `process_tiles` permite procesar también
**las nubes ocultas**. Desmarcar una nube en **Capas** cambia su visibilidad, pero no excluye esa nube
de los comandos que la hayan elegido.

**Información** lee todas las nubes abiertas, locales y remotas, sin necesitar registro de ediciones
ni índices originales. **Quitar clasificación** y **Clasificar por altura** eligen las nubes con registro
de ediciones e índices originales, incluidas las ocultas, y avisan de las que omiten.

Un comando puede pedir tiempo del sistema de posicionamiento global (GPS) y el identificador de pasada.
`process_tiles` falla si alguna nube solicitada carece de un atributo requerido.
La llamada también falla si una nube ya no está abierta o si no cumple las condiciones de edición,
salvo que el comando solicite el modo de solo lectura.

Durante el procesamiento, el usuario no puede cerrar las nubes reservadas. El usuario puede abrir otras nubes
y cerrar las que no estén reservadas. Si una escena retiraría una nube reservada, el programa no abre esa escena
y muestra el aviso que pide cancelar el comando con **Esc** o esperar a que termine.

## Resultado e historial

Cada llamada a `process_tiles` que confirma cambios en puntos registra un evento de edición.
El registro guarda el identificador del comando; **Historial** muestra el nombre actual del comando si
está disponible, o el código del evento. Una llamada sin cambios no añade un evento.

Pulsa **Deshacer** o **Rehacer** en la barra de título para recorrer las ediciones.
Los botones se deshabilitan cuando no hay una edición que deshacer o rehacer.
**Historial**, junto a esos botones, muestra los eventos; si no hay ninguno, muestra
«Todavía no hay ediciones registradas.».

El archivo original conserva su contenido. Para generar un archivo LAS (formato de intercambio de nubes de puntos) con los cambios de una nube local,
usa **Exportar editada**. Un comando puede cargar un GeoPackage como capas mediante `load_geopackage`.

Un fallo de cálculo descarta los resultados de esa llamada. Un error al guardar puede dejar el evento
confirmado en algunas nubes; el programa conserva esos cambios y permite deshacerlos.

## Cancelar o cerrar el programa

Pulsa **Esc** para solicitar la cancelación. Durante el procesamiento, el mensaje pasa a
«*comando*: cancelando. Las teselas en curso se paran en su siguiente paso.».
Cada cálculo debe comprobar la cancelación para detenerse.
El botón de otro comando también solicita la cancelación del comando activo.

Una llamada a `process_tiles` cancelada descarta los resultados de esa llamada.
La cancelación no revierte una llamada anterior que el mismo comando ya haya confirmado.

Al cerrar Lot Of Points con hilos de comandos de extensiones en ejecución, el programa solicita la
cancelación y muestra «Cancelando los comandos de las extensiones antes de cerrar Lot Of Points…».
El programa espera hasta 3 segundos a que terminen los hilos y no permite iniciar comandos durante esa espera.

## Parámetros y teselas

**Configuración** crea una página por sección de cada extensión y agrupa los parámetros por comando y por `settings_group`.
Las secciones de una misma extensión con el mismo título comparten página aunque aparezcan en pestañas distintas.
El programa muestra nombre, unidad y descripción, guarda los cambios al modificar los controles y usa los
valores en la siguiente ejecución. Un valor guardado fuera del rango declarado se sustituye por el predeterminado.

Cada tesela tiene un **núcleo** y puede incluir una banda de **solape**.
El cálculo usa los vecinos del solape, pero el programa guarda únicamente los resultados de puntos del núcleo.
La rejilla comienza en múltiplos del lado del núcleo. Las longitudes usan las unidades de las coordenadas
de la nube; esas unidades pueden ser grados si la nube utiliza coordenadas geográficas.

El programa entrega las clases editadas y excluye los puntos borrados. El programa también limita los puntos
entregados cuando hay puntos aislados. Las teselas sin puntos en el núcleo se omiten.
Si el comando habilita la concurrencia, el programa puede calcular varias teselas a la vez.
