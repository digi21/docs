# Referencia de lop_sdk.h
<!-- id: lot-of-points-sdk-referencia -->

`Sdk/include/lop_sdk.h` define la interfaz de programación de aplicaciones (API) del kit de desarrollo
de software (SDK) de Lot Of Points. Una biblioteca de enlace dinámico (DLL) declara comandos mediante
`lop_register_commands`. Todas las cadenas que intercambia la API usan la codificación Unicode UTF-8.

## Registro y ejecución

```c
LOP_SDK_EXPORT int lop_register_commands(
    uint32_t api_version, char const* language,
    lop_command const** commands, uint32_t* command_count);
```

Lot Of Points pasa `LOP_SDK_API_VERSION` (`1`) y el código de dos letras del idioma de la interfaz, en
minúsculas, como `"es"`. La DLL devuelve `LOP_OK` y un array de declaraciones que permanece válido mientras
la DLL está cargada. El programa llama al registro una vez por carga de la DLL. Los textos deben corresponder
al idioma recibido, o al inglés si la DLL no dispone de ese idioma.

El programa conserva el orden del array para los botones de cada sección. El catálogo busca primero en
`%AppData%\lop\algorithms` y después en `algorithms` de la instalación, con las DLL de cada carpeta por
orden alfabético. Lot Of Points conserva la primera declaración válida de cada identificador.

Al pulsar un botón habilitado, Lot Of Points llama a:

```c
int run(lop_command const* command, double const* parameters,
        lop_command_host const* host);
```

`parameters` contiene un `double` por parámetro declarado, en el orden de la declaración.
`run` devuelve `LOP_OK`, `LOP_CANCELLED` o `LOP_FAILED`. Si el comando falla, debe escribir el motivo
con `host->log` antes de devolver `LOP_FAILED`. Ninguna excepción debe cruzar la interfaz de C.

Recompila las DLL que consultan nubes con la cabecera actual: los seis campos de sistema de referencia
y unidades cambian el tamaño de `lop_cloud`, aunque `LOP_SDK_API_VERSION` continúa en `1`.

## lop_command

| Campo | Contrato |
|---|---|
| `id` | Identificador estable y único: letras de ASCII (código de caracteres estadounidense), dígitos, `.`, `_` y `-`. |
| `name`, `description` | Nombre del botón y texto de ayuda. |
| `existing_tab_id` | Identificador de una pestaña existente: `lop.tab.view`, `lop.tab.draw`, `lop.tab.edit` o `lop.tab.classification`. |
| `new_tab_title` | Título de una pestaña nueva. Exactamente uno de `existing_tab_id` y `new_tab_title` debe contener texto. |
| `ribbon_section` | Título de la sección del plugin. Si está vacío, el programa usa el nombre del archivo de la DLL. |
| `icon_png`, `icon_png_size` | Bytes de un icono en formato PNG (*Portable Network Graphics*) y su tamaño, hasta 1.048.576 bytes; puntero nulo y tamaño 0 para el icono predeterminado. |
| `parameters`, `parameter_count` | Array de parámetros y número de elementos. |
| `run` | Función obligatoria que ejecuta el comando. |
| `user_data` | Puntero de la DLL; `run` lo recibe dentro de `command`. |
| `requirements` | Combinación de los requisitos que habilitan el botón. |
| `module` | Módulo con licencia que requiere el comando, `prefijo.nombre` con letras de `a` a `z`, dígitos, `.` y `-`; puntero nulo o cadena vacía si el comando no requiere licencia. Si `module` contiene texto, Lot Of Points solo muestra y ejecuta el comando si una licencia activada en el equipo incluye el módulo indicado. Consulta [Publicar en la tienda de extensiones](../publicar-en-la-tienda.md). |

Los comandos que declaran el mismo `new_tab_title` comparten pestaña. Las pestañas nuevas aparecen después
de las propias de Lot Of Points. Cada DLL conserva sus secciones, aunque otra DLL use el mismo título de sección.
Si un comando indica una pestaña inexistente o contextual en `existing_tab_id`, Lot Of Points muestra un aviso y no muestra el botón de ese comando.

El icono debe medir 32 × 32 píxeles, con dibujo negro sobre fondo transparente. El programa utiliza el canal
alfa del PNG para dibujar el icono con el color del tema.

### Requisitos del botón

| Bandera | Condición |
|---|---|
| `LOP_REQUIRES_OPEN_CLOUD` | Al menos una nube abierta. |
| `LOP_REQUIRES_VISIBLE_CLOUD` | Al menos una nube abierta visible; `ask_point` necesita esa condición. |
| `LOP_REQUIRES_EDITABLE_CLOUD` | Al menos una nube abierta con registro de ediciones e índices de sus puntos en el original. |

El programa exige todas las condiciones de la combinación. Con `requirements = 0`, el botón no depende de
estos requisitos. El programa también impide ejecutar el comando por teclado si sus requisitos no se cumplen.
Estos requisitos no seleccionan las nubes que recibirá `process_tiles`.

## lop_parameter

Cada parámetro declara `id`, `name`, `description`, `type`, `default_value`, `minimum`, `maximum`,
`unit` y `settings_group`. El programa muestra los controles en **Configuración**, en la página de la sección de la extensión.
Las secciones de una DLL con el mismo título comparten página aunque estén en pestañas distintas. `settings_group` agrupa controles dentro de esa página; no determina la sección del ribbon.

`type` admite `LOP_PARAMETER_REAL`, `LOP_PARAMETER_INTEGER` y `LOP_PARAMETER_BOOLEAN`.
Los límites incluyen ambos extremos. Los enteros se pasan como valores integrales de `double`; los booleanos
usan 0 y 1. El programa toma los valores guardados al iniciar el comando.

## Puntos y nubes

### lop_point y lop_points

`lop_point` contiene `x`, `y`, `z`, `original_point_index`, `cloud_id`, `intensity`,
`classification`, `return_number`, `number_of_returns`, `red`, `green` y `blue`.

Las coordenadas son absolutas y usan el sistema de la nube. `original_point_index` es la posición del punto
en el archivo original, empezando en 0. Si el nivel de detalle no conserva esa posición, el valor es
`LOP_UNKNOWN_ORIGINAL_POINT_INDEX` (`UINT64_MAX`). `cloud_id` nunca vale 0 y sigue identificando la nube
mientras permanezca abierta, aunque se abran o cierren otras. Cerrar y abrir esa nube asigna un identificador nuevo.

La clasificación incluye las ediciones. La intensidad conserva el valor del archivo original. Los retornos
usan 1–15, o 0 si el archivo no aporta ese dato. Los componentes de color rojo, verde y azul usan 0–255.

`lop_points` almacena esas propiedades en columnas de `point_count` elementos. `complete` vale 0 si
algún nodo no se ha podido leer o no ha llegado en el plazo de 2 minutos.
El programa conserva la memoria hasta `release_points` o hasta que termina `run`.
El comando no debe modificar el campo interno `handle`.

### lop_cloud y clouds

```c
int clouds(void* context, lop_cloud const** clouds, uint32_t* cloud_count);
```

`clouds` devuelve las nubes abiertas en el orden del panel **Capas**, o `LOP_CANCELLED` si el usuario cancela.
El array permanece válido hasta la siguiente llamada a `clouds` o hasta que termina `run`.

| Campo | Contenido |
|---|---|
| `cloud_id`, `name` | Identificador de la nube y nombre del panel **Capas**. |
| `original_path` | Ruta original o dirección de la nube remota sin la consulta de acceso. |
| `visible`, `remote` | Indicadores de visibilidad y de lectura remota desde Azure. |
| `editable` | La nube tiene registro de ediciones. |
| `has_original_point_indices` | El nivel de detalle conserva los índices de los puntos en el original. |
| `extra_fields` | Atributos adicionales disponibles: `LOP_FIELD_GPS_TIME` y `LOP_FIELD_POINT_SOURCE_ID`. |
| `box_min[3]`, `box_max[3]` | Límites de la nube en coordenadas del mundo. |
| `crs_wkt` | Sistema de referencia utilizado para la nube durante la sesión, expresado en WKT (*Well-Known Text*). |
| `horizontal_unit_name`, `vertical_unit_name` | Nombres de las unidades del primer eje de las componentes horizontal y vertical. |
| `horizontal_metres_per_unit`, `vertical_metres_per_unit` | Metros por unidad de cada componente. |
| `vertical_axis_points_down` | 1 si el eje vertical apunta hacia abajo y Z representa una profundidad. |

`crs_wkt` contiene el sistema conocido y no local de la nube o, si no lo tiene, el del documento.
Si no están disponibles ni el sistema conocido y no local de la nube ni el sistema del documento, `crs_wkt` contiene el sistema local de la nube o el sistema local desconocido.
Si falla la obtención del sistema de referencia, `crs_wkt` queda vacío.
Una componente ausente o local deja su nombre de unidad vacío y su factor de metros por unidad a 0.
Si falla la lectura de las unidades, los nombres de las unidades afectadas quedan vacíos y sus factores de metros por unidad quedan a 0. El factor de una unidad angular también es 0.

`gps_time` representa el tiempo del sistema de posicionamiento global (GPS);
`point_source_id` identifica la pasada. Para modificar puntos por teselas, la nube necesita tanto
`editable` como `has_original_point_indices`.

## Pedir y seleccionar puntos

### ask_point

```c
int ask_point(void* context, char const* prompt,
    lop_point_acceptance_function accept_point, void* accept_point_user_data,
    lop_point* point);
```

El programa espera un clic sobre un punto de una nube visible, con el ajuste al punto localizado.
Con una función de aceptación, el programa obtiene candidatos de todas las nubes abiertas, incluidas las ocultas,
a una distancia de 0,05 unidades de la nube o menos del punto pulsado. El programa ofrece los candidatos del
más cercano al más lejano, sin puntos borrados y dentro del aislamiento vigente.

```c
lop_point_acceptance accept_point(void* user_data,
    lop_point const* point, lop_cloud const* cloud);
```

La función puede filtrar por propiedades de `cloud` o por atributos de `point`.
`LOP_POINT_REJECTED` pide el candidato siguiente; `LOP_POINT_ACCEPTED` devuelve el punto;
`LOP_POINT_ACCEPTANCE_FAILED` termina `ask_point` con `LOP_FAILED`.
Un valor ajeno al enumerado también produce `LOP_FAILED`.
Los punteros a `point` y `cloud` solo son válidos durante la llamada de aceptación.

Sin función de aceptación, `ask_point` devuelve el candidato más cercano de una nube visible.
Si no hay candidatos o ninguno es aceptado, el programa muestra el aviso correspondiente y espera otro clic.
La cancelación devuelve `LOP_CANCELLED`; la aceptación devuelve `LOP_OK`.

### points_in_sphere y release_points

```c
int points_in_sphere(void* context, double const center[3], double radius,
    uint32_t const* cloud_ids, uint32_t cloud_count, lop_points* points);
void release_points(void* context, lop_points* points);
```

La consulta devuelve los puntos cuya distancia al centro `center` es menor o igual que `radius`, con todo el detalle de las nubes,
sin puntos borrados y dentro del aislamiento vigente. El centro y el radio deben ser finitos; el radio debe
ser mayor o igual que 0. Las longitudes usan las unidades de las coordenadas de la nube.

Con `cloud_count = 0`, el programa consulta las nubes visibles y permite `cloud_ids = NULL`.
Con identificadores explícitos, el programa consulta las nubes indicadas que sigan abiertas, incluidas las ocultas.
Un recuento distinto de 0 con `cloud_ids = NULL` produce `LOP_FAILED`.
La función espera la carga y devuelve `LOP_OK`, `LOP_CANCELLED` o `LOP_FAILED`.
Comprueba `points.complete` antes de dar por completo el resultado.

### select_points

```c
int select_points(void* context, lop_points const* points,
    uint64_t const* indices, uint64_t index_count);
```

La función sustituye la selección por los índices indicados de un resultado de `points_in_sphere` que aún
no se haya liberado. El programa selecciona cada punto una vez. Con `index_count = 0`, la función limpia
la selección y permite punteros nulos.

La selección permanece al terminar `run`. El usuario puede aplicar **Borrar**, **Clasificar** o **Aislar**;
**Restaurar** requiere una selección por región.
La función devuelve `LOP_CANCELLED` si el usuario cancela o ha cerrado alguna nube de esos puntos, y
`LOP_FAILED` si el resultado no es válido o algún índice no es menor que `point_count`.

## Procesar teselas

```c
int process_tiles(void* context, uint32_t const* cloud_ids, uint32_t cloud_count,
    lop_tile_options const* options, lop_tiles_summary* summary);
```

El comando entrega los identificadores de las nubes que quiere procesar, incluidas las ocultas.
El programa reserva esas nubes hasta que termina la llamada: el usuario puede abrir otras nubes y cerrar
las que no estén reservadas. El programa no abre una escena que retire una nube reservada.

### lop_tile_options

| Campo | Contrato |
|---|---|
| `tile_core_side_length_cloud_units` | Lado del núcleo: mayor que 0 y hasta 10.000.000 de unidades de la nube. |
| `tile_overlap_width_cloud_units` | Ancho del solape: de 0 a 10.000.000 de unidades de la nube, ambos incluidos. |
| `required_extra_fields` | Combinación de `LOP_FIELD_GPS_TIME` y `LOP_FIELD_POINT_SOURCE_ID`. |
| `point_order` | `LOP_ORDER_ORIGINAL_POINT_INDEX`, o `LOP_ORDER_SOURCE_AND_GPS_TIME`, que requiere ambos atributos adicionales. |
| `flags` | Combinación de `LOP_TILES_CONCURRENT` y `LOP_TILES_READ_ONLY`. |
| `estimated_peak_bytes_per_point` | Estimación de memoria máxima asignada por el cálculo, en bytes por punto; 0 aplica la estimación de 1024 bytes por punto. |
| `process_tile`, `user_data` | Función de procesamiento y su primer argumento. |

`process_tiles` falla si una nube pedida no está abierta o carece de un atributo requerido.
Para modificar puntos, cada nube necesita registro de ediciones e índices en el original.
Con `LOP_TILES_READ_ONLY`, el programa no exige esos dos datos y entrega `result = NULL`.

El programa divide las nubes en cuadrados en planta cuya rejilla comienza en múltiplos del lado del núcleo.
Las teselas abarcan toda la altura. El programa omite las teselas sin puntos en el núcleo y entrega los puntos
sin borrados, con las clases editadas. El aislamiento por puntos limita los puntos entregados.

### lop_tile, lop_tile_result y lop_tile_host

```c
int process_tile(void* user_data, lop_tile const* tile,
    lop_tile_result* result, lop_tile_host const* host);
```

`lop_tile` contiene `point_count` y las columnas de puntos, además de `in_core`, `core_min[3]`,
`core_max[3]`, `tile_index`, `tile_count` y `cloud_id`.
`gps_time` y `point_source_id` son nulos si las opciones no solicitan esas columnas.
`tile_index` empieza en 0 y recorre las teselas de todas las nubes de la llamada, nube tras nube y por filas
de Y creciente.

`lop_tile_result.classification` comienza con las clases de la tesela; `deleted` comienza con ceros.
El programa guarda únicamente los resultados de puntos con `in_core = 1`.
La función devuelve `LOP_OK`, `LOP_CANCELLED` o `LOP_FAILED`.

| Miembro de `lop_tile_host` | Función |
|---|---|
| `report_tile_progress(context, fraction)` | Comunica la fracción completada de esa tesela, de 0 a 1, ambos incluidos. |
| `cancelled(context)` | Indica que la función debe detenerse y devolver `LOP_CANCELLED`. |
| `log(context, message)` | Escribe una línea en **Salida**. |
| `max_worker_thread_count` | Número máximo de hilos simultáneos que debe usar el cálculo de esa tesela; como mínimo, 1. |

Las funciones del anfitrión de la tesela admiten llamadas desde cualquier hilo durante `process_tile`.
Con `LOP_TILES_CONCURRENT`, el programa puede ejecutar `process_tile` simultáneamente para varias teselas, con datos y resultados
propios. El cálculo debe proteger el estado compartido y respetar `max_worker_thread_count`.

### Confirmación y errores

El visor muestra las clases y los borrados mientras se procesan las teselas. Una llamada que confirma cambios
registra un evento de edición que el usuario puede deshacer con una acción. El registro guarda el identificador
del comando; el historial muestra el nombre actual del comando cuando lo encuentra y, si no lo encuentra, el código.

Con `LOP_OK`, `summary`, si no es nulo, recibe `reclassified_point_count`, `deleted_point_count` y
`changed_cloud_count`. Esos recuentos solo son válidos con `LOP_OK`.
Una ejecución sin cambios en puntos no añade un evento.

La cancelación devuelve `LOP_CANCELLED` y descarta los resultados de esa llamada.
Un error de opciones, datos o cálculo devuelve `LOP_FAILED` sin registrar cambios.
Un error al guardar puede dejar el evento confirmado en algunas nubes; **Salida** indica el motivo.

## Otras operaciones del anfitrión

| Función | Contrato |
|---|---|
| `log(context, message)` | Escribe en **Salida**. Si el contenido del panel está oculto, su pestaña parpadea hasta que el usuario lo muestra. |
| `status(context, message)` | Escribe en la barra de estado; una cadena vacía o nula borra el mensaje. |
| `cancelled(context)` | Indica la cancelación solicitada con **Esc** o con el botón de otro comando. |
| `show_temporary_line(context, xyz, count, closed)` | Dibuja una polilínea de `count` vértices en coordenadas del mundo; 0 vértices la retiran y `closed != 0` cierra el trazado. |
| `class_name(context, classification)` | Devuelve el nombre actual de la clase `classification` definido en el panel **Clasificaciones**, o una cadena vacía si la clase no tiene nombre. La cadena permanece válida hasta que termina `run`. |
| `load_geopackage(context, geopackage_file_path)` | Carga el archivo como capas de **Capas**, una por tabla. Devuelve `LOP_OK`, `LOP_CANCELLED` o `LOP_FAILED`; **Salida** recoge el motivo del fallo. |

El anfitrión del comando y sus funciones son válidos hasta que termina `run`, también para los hilos creados
por el comando. El programa borra el mensaje de estado y la línea temporal al terminar la ejecución.
Los arrays de declaraciones, cadenas y parámetros permanecen válidos mientras la DLL está cargada.

Al cerrar la ventana con hilos de comandos en ejecución, Lot Of Points solicita su cancelación y espera hasta
3 segundos. El programa impide iniciar comandos durante esa espera y termina los hilos pendientes al finalizar
el proceso. El comando debe consultar la cancelación durante los cálculos prolongados.
