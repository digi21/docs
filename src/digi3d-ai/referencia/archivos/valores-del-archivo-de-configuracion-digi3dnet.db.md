# Valores del archivo de configuración Digi3DNET.db
<!-- id: valores-del-archivo-de-configuracion-digi3dnet.db -->

Esta página enumera los valores que Digi3D.AI lee o escribe en el [archivo de configuración Digi3DNET.db](archivo-de-configuracion-digi3dnet.db.md), agrupados por carpeta (columna `Path` de la tabla `Keys`). Los valores se pueden modificar con el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md).

La configuración de cada usuario no está en esta base de datos: Digi3D.AI la guarda en el registro de _Windows_, en **HKEY\_CURRENT\_USER**, y no aparece en esta página.

## Cómo leer las tablas

* **Valor**: contenido de la columna `Value`. Un nombre entre `<` y `>` indica un patrón: Digi3D.AI construye el nombre al ejecutarse, y la descripción explica cómo.
* **Tabla**: tabla de la base de datos que guarda el valor: `Ints` (entero), `Texts` (texto) o `Doubles` (real). Digi3D.AI no usa la tabla `Blobs`.
* **Por defecto**: valor que usa Digi3D.AI si el valor no tiene fila y el registro de _Windows_ no contiene un valor en **HKEY\_LOCAL\_MACHINE**. En los valores booleanos, 1 equivale a activado y 0 a desactivado. Los valores por defecto de texto que dependen del idioma se muestran en español.
* **Dónde se cambia**: cuadro de diálogo y opción que escriben el valor. **Solo por SQL** indica que ningún cuadro de diálogo lo escribe: Digi3D.AI solo lo lee, y para cambiarlo hay que usar el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md) u otra herramienta de SQLite.

Digi3D.AI crea la fila de un valor la primera vez que lo lee. Si el valor no existe en la base de datos, lo copia de **HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET** o, si allí tampoco existe, guarda el valor por defecto. Los valores reales (`Doubles`) solo se guardan si existen en **HKEY\_LOCAL\_MACHINE**.

## Carpeta raíz

Valores guardados en la carpeta raíz. En la tabla `Keys`, su `Path` es la cadena vacía.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `KeyID` | `Texts` | (vacío) | Identificador (KeyID) de la llave de protección elegida en el cuadro Seleccionar llave. | Cuadro **Seleccionar llave** |

## `App\Configuration\CambioRapidoModelos`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `MostrarUnicamenteModelosQueSePuedenCargar` | `Ints` | 1 | Si se activa, el panel de proyecto fotogramétrico mostrará únicamente los modelos que ha podido cargar. | [Configuración › Proyecto fotogramétrico › Mostrar solo modelos cargados](../cuadros-de-dialogo/configuracion/proyecto-fotogrametrico/mostrar-solo-modelos-cargados.md) |

## `App\Configuration\ProductionControl`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ControlarProduccion` | `Ints` | 0 | Indica si controlar la producción en este equipo. | [Configuración › Control de producción › Controlar producción](../cuadros-de-dialogo/configuracion/control-de-produccion/controlar-produccion.md) |
| `TiempoVisualizacion` | `Ints` | 2 | Indica el tiempo (en minutos) para la visualización de la barra de producción. | [Configuración › Control de producción › Tiempo de visualización](../cuadros-de-dialogo/configuracion/control-de-produccion/tiempo-de-visualizacion.md) |

## `App\Configuration\Scroll`

Configuración de la ventana fotogramétrica.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<clave índice>` | `Texts` | (vacío) | Lo leen las ventanas de PointCloud y de ortofoto estereoscópica para cargar las imágenes de los índices. `<clave índice>` es uno de los nombres `RutaIndicePequeño`, `RutaIndiceMediano`, `RutaIndiceGrande`, `RutaIndiceAspa`, `RutaIndiceCruz` o `RutaIndicePersonalizado` de esta misma carpeta. | Solo por SQL |
| `3` | `Ints` | 0 | Tras un cambio rápido de modelo, 1 hace que la ventana de dibujo procese un cambio de orientación; 0 hace que gire y regenere su vista según el modelo. | Solo por SQL |
| `CambiarResolucion` | `Ints` | 0 | Indica si cambiar la resolución del monitor al cargar una vista estereoscópica. | [Configuración › Ventana fotogramétrica › Cambiar resolución](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/cambiar-resolucion.md) |
| `CapturarRatónAlHacerClic` | `Ints` | 0 | Captura el ratón en la vista estereoscópica al hacer clic sobre ella. | [Configuración › Ventana fotogramétrica › Capturar el ratón al hacer clic](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/capturar-el-raton-al-hacer-clic.md) |
| `ConsumoMemoriabajoDemanda` | `Ints` | 1 | Si está activo, se solicitará memoria según se vaya cargando la imagen. Eso puede mejorar los recursos de memoria pero ralentizar el cambio rápido de modelos. | [Configuración › Ventana fotogramétrica › Consumo de memoria bajo demanda](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/consumo-de-memoria-bajo-demanda.md) |
| `DecimalesPrecision` | `Ints` | 3 | Indica el número de decimales que se utilizarán para la visualización de coordenadas y de residuos en cuadros de diálogo y ventanas. | [Configuración › Ventana fotogramétrica › Decimales de precisión](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/decimales-de-precision.md) |
| `Frecuencia` | `Ints` | 60 | Indica la frecuencia a seleccionar para el monitor indicado. | [Configuración › Ventana fotogramétrica › Frecuencia](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/frecuencia.md) |
| `MaxMemv2` | `Ints` | 256 | Indica la memoria máxima en MB que consumirá cada una de las cámaras al cargar un modelo estereoscópico. | [Configuración › Ventana fotogramétrica › Consumo de memoria por cámara](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/consumo-de-memoria-por-camara.md) |
| `ModoBenchmark` | `Ints` | 0 | Indica si la vista estereoscópica de Digi3D se regenerará constantemente incluso si no se recibe ningún evento. | [Configuración › Ventana fotogramétrica › Modo benchmark](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/modo-benchmark.md) |
| `MonitorEstereo` | `Ints` | 0 | Indica el nombre de la pantalla a cambiar de resolución. | [Configuración › Ventana fotogramétrica › Monitor a cambiar la resolución](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/monitor-a-cambiar-la-resolucion.md) |
| `MostrarPanelLateral` | `Ints` | 1 | Si está activo, se mostrará un panel lateral en la ventana fotogramétrica que permite cambiar la radiometría de las imágenes mostradas. | [Configuración › Ventana fotogramétrica › Mostrar panel lateral](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/mostrar-panel-lateral.md) |
| `NumeroTriangulosHorizontalPorTesela` | `Ints` | 4 | Número de subdivisiones por lado de cada tesela de imagen cuando la imagen se dibuja transformada (proyectada). Debe ser 1 o mayor. | Solo por SQL |
| `OrigenPixelCentroPixel` | `Ints` | 0 | Especifica el origen del píxel en la ventana fotogramétrica. | [Configuración › Ventana fotogramétrica › Origen del píxel](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/origen-del-pixel.md) |
| `PermitirAnimaciónOpacidad` | `Ints` | 0 | Si está activo, los tiles recién cargados se muestran con una animación. | [Configuración › Ventana fotogramétrica › Permitir animaciones de opacidad](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/permitir-animaciones-de-opacidad.md) |
| `Prioridad` | `Ints` | 1 o 0, según el código que lo lee primero | Indica la prioridad de los hilos trabajadores encargados de la carga de tiles en segundo plano. | [Configuración › Ventana fotogramétrica › Prioridad de los hilos de carga](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/prioridad-de-los-hilos-de-carga.md) |
| `ProyectarSoloVectoresQueSolapanConModelo` | `Ints` | 0 | Si se habilita, únicamente se proyectarán las geometrías que solapen con las máximas y mínimas del modelo fotogramétrico. | [Configuración › Ventana fotogramétrica › Proyectar solo geometrías que solapan con modelo (BETA)](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/proyectar-solo-geometrias-que-solapan-con-modelo.md) |
| `ProyectarVectoresSíncrono` | `Ints` | 0 | Indica si los vectores se proyectarán en la cámara estereoscópica de forma síncrona o asíncrona. | [Configuración › Ventana fotogramétrica › Proyectar vectores](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/proyectar-vectores.md) |
| `Resolucion` | `Texts` | `640 x 480 x 32` | Indica la resolución a seleccionar para el monitor indicado. | [Configuración › Ventana fotogramétrica › Resolución](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/resolucion.md) |
| `RutaIndiceAspa` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice con forma de aspa. | [Configuración › Ventana fotogramétrica › Índice aspa](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-aspa.md) |
| `RutaIndiceCruz` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice con forma de cruz. | [Configuración › Ventana fotogramétrica › Índice cruz](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-cruz.md) |
| `RutaIndiceGrande` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice grande. | [Configuración › Ventana fotogramétrica › Índice grande](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-grande.md) |
| `RutaIndiceMediano` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice mediano. | [Configuración › Ventana fotogramétrica › Índice mediano](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-mediano.md) |
| `RutaIndicePequeño` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice pequeño. | [Configuración › Ventana fotogramétrica › Índice pequeño](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-pequeno.md) |
| `RutaIndicePersonalizado` | `Texts` | (vacío) | Ruta del archivo PNG con la imagen a mostrar si se selecciona el índice personalizado. | [Configuración › Ventana fotogramétrica › Índice personalizado](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/indice-personalizado.md) |
| `TamanoTiles` | `Ints` | 256 | Indica el tamaño que tendrán las teselas para aquellas imágenes que no están formadas por teselas como JPG. | [Configuración › Ventana fotogramétrica › Tamaño de las teselas](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/tamano-de-las-teselas.md) |
| `TipoEstereo` | `Ints` | 0 | Indica el método utilizado para mostrar estereoscopía. | [Configuración › Ventana fotogramétrica › Estereoscopía](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/estereoscopia.md) |

## `App\Configuration`

Configuración general de la aplicación.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<proveedor>ApiKey` | `Texts` | (vacío) | Clave de API del proveedor del asistente de IA, cifrada con DPAPI de máquina y codificada en base64. `<proveedor>` es `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama` o `Generico`. | Configuración del proveedor en el panel del **asistente de IA** |
| `ComprobarVersiónBETA` | `Ints` | 0 | Si está activo, se activará la detección de versiones nuevas en estado de BETA (versiones que no han sido probadas al 100% y que pueden tener fallos) | [Configuración › Comunicación con Internet › Permitir instalar versiones BETA](../cuadros-de-dialogo/configuracion/comunicacion-con-internet/permitir-instalar-versiones-beta.md) |
| `ComprobarVersiónNueva` | `Ints` | 1 | Si está activo, se comprobará si existe una versión nueva cada vez que se inicie la aplicación. | [Configuración › Comunicación con Internet › Comprobar versión nueva](../cuadros-de-dialogo/configuracion/comunicacion-con-internet/comprobar-version-nueva.md) |
| `ConectarConServidoresArchivosReferencia` | `Ints` | 1 | Si se habilita, se conectará con el servidor que haya bloqueado un archivo de dibujo para obtener modificaciones en tiempo real. | [Configuración › Servidor de archivos de referencia › Conectar con servidores](../cuadros-de-dialogo/configuracion/servidor-de-archivos-de-referencia/conectar-con-servidores.md) |
| `DirecciónProxy` | `Texts` | (vacío) | Introduce aquí la dirección del servidor proxy. | [Configuración › Comunicación con Internet › Dirección](../cuadros-de-dialogo/configuracion/comunicacion-con-internet/direccion.md) |
| `DirectorioInstalacion` | `Texts` | (vacío) | Carpeta de instalación de Digi3D.AI. Desde ella se cargan los importadores y exportadores. | Solo por SQL (el instalador escribe el valor inicial) |
| `DirectorioPythonDigi3DAI` | `Texts` | carpeta del ejecutable | Especifica el directorio donde localizar las librerías de Python. | [Configuración › Python › Directorio Home de Python](../cuadros-de-dialogo/configuracion/python/directorio-home-de-python.md) |
| `EpsgCrsKitSqlite` | `Texts` | `C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite` | Ruta de la base de datos EPSG que usa la biblioteca de sistemas de referencia. | Solo por SQL (el instalador escribe el valor inicial) |
| `FullMDI3D` | `Ints` | 1 | Si está activo, al abrir una vista estereoscópica, esta no podrá salir de la ventana marco principal de la aplicación. | [Configuración › Comunicación con el usuario › Configuración para un único monitor](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/configuracion-para-un-unico-monitor.md) |
| `GenerarArchivoLog` | `Ints` | 0 | Si se activa, el programa almacenará en un archivo de LOG información para ayudar a detectar errores. | [Configuración › Depuración › Crear archivo de LOG](../cuadros-de-dialogo/configuracion/depuracion/crear-archivo-de-log.md) |
| `GenerarSistemasReferenciaCompatiblesEsriProjectionEngine` | `Ints` | 0 | Permite configurar el tipo de cadenas WKT creadas por el programa. | [Configuración › Sistema de referencia de coordenadas › Crear cadenas WKT compatibles con](../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/crear-cadenas-wkt-compatibles-con.md) |
| `InstallDirDebugUnicode` | `Texts` | (vacío) | Carpeta de instalación que usan las compilaciones de depuración. No la usa la versión instalada. | Solo por SQL |
| `InterseccionPuntoRectaNuevo` | `Ints` | 1 | Si vale 1, la proyección de un punto sobre una recta usa el algoritmo optimizado para 3D. | Solo por SQL. El cuadro Configuración no muestra la opción, pero al pulsar **Aceptar** vuelve a guardar el valor que leyó. |
| `MonitorizarFirstChanceExceptions` | `Ints` | 0 | Si vale 1, Digi3D.AI registra las excepciones de primera oportunidad de .NET al arrancar. Sirve para diagnóstico. | Solo por SQL |
| `MostrarTodasLasEtiquetas` | `Ints` | 0 | Cuando está activo se muestran todas las etiquetas de la tabla de códigos en vez de mostrar únicamente las etiquetas asociadas a los códigos de las entidades cargadas en el archivo de dibujo. | [Configuración › Comunicación con el usuario › Mostrar todas las etiquetas](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/mostrar-todas-las-etiquetas.md) |
| `OpenGisFiles` | `Texts` | (vacío) | Carpeta de datos de la biblioteca de sistemas de referencia (rejillas y archivos auxiliares). | Solo por SQL (el instalador escribe el valor inicial) |
| `PreferredLanguage` | `Texts` | `en-US` | Idioma de la interfaz, por ejemplo `es-ES` o `en-US`. | [Configuración › Comunicación con el usuario › Idioma](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/idioma.md) |
| `PuertoServidorArchivosReferencia` | `Ints` | 4456 | Indica el puerto en el que se creará el servidor. | [Configuración › Servidor de archivos de referencia › Puerto](../cuadros-de-dialogo/configuracion/servidor-de-archivos-de-referencia/puerto.md) |
| `RutaArchivoLog` | `Texts` | (vacío) | Ruta al archivo de LOG a crear. | [Configuración › Depuración › Ruta al archivo de LOG](../cuadros-de-dialogo/configuracion/depuracion/ruta-al-archivo-de-log.md) |
| `SegundosVigilanteCierre` | `Ints` | 120 | Segundos que Digi3D.AI espera a que terminen sus hilos al cerrarse antes de generar un volcado de diagnóstico. 0 o un valor negativo desactiva la vigilancia. | Solo por SQL |
| `ServidorArchivosReferencia` | `Ints` | 1 | Si se habilita, se creará un servidor para informar al resto de equipos cada vez que se actualice un archivo de dibujo. | [Configuración › Servidor de archivos de referencia › Crear servidor](../cuadros-de-dialogo/configuracion/servidor-de-archivos-de-referencia/crear-servidor.md) |
| `SolicitarSistemaVerticalSiElSensorEs2D` | `Ints` | 0 | Si el sistema de referencia de coordenadas proporcionado por el sensor no proporciona el sistema de referencia vertical, si está activa esta opción, se pregunta por el sistema. En caso contrario se supone que es desconocido. | [Configuración › Sistema de referencia de coordenadas › Solicitar sistema vertical para sensores](../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) |
| `TipoConexionInternet` | `Ints` | 0 | Indica el tipo de conexión a internet. | [Configuración › Comunicación con Internet › Tipo de conexión](../cuadros-de-dialogo/configuracion/comunicacion-con-internet/tipo-de-conexion.md) |
| `TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido` | `Ints` | 0 | Si se activa esta opción y el usuario crea un SRC con el sistema vertical desconocido, se creará un sistema 2D en vez de uno compuesto. Además si se carga un sistema 2D se asumirá que el vertical es desconocido y no se preguntará por él. | [Configuración › Sistema de referencia de coordenadas › Trabajar con sistemas 2D (horizontales) si el vertical es desconocido](../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/trabajar-con-sistemas-2d-si-el-vertical-es-desconocido.md) |
| `XsltDigiTab` | `Texts` | (vacío) | Hoja de estilos XSLT que Digi3D.AI incluye al guardar una tabla de códigos en XML. | Solo por SQL (el instalador escribe el valor inicial) |
| `XsltKeyboard` | `Texts` | (vacío) | Hoja de estilos XSLT que Digi3D.AI incluye al guardar un archivo de teclado en XML. | Solo por SQL (el instalador escribe el valor inicial) |

## `App\Languages`

Nombres visibles de los idiomas instalados.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<idioma>` | `Texts` | (vacío) | Nombre visible de cada idioma instalado. Digi3D.AI enumera los nombres de idioma en el registro de Windows y lee su texto de esta carpeta. | Solo por SQL (el instalador escribe el valor inicial) |

## `CurrentVersion`

Carpeta creada por una comprobación heredada de la versión de Windows.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `CurrentVersion` | `Ints` | 1 | Valor heredado de una comprobación de la versión de Windows. Decide si algunos cuadros de tarea usan el control nativo de Windows. | Solo por SQL |

## `Digi3D\ComunicacionExterior`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ActivarComunicacionExterior` | `Ints` | 0 | Si se activa, la ventana fotogramétrica enviará coordenadas por el puerto serie. | [Configuración › Envío de coordenadas por puerto serie › Activar](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/activar.md) |
| `BaudiosComunicacionExterior` | `Ints` | 115200 | Velocidad del puerto serie, en baudios, para el envío de coordenadas. | [Configuración › Envío de coordenadas por puerto serie › Velocidad en baudios](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/velocidad-en-baudios.md) |
| `FormatoComunicacionExterior` | `Ints` | 0 | Formato en el que se enviarán las coordenadas. | [Configuración › Envío de coordenadas por puerto serie › Formato de comunicación exterior](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/formato-de-comunicacion-exterior.md) |
| `MilisegundosEsperaOnMove` | `Ints` | 0 | Si el valor es distinto de 0, indica la cantidad de milisegundos que se esperará para enviar una coordenada desde el momento en el que el usuario pulsa el pedal/botón de dato y no lo levanta hasta que se comienzan a enviar coordenadas. | [Configuración › Envío de coordenadas por puerto serie › Milisegundos de espera para modo continuo](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/milisegundos-de-espera-para-modo-continuo.md) |
| `Postfijo` | `Ints` | 1 | Bytes con los que finalizar el mensaje enviado por el puerto serie. | [Configuración › Envío de coordenadas por puerto serie › Finalización del mensaje](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/finalizacion-del-mensaje.md) |
| `PuertoSerieComunicacionExterior` | `Ints` | 1 | Puerto serie por el cual enviar la información. | [Configuración › Envío de coordenadas por puerto serie › Puerto serie](../cuadros-de-dialogo/configuracion/envio-de-coordenadas-por-puerto-serie/puerto-serie.md) |

## `Digi3D\Configuration\DatabaseEditor`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AcciónAlHacerDobleClicPanelEditorBBDD` | `Ints` | 1 | Indica cómo se comportará la ventana de dibujo al hacer doble clic sobre una entidad seleccionada en el panel Resultados de la búsqueda. | [Configuración › Editor de la base de datos › Acción al hacer doble clic](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/accion-al-hacer-doble-clic.md) |
| `PermitirEditar` | `Ints` | 0 | Indica si se le permitirá al usuario editar la base de datos con el editor de la base de datos. | [Configuración › Editor de la base de datos › Permitir editar la base de datos](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/permitir-editar-la-base-de-datos.md) |
| `QueRegistrosMostrar` | `Ints` | 1 o 2, según el código que lo lee primero | Indica qué tablas y registros mostrará el panel. | [Configuración › Editor de la base de datos › Tablas/Registros a mostrar](../cuadros-de-dialogo/configuracion/editor-de-la-base-de-datos/tablas-registros-a-mostrar.md) |
| `TipoTitulosCampos` | `Ints` | 0 | Nombre a mostrar en los campos de base de datos. | [Configuración › Base de datos › Nombre a mostrar](../cuadros-de-dialogo/configuracion/base-de-datos/nombre-a-mostrar.md) |

## `Digi3D\Configuration\Interpolation`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `TipoInterpolacionProyectarEntidades` | `Ints` | 1 | Si el sensor admite trabajar con interpolación de subpixel, permite indicar si quieres realizar los cálculos con interpolación de subpixel (esto puede aumentar considerablemente el tiempo de proceso). | [Configuración › Interpolación de subpixel › Al proyectar las entidades en cada cámara](../cuadros-de-dialogo/configuracion/interpolacion-de-subpixel/al-proyectar-las-entidades-en-cada-camara.md) |
| `TipoInterpolacionRoaming` | `Ints` | 0 | Si el sensor admite trabajar con interpolación de subpixel, permite indicar si quieres realizar los cálculos con interpolación de subpixel (esto puede aumentar considerablemente el tiempo de proceso). | [Configuración › Interpolación de subpixel › Al desplazarse por el modelo](../cuadros-de-dialogo/configuracion/interpolacion-de-subpixel/al-desplazarse-por-el-modelo.md) |

## `Digi3D\Extensiones\<extensión>\<idioma>`

`<extensión>` es el nombre de una extensión de órdenes de Digi3D y `<idioma>` un código de idioma como `es-ES`. El instalador escribe estos valores.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<orden>` | `Texts` | (vacío) | Identificador (GUID) de la orden de una extensión de Digi3D, indexado por el nombre de la orden en cada idioma. | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ComprobarImágenes` | `Ints` | 0 | Si vale 1, al cargar un proyecto fotogramétrico se comprueba que existen las imágenes de cada modelo. | [Configuración › Sensor Cónico › Proyecto fotogramétrico: Comprobar imágenes](../cuadros-de-dialogo/configuracion/sensor-conico/proyecto-fotogrametrico-comprobar-imagenes.md) |
| `CorrelarInternas` | `Ints` | 0 | Si vale 1, al cargar un proyecto fotogramétrico se calculan por correlación las orientaciones internas. | [Configuración › Sensor Cónico › Proyecto fotogramétrico: Correlar internas](../cuadros-de-dialogo/configuracion/sensor-conico/proyecto-fotogrametrico-correlar-internas.md) |
| `CorrelarRelativas` | `Ints` | 0 | Si vale 1, al cargar un proyecto fotogramétrico se calculan por correlación las orientaciones relativas. | [Configuración › Sensor Cónico › Proyecto fotogramétrico: Correlar relativas](../cuadros-de-dialogo/configuracion/sensor-conico/proyecto-fotogrametrico-correlar-relativas.md) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\<extensión>`

`<extensión>` es el nombre de cada extensión del sensor cónico que el instalador registra en **HKEY\_LOCAL\_MACHINE**.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | Si vale 1, Digi3D.AI carga al arrancar esa extensión del sensor cónico (importadores de cámaras y orientaciones). | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Archivo` | `Texts` | `FICHERO` | Nombre del campo con el nombre de la imagen. | [Configuración › Importador de orientaciones de Access › Imagen](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/imagen.md) |
| `k` | `Texts` | `K` | Nombre del campo con el ángulo Kappa. | [Configuración › Importador de orientaciones de Access › Kappa](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/kappa.md) |
| `NombreImagenConExtension` | `Ints` | 0 | Indica si en la BBDD aparece el nombre de la imagen con extensión. | [Configuración › Importador de orientaciones de Access › Nombre de la imagen con extensión](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/nombre-de-la-imagen-con-extension.md) |
| `o` | `Texts` | `OM` | Nombre del campo con el ángulo Omega. | [Configuración › Importador de orientaciones de Access › Omega](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/omega.md) |
| `OrdenGiros` | `Ints` | 0 | Indica el orden de los giros con el que se construirá la matriz de Euler. | [Configuración › Importador de orientaciones de Access › Orden de los giros](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/orden-de-los-giros.md) |
| `p` | `Texts` | `PHI` | Nombre del campo con el ángulo Phi. | [Configuración › Importador de orientaciones de Access › Phi](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/phi.md) |
| `tabla` | `Texts` | `EXTERIOR ORIENTATION` | Nombre de la tabla en la que localizar las orientaciones. | [Configuración › Importador de orientaciones de Access › Tabla](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/tabla.md) |
| `UnidadesAngulos` | `Ints` | 1 | Indica las unidades en las que están almacenados los giros en los archivos .eo y .imu que va a importar. | [Configuración › Importador de orientaciones de Access › Unidades de los giros](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/unidades-de-los-giros.md) |
| `x` | `Texts` | `XL` | Nombre del campo con la coordenada X del centro de proyección. | [Configuración › Importador de orientaciones de Access › X](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/x.md) |
| `y` | `Texts` | `YL` | Nombre del campo con la coordenada Y del centro de proyección. | [Configuración › Importador de orientaciones de Access › Y](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/y.md) |
| `z` | `Texts` | `ZL` | Nombre del campo con la coordenada Z del centro de proyección. | [Configuración › Importador de orientaciones de Access › Z](../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/z.md) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `OrdenGiros` | `Ints` | 0 | Indica el orden de los giros con el que se construirá la matriz de Euler. | [Configuración › Importador de centros de proyección y giros (.eo, .imu) › Orden de los giros](../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/orden-de-los-giros.md) |
| `UnidadesAngulos` | `Ints` | 1 | Indica las unidades en las que están almacenados los giros en los archivos .eo y .imu que va a importar. | [Configuración › Importador de centros de proyección y giros (.eo, .imu) › Unidades de los giros](../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/unidades-de-los-giros.md) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Inpho`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `MostrarDialogoSaltoFotos` | `Ints` | 0 | Si se activa, se mostrará un cuadro de diálogo solicitando el número de fotos a saltar al cargar un proyecto fotogramétrico. | [Configuración › Inpho › Solicitar salto de fotos](../cuadros-de-dialogo/configuracion/inpho/solicitar-salto-de-fotos.md) |
| `OmitirModelosParaLosCualesNoSeLocalizaFoto` | `Ints` | 1 | Si se activa, al cargar un proyecto fotogramétrico no se mostrarán los modelos para los cuales no se ha localizado alguna de sus fotos. | [Configuración › Inpho › Omitir modelos para los cuales no hay foto](../cuadros-de-dialogo/configuracion/inpho/omitir-modelos-para-los-cuales-no-hay-foto.md) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `CalcularEnLaNube` | `Ints` | 0 | Si está activo, el cálculo de la orientación relativa se realizará en los servidores en la nube de digi21.net. | [Configuración › Orientación relativa › Calcular en la nube](../cuadros-de-dialogo/configuracion/orientacion-relativa/calcular-en-la-nube.md) |

## `Digi3D\Extensiones\Digi3D.ConicSensor`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `OblicuasConHorizonteArriba` | `Ints` | 1 | Proyectando, un par oblicuo cuya dirección de mirada apunte hacia abajo de la pantalla se gira 180 grados y se intercambian los ojos: el horizonte queda arriba y se conserva la estereoscopía. Los pares que miran en la dirección de la base necesitarían 90 grados, que rompen la estereoscopía, y se dejan como están. | [Configuración › Sensor Cónico › Oblicuas con el horizonte arriba](../cuadros-de-dialogo/configuracion/sensor-conico/oblicuas-con-el-horizonte-arriba.md) |
| `ProyectarImagenes3` | `Ints` | 1 | Indica cómo se mostrarán las imágenes. | [Configuración › Sensor Cónico › Modo de presentación de imágenes](../cuadros-de-dialogo/configuracion/sensor-conico/modo-de-presentacion-de-imagenes.md) |
| `TransformarEscalaEnFunciónProyección` | `Ints` | 0 | Si está activo, al cargar modelos en UTM se aplicará el factor de escala K a las medidas. | [Configuración › Sensor Cónico › Transformar la escala en función de la proyección](../cuadros-de-dialogo/configuracion/sensor-conico/transformar-la-escala-en-funcion-de-la-proyeccion.md) |

## `Digi3D\Extensiones\Digi3D.PointCloud`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AnguloCamaraIrPuntoOrigen` | `Ints` | 0 | Ángulo inicial que tendrá la cámara al seleccionar la opción Ventana fotogramétrica/Ir a punto de origen. | [Configuración › Visualización de PointCloud › Ángulo inicial de la cámara](../cuadros-de-dialogo/configuracion/visualizacion-de-pointcloud/angulo-inicial-de-la-camara.md) |
| `Decimar` | `Ints` | 0 | 0 = no decimar. X = importar un punto de cada X puntos, por ejemplo 100 indica que se carga un punto de cada 100 puntos de la nube de puntos. | [Configuración › Creación de archivos de nivel de detalle de PointCloud › Decimar](../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/decimar.md) |
| `DirectorioLod` | `Texts` | carpeta temporal | Indica la ruta donde se almacenarán los archivos de nivel de detalle. | [Configuración › Creación de archivos de nivel de detalle de PointCloud › Directorio de nivel de detalle](../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/directorio-de-nivel-de-detalle.md) |
| `DistanciaCamaraIrPuntoOrigen` | `Doubles` | 10.0 | Distancia a la que se ubicará la cámara con respecto al índice al seleccionar la opción Ventana fotogramétrica/Ir a punto de origen. | [Configuración › Visualización de PointCloud › Distancia inicial de la cámara al índice](../cuadros-de-dialogo/configuracion/visualizacion-de-pointcloud/distancia-inicial-de-la-camara-al-indice.md) |
| `FactorZoom` | `Doubles` | 1.2 | Especifica el factor de zoom a aplicar al ejecutar las órdenes de zoom acercar/alejar. Es un valor positivo mayor que 1.0. | [Configuración › Visualización de PointCloud › Factor de zoom](../cuadros-de-dialogo/configuracion/visualizacion-de-pointcloud/factor-de-zoom.md) |
| `PorcentajeMaximoConsumoMemoriaCrearLod` | `Ints` | 90 | Indica el porcentaje máximo de RAM total del ordenador que se le permite consumir al algoritmo. | [Configuración › Creación de archivos de nivel de detalle de PointCloud › Porcentaje de RAM a consumir](../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/porcentaje-de-ram-a-consumir.md) |
| `PuntosPorNodo` | `Ints` | 16000 | Número de puntos que se desea por tesela. Cada tesela es un VBO y una llamada de dibujo cuyo coste es fijo independientemente del número de puntos, así que las teselas demasiado pequeñas ahogan al driver. El lado del nodo raíz se deduce de la forma de la nube para acercarse a este objetivo. | [Configuración › Creación de archivos de nivel de detalle de PointCloud › Puntos por tesela](../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/puntos-por-tesela.md) |

## `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `NumeroPuntosMedidosParaCalcularRpcba` | `Ints` | 1 | Número mínimo de puntos medidos para calcular el ajuste RPCBA. | [Configuración › Parámetros del ajuste RPCBA › Número de puntos para calcular](../cuadros-de-dialogo/configuracion/parametros-del-ajuste-rpcba/numero-de-puntos-para-calcular.md) |
| `PrecisionAltimetricaApoyo` | `Doubles` | 0.5 | Precisión altimétrica de los puntos de apoyo en el ajuste RPCBA. | [Configuración › Parámetros del ajuste RPCBA › Precisión altimétrica del apoyo](../cuadros-de-dialogo/configuracion/parametros-del-ajuste-rpcba/precision-altimetrica-del-apoyo.md) |
| `PrecisionAltimetricaPuntosPaso` | `Doubles` | 0.5 | Precisión altimétrica de los puntos de paso en el ajuste RPCBA. | Solo por SQL |
| `PrecisionCoordenadasImagen` | `Doubles` | 0.5 | Precisión de las coordenadas imagen en el ajuste RPCBA. | [Configuración › Parámetros del ajuste RPCBA › Precisión de las coordenadas imagen](../cuadros-de-dialogo/configuracion/parametros-del-ajuste-rpcba/precision-de-las-coordenadas-imagen.md) |
| `PrecisionParametrosAjuste` | `Doubles` | 20.0 | Precisión a priori de los parámetros del ajuste RPCBA. | [Configuración › Parámetros del ajuste RPCBA › Precisión de los parámetros de ajuste](../cuadros-de-dialogo/configuracion/parametros-del-ajuste-rpcba/precision-de-los-parametros-de-ajuste.md) |
| `PrecisionPlanimetricaApoyo` | `Doubles` | 0.1 | Precisión planimétrica de los puntos de apoyo en el ajuste RPCBA. | [Configuración › Parámetros del ajuste RPCBA › Precisión planimétrica del apoyo](../cuadros-de-dialogo/configuracion/parametros-del-ajuste-rpcba/precision-planimetrica-del-apoyo.md) |
| `PrecisionPlanimetricaPuntosPaso` | `Doubles` | 0.1 | Precisión planimétrica de los puntos de paso en el ajuste RPCBA. | Solo por SQL |

## `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `DistanciaFiltrado` | `Doubles` | 100 | Distancia por encima de la cual se filtrarán los puntos. | [Configuración › Ortofoto estereoscópica › Distancia de filtrado](../cuadros-de-dialogo/configuracion/ortofoto-estereoscopica/distancia-de-filtrado.md) |
| `FactorZoom` | `Doubles` | 1.2 | Especifica el factor de zoom a aplicar al ejecutar las órdenes de zoom acercar/alejar. Es un valor positivo mayor que 1.0. | [Configuración › Ortofoto estereoscópica › Factor de zoom](../cuadros-de-dialogo/configuracion/ortofoto-estereoscopica/factor-de-zoom.md) |
| `FiltrarMdt` | `Ints` | 0 | Si se activa se filtrarán los puntos cuya Z sea superior a la media de la tesela. | [Configuración › Ortofoto estereoscópica › Filtrar MDT](../cuadros-de-dialogo/configuracion/ortofoto-estereoscopica/filtrar-mdt.md) |
| `ProyectarZVectores` | `Ints` | 0 | Si se activa, se proyectará siempre la Z de los vectores en la ventana fotogramétrica. Esto permite trabajar con modelos 2D estereoscópicamente. | [Configuración › Ortofoto estereoscópica › Proyectar la Z de los vectores](../cuadros-de-dialogo/configuracion/ortofoto-estereoscopica/proyectar-la-z-de-los-vectores.md) |
| `ZoomsCambioFocal` | `Ints` | 0 | Indica el procedimiento por el cual se cambia el zoom en la ventana fotogramétrica. | [Configuración › Ortofoto estereoscópica › Tipo de zoom](../cuadros-de-dialogo/configuracion/ortofoto-estereoscopica/tipo-de-zoom.md) |

## `Digi3D\Extensiones`

Extensiones de órdenes de la ventana fotogramétrica.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Texts` | (vacío) | Descripción de cada extensión de órdenes de Digi3D. Solo aparece en el mensaje de error si la extensión no se carga. | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\IO\TarjDigi3D\<dispositivo>`

`<dispositivo>` es el nombre del dispositivo de entrada configurado (tarjeta serie genérica, ISA, DPW USB…). Las carpetas siguientes, con el nombre de un dispositivo concreto, contienen los mismos valores.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<variable>` | `Texts` | número del botón | Número de la tecla del archivo de configuración de teclas que se asocia a cada botón del dispositivo serie genérico. `<variable>` es `Boton1` a `Boton32`. | Solo por SQL |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `PuertoSerieCodificadores` | `Ints` | 1 | Número del puerto serie del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\DatEmComBox`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `PuertoSerieCodificadores` | `Ints` | 1 | Número del puerto serie del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\DPW`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\DPWUsb`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\IBox`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `DispositivoEsMouse` | `Ints` | 1 | Si vale 1, el dispositivo IBox funciona como ratón. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `PuertoSerieCodificadores` | `Ints` | 1 | Número del puerto serie del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\SEC-232m`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | Solo por SQL |
| `PuertoSerieCodificadores` | `Ints` | valor de `Digi3D\IO\TarjDigi3D\PuertoSerieCodificadores` | Número del puerto serie del dispositivo. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D\UdpIp`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | Solo por SQL |
| `Puerto` | `Ints` | 8888 | Puerto UDP en el que Digi3D.AI recibe las coordenadas. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorX` | `Texts` | depende del dispositivo | Fila X de la matriz que transforma las lecturas de los codificadores en desplazamientos. Cuatro números separados por espacios. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorY` | `Texts` | depende del dispositivo | Fila Y de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |
| `TensorZ` | `Texts` | depende del dispositivo | Fila Z de la matriz que transforma las lecturas de los codificadores en desplazamientos. | [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md), botón de configuración del dispositivo |

## `Digi3D\IO\TarjDigi3D`

Configuración común de los dispositivos de entrada.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AnalizarDobleClic` | `Ints` | 0 | Indica si Digi3D analizará las pulsaciones del pedal/botón de Dato y enviará eventos de tipo doble clic a Digi3D. | [Configuración › Dispositivos de entrada › Analizar doble clic](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/analizar-doble-clic.md) |
| `CapturarDispositivoEntradaAlMoverlo` | `Ints` | 1 | Si está activo, por el mero hecho de mover el dispositivo de entrada, se selecciona como dispositivo de entrada de la ventana de dibujo. | [Configuración › Dispositivos de entrada › Capturar el dispositivo de entrada al moverlo](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/capturar-el-dispositivo-de-entrada-al-moverlo.md) |
| `CederControl` | `Ints` | 1 | Indica si el hilo de ejecución de lectura de coordenadas cede el control a la aplicación principal tras analizar una coordenada o si continúa analizando coordenadas sin ceder el control. | [Configuración › Dispositivos de entrada](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/README.md) › El hilo cede el control |
| `MilisegundosDobleClic` | `Ints` | 200 | Indica el tiempo en milisegundos por debajo del cual dos pulsaciones del botón de Dato se consideran un doble clic. | [Configuración › Dispositivos de entrada › Milisegundos doble clic](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/milisegundos-doble-clic.md) |
| `Prioridad` | `Ints` | 2 | Indica la prioridad del hilo trabajador de comunicación con codificadores en segundo plano. | [Configuración › Dispositivos de entrada › Prioridad del hilo](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/prioridad-del-hilo.md) |
| `PuertoSerieCodificadores` | `Ints` | 1 | Puerto serie común que usa la tarjeta SEC-232m si su carpeta no tiene uno propio. | Solo por SQL |
| `TiempoEspera` | `Ints` | 100 | Indica el tiempo en milisegundos a omitir cualquier información de los pedales tras producirse un evento de pedal (para evitar ruido en pedales analógicos). | [Configuración › Dispositivos de entrada › Tiempo de espera para pedales](../cuadros-de-dialogo/configuracion/dispositivos-de-entrada/tiempo-de-espera-para-pedales.md) |

## `Digi3D\Raster`

Extensiones de formatos ráster.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Texts` | (vacío) | Descripción de cada extensión de formatos ráster. Solo aparece en el mensaje de error si la extensión no se carga. | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `MilisegundosOnTimer` | `Ints` | 0 | Intervalo, en milisegundos, del temporizador que lee los codificadores con la ventana fotogramétrica abierta. 0 usa el mínimo de Windows. | Solo por SQL |

## `DigiNG\Configuration\Projects\<proyecto>\`

`<proyecto>` es el nombre de un proyecto de archivos de dibujo creado con [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md). La ruta termina en `\`. Digi3D.AI enumera los proyectos buscando en `Keys` las rutas que empiezan por `DigiNG\Configuration\Projects\`, y al borrar un proyecto borra su carpeta, sus subcarpetas y todos sus valores.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AlturaTextos` | `Doubles` | 1.5 | Especifica la altura de los textos que se registran (variable AT) | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Altura de textos |
| `ArchivoInicio` | `Texts` | (vacío) | Orden que se ejecuta cada vez que se abre un archivo de dibujo, también desde la línea de comandos, después de las órdenes de inicio de la tabla de códigos y antes de la orden indicada en la línea de comandos. Para ejecutar un archivo de macroinstrucciones, escribe @ seguido de su ruta. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Entorno › Orden de inicio |
| `ArchivoTeclasMenu` | `Texts` | (vacío) | Indica la ruta al archivo con la configuración de teclado. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Entorno › Teclado |
| `ConfigurarParametrosIO` | `Ints` | 0 | Si vale 1, el proyecto guarda los parámetros de importación y exportación de cada formato, y Digi3D.AI no los pide al abrir archivos. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) |
| `CorreccionZ` | `Doubles` | 0.0 | Indica la diferencia de Z entre operadores (se debe ajustar si quien realizó la orientación absoluta no es quien restituye el modelo) | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Corrección de Z |
| `Digi21::DigiTab::DigiTab` | `Texts` | (vacío) | Nombre antiguo del valor `DigiTab`. Digi3D.AI lo lee si `DigiTab` está vacío. | Solo por SQL |
| `DigiTab` | `Texts` | (vacío) | Archivo con información de los códigos así como su representación y traducción. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Entorno › Tabla de códigos |
| `DirectorioCelulas` | `Texts` | (vacío) | Especifica el directorio donde localizar la definición de células. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Entorno › Directorio de símbolos |
| `DirectorioTablas` | `Texts` | (vacío) | Especifica el directorio donde localizar los archivos de macroinstrucciones. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Entorno › Directorio de macroinstrucciones |
| `Equidistancia` | `Doubles` | 1.0 | Especifica cada cuántos metros se registrará una curva de nivel. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Equidistancia |
| `Escala` | `Doubles` | 1000.0 | Escala de trabajo del proyecto. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Escala |
| `IncrementoRegistro` | `Doubles` | 1.0 | Especifica cada cuántos metros registrar un punto al trabajar en modo continuo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Incremento de registro |
| `Sigma` | `Doubles` | 0.001 | Indica el valor por debajo del cual dos valores se considerarán idénticos. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Sigma |
| `ToleranciaGeneralizar` | `Doubles` | 0.04 | Indica la longitud mínima de un segmento al registrar en modo continuo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) › Registro › Tolerancia a generalizar |
| `WktVentanaDibujov2` | `Texts` | SRC local compuesto | Sistema de referencia de coordenadas de la ventana de dibujo, en WKT. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.AsciiDigi`

Parámetros de importación y exportación del formato `Digi21.Io.AsciiDigi` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `NumeroDecimales` | `Ints` | 3 | Indica el número de decimales utilizados al exportar un archivo a formato ASCII de Digi. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Decimales |
| `WktSistemaCoordenadas3D` | `Texts` | SRC local compuesto | Sistema de referencia de coordenadas del archivo, en WKT. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Bin`

Parámetros de importación y exportación del formato `Digi21.Io.Bin` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `NPrecision` | `Ints` | 2 | Indica el número de decimales de precisión con los que se almacenarán/recuperarán las entidades en este archivo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Decimales de precisión |
| `X` | `Doubles` | 0.0 | Indica la coordenada X utilizada como origen global del modelo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › X |
| `Y` | `Doubles` | 0.0 | Indica la coordenada Y utilizada como origen global del modelo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Y |
| `Z` | `Doubles` | 0.0 | Indica la coordenada Z utilizada como origen global del modelo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Z |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.BinDouble`

Parámetros de importación y exportación del formato `Digi21.Io.BinDouble` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BaseDatosSoloLectura` | `Ints` | 0 | Si se conecta en modo solo lectura, no se crearán ni modificarán registros en la base de datos. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Conectar en modo solo lectura |
| `CadenaConexion` | `Texts` | (vacío) | Indica la cadena de conexión para establecer la conexión con la base de datos que almacenará información para las entidades de este archivo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Cadena de conexión |
| `GestorModeloDatosBaseDatos` | `Texts` | `Sin conexión con base de datos` | Selecciona el Gestor de Modelo de datos de Base de Datos a utilizar para almacenar los datos en la base de datos. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Modelo de datos |
| `OmitirCargaArchivosReferencia` | `Ints` | 0 | Si se activa no se cargarán los archivos de referencia asociados al archivo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Omitir carga de archivos de referencia |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Csv`

Parámetros de importación y exportación del formato `Digi21.Io.Csv` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `NombreColumnaX` | `Texts` | (vacío) | Indica el nombre de la columna con la coordenada X. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Columna X |
| `NombreColumnaY` | `Texts` | (vacío) | Indica el nombre de la columna con la coordenada Y. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Columna Y |
| `NombreColumnaZ` | `Texts` | (vacío) | Indica el nombre de la columna con la coordenada Z. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Columna Z |
| `Separador` | `Texts` | `tabulador` | Carácter separador de columnas. Se usa el primer carácter. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Dgn`

Parámetros de importación y exportación del formato `Digi21.Io.Dgn` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ArchivoCelulas` | `Texts` | (vacío) | Especifica el archivo de células relacionado con el archivo DGN. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Archivo de células |
| `ArchivoPlantilla` | `Texts` | (vacío) | Indica la ruta a un archivo de plantilla que se utilizará como base al crear archivos de dibujo nuevos. Este parámetro es opcional. Si no se indica ninguno, se creará un archivo basándose en la tabla de códigos activa. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Archivo de plantilla |
| `CriterioCodigos` | `Ints` | 0 | Especifica el criterio de selección de código. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Criterio para códigos |
| `FormatoDesconocidos` | `Texts` | `$(Nivel)` | Indica el formato del código con el que se importarán las entidades sin asociación en la tabla de traducción. Se pueden utilizar los siguientes sustituidores: $(Nivel) $(Color) $(Estilo) $(Grosor) $(GrupoGrafico) | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Formato desconocido |
| `ImportarCelulasComoPuntual` | `Ints` | 1 | Indica en qué tipo de entidad se transformarán las células del archivo DGN. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Importar células como |
| `ImportarPaletaDGN` | `Ints` | 1 | Indica si importar la paleta de colores del archivo DGN (únicamente si el archivo DGN tiene alguna paleta que importar). | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Importar paleta |
| `IncrementoRegistroSplines` | `Doubles` | 1.0 | Indica el incremento de registro que se utilizará a la hora de transformar splines en polilíneas al importar archivos de dibujo con splines. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Incremento de registro splines |
| `RutasArchivosRecursos` | `Texts` | (vacío) | Introduce aquí las rutas a los archivos de recursos de MicroStation separadas por punto y coma. El último archivo tiene más prioridad. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Archivos de recursos de simbología |
| `TransformarNivelesEntidadesQueFormanCell` | `Ints` | 0 | Si está activo, se transformarán los niveles de las entidades que forman parte de la célula al exportar a formato DGN. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Transformar el nivel de las entidades de las células |
| `UtilizarArchivoCelulas` | `Ints` | 0 | Indica si Digi3D.AI extraerá la forma de las células de la carpeta de símbolos de Digi o de un archivo .cel suministrado. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Extraer células de |
| `UtilizarColoresDGN` | `Ints` | 1 | Indica si las entidades se mostrarán con los colores definidos en el archivo DGN o con los colores definidos en la tabla de códigos activa. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Colores de las entidades |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Dwg`

Parámetros de importación y exportación del formato `Digi21.Io.Dwg` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ImportarBloques` | `Ints` | 0 | Indica si importar bloques del archivo DWG, generando archivos .bin en el directorio especificado. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Importar bloques |
| `ImportarBloquesComoPuntual` | `Ints` | 1 | Indica en qué tipo de entidad se transformarán los bloques del archivo DWG/DXF. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Importar bloques como |
| `ImportarPaleta` | `Ints` | 0 | Indica si se importará la paleta de colores almacenada en el archivo de dibujo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Importar paleta |
| `RutaArchivoPlantilla` | `Texts` | (vacío) | Indica la ruta a un archivo de plantilla que se utilizará como base al crear archivos de dibujo nuevos. Este parámetro es opcional. Si no se indica ninguno, se creará un archivo basándose en la tabla de códigos activa. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Archivo de plantilla |
| `RutaImportacionBloques` | `Texts` | (vacío) | Indica el directorio donde se almacenarán los bloques localizados en el archivo DWG (si se activó la opción de importación de bloques). | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Ruta de importación |
| `UtilizarColoresArchivoDibujo` | `Ints` | 0 | Si está activo, las entidades que tengan color por entidad en el archivo de dibujo importarán dicho color. Si no, el color de las entidades será siempre por capa. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Utilizar colores archivo dibujo |
| `Version` | `Ints` | 3 | Indica la versión del archivo a generar. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Versión |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Dxf`

Parámetros de importación y exportación del formato `Digi21.Io.Dxf` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Binario` | `Ints` | 0 | Indica si crear un archivo DXF binario o ASCII. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Tipo de archivo |
| `ImportarBloques` | `Ints` | el valor actual del parámetro | Si vale 1, importa los bloques del archivo DXF como archivos .bin. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `ImportarBloquesComoPuntual` | `Ints` | el valor actual del parámetro | Tipo de entidad en el que se transforman los bloques del archivo DXF. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `ImportarPaleta` | `Ints` | el valor actual del parámetro | Si vale 1, importa la paleta de colores del archivo DXF. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `RutaArchivoPlantilla` | `Texts` | el valor actual del parámetro | Archivo de plantilla para crear archivos DXF nuevos. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `RutaImportacionBloques` | `Texts` | el valor actual del parámetro | Carpeta donde se guardan los bloques importados. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `UtilizarColoresArchivoDibujo` | `Ints` | el valor actual del parámetro | Si vale 1, las entidades con color propio en el DXF conservan ese color. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `Version` | `Ints` | el valor actual del parámetro | Versión del archivo DXF a generar. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.GeoJson`

Parámetros de importación y exportación del formato `Digi21.Io.GeoJson` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `WktSistemaCoordenadas3D` | `Texts` | SRC local compuesto | Sistema de referencia de coordenadas del archivo, en WKT. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Geomedia`

Parámetros de importación y exportación del formato `Digi21.Io.Geomedia` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `WktSistemaCoordenadas3D` | `Texts` | SRC local compuesto | Sistema de referencia de coordenadas del archivo, en WKT. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Kml`

Parámetros de importación y exportación del formato `Digi21.Io.Kml` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Descripcion` | `Texts` | (vacío) | Indica una descripción que aparecerá debajo del título en Google Earth. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Descripción |
| `Titulo` | `Texts` | (vacío) | Indica el título del lugar creado. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Título |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Orthophoto`

Parámetros de importación y exportación del formato `Digi21.Io.Orthophoto` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Comprimir` | `Ints` | 1 | Si está activo se comprimirá la imagen en la memoria de la tarjeta gráfica. Esto le permitirá cargar más imágenes sin agotar la memoria de la tarjeta. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Comprimir |
| `NivelPiramidalCargar` | `Ints` | 0 | Indica el nivel piramidal a cargar. Si la imagen no dispone de ese nivel piramidal, se cargará el más cercano de entre los disponibles. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Nivel piramidal |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Pdf`

Parámetros de importación y exportación del formato `Digi21.Io.Pdf` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ExplotarSimbologia` | `Ints` | 1 | Si se activa, las líneas se mostrarán con su simbología. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Explotar simbología |
| `Tamano` | `Ints` | 0 | Tamaño del papel del PDF. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Tamaño del papel |
| `Titulo` | `Texts` | (vacío) | Especifica el título del documento. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Título |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.PostGIS`

Parámetros de importación y exportación del formato `Digi21.Io.PostGIS` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BaseDatos` | `Texts` | (vacío) | Indica la base de datos a la que conectar de entre las que dispone el servidor. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Base de datos |
| `Condiciones` | `Texts` | (vacío) | Condiciones SQL adicionales para filtrar las geometrías que se cargan. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |
| `Contraseña` | `Texts` | (vacío) | Indica la contraseña de conexión al servidor. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Contraseña |
| `Puerto` | `Ints` | 5432 | Indica el puerto de conexión al servidor. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Puerto |
| `Servidor` | `Texts` | `localhost` | Especifica el nombre (o dirección) del servidor de bases de datos en la red. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Servidor |
| `Usuario` | `Texts` | (vacío) | Indica el nombre de usuario con el que conectar al servidor. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Usuario |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Shp`

Parámetros de importación y exportación del formato `Digi21.Io.Shp` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `CargarRegionDeInteres` | `Ints` | 0 | Si está activo, carga únicamente la región de interés. Para ello, seleccionar con el botón derecho el archivo en el panel de archivo de dibujo. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Cargar región de interés (BETA) |
| `ldid` | `Ints` | 255 | Indica la codificación con la que se almacenarán las cadenas de texto en la base de datos creada. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Codificación |
| `precision` | `Ints` | 0 | Indica el número de decimales de precisión en la exportación, de 0 a 12. Asigna 0 si no deseas redondeo de precisión. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Decimales de precisión |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Svg`

Parámetros de importación y exportación del formato `Digi21.Io.Svg` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ancho` | `Ints` | 400 | Indica el ancho del dibujo en píxeles. El alto se calculará en función del ancho. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato › Ancho del dibujo |

## `DigiNG\Configuration\Projects\<proyecto>\DigiNG\IO\Digi21.Io.Wkt`

Parámetros de importación y exportación del formato `Digi21.Io.Wkt` guardados en el proyecto `<proyecto>`. Solo se usan si el proyecto tiene activo `ConfigurarParametrosIO`.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ancho` | `Ints` | 400 | Ancho del dibujo en píxeles. | [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md), parámetros del formato |

## `DigiNG\Configuration`

Configuración general de la ventana de dibujo.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AnchoOAltoMinimoFactorZoom` | `Doubles` | 1.0 | Indica el ancho/alto mínimo que podrá tener la ventana de dibujo si se activa la opción "Limitar el zoom máximo". | [Configuración › Ventana de dibujo › Tamaño de ventana](../cuadros-de-dialogo/configuracion/diging/tamano-de-ventana.md) |
| `BloqueoMayusculasActuaComoMayusculas` | `Ints` | 0 | Si está activo, si se tiene activado el bloqueo de mayúsculas y se pulsa una tecla, el programa considerará que se ha pulsado la combinación de teclas Shift + tecla pulsada. | [Configuración › Ventana de dibujo › Bloqueo de mayúsculas actúa como mayúsculas](../cuadros-de-dialogo/configuracion/diging/bloqueo-de-mayusculas-actua-como-mayusculas.md) |
| `DestinoCopiasSeguridad` | `Texts` | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` | Indica la ruta y nombre del archivo de copias de seguridad (admite sustituidores) | [Configuración › Copia de seguridad › Destino de copias de seguridad](../cuadros-de-dialogo/configuracion/copia-de-seguridad/destino-de-copias-de-seguridad.md) |
| `DestinoCopiasSeguridadAlComprimir` | `Texts` | `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)` | Indica la ruta y nombre del archivo de copias de seguridad generada al comprimir (admite sustituidores) | [Configuración › Copia de seguridad › Destino de copias de seguridad al comprimir](../cuadros-de-dialogo/configuracion/copia-de-seguridad/destino-de-copias-de-seguridad-al-comprimir.md) |
| `DibujarPoligonos3D` | `Ints` | 0 | Si se activa, los polígonos se dibujarán con coordenada Z. Si el polígono tiene diferencias muy grandes de Z puede que no se represente el polígono. | [Configuración › Ventana de dibujo › Dibujar polígonos en 3D](../cuadros-de-dialogo/configuracion/diging/dibujar-poligonos-en-3d.md) |
| `DibujarPrimeroElPrimerCódigoDeEntidad` | `Ints` | 1 | Indica el orden en el que se dibujarán los códigos si la entidad tiene múltiples códigos. | [Configuración › Ventana de dibujo › Orden dibujo (multi código)](../cuadros-de-dialogo/configuracion/diging/orden-dibujo-multi-codigo.md) |
| `DirectorioAyudasCodigos` | `Texts` | (vacío) | Indica el directorio donde localizar los archivos .htm (o .html) asociados a cada código en el digi.tab. | [Configuración › Comunicación con el usuario › Directorio de ayudas de códigos](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/directorio-de-ayudas-de-codigos.md) |
| `EscapeVaciaPilaOrdenes` | `Ints` | 0 | Si se activa, al pulsar la tecla Esc se vaciará por completo la pila de órdenes. | [Configuración › Ventana de dibujo › Escape vacía la pila de órdenes](../cuadros-de-dialogo/configuracion/diging/escape-vacia-la-pila-de-ordenes.md) |
| `FiltrarPuntosPara2D` | `Ints` | 1 | Si se activa, las herramientas de filtrado de vértices consecutivos duplicados permitirán vértices consecutivos con las mismas coordenadas X,Y pero con distinta coordenada Z. | [Configuración › Ventana de dibujo › Permitir vértices consecutivos con la misma coordenada XY](../cuadros-de-dialogo/configuracion/diging/permitir-vertices-consecutivos-con-la-misma-coordenada-xy.md) |
| `ForzarRegistroGeometriaOriginal` | `Ints` | 0 | Si se activa, las geometrías obtenidas a partir de otra existente (mover, copiar, partir, duplicar, etc.) apuntarán al mismo registro de BBDD que la original. | [Configuración › Base de datos › Forzar registro de la geometría original](../cuadros-de-dialogo/configuracion/base-de-datos/forzar-registro-de-la-geometria-original.md) |
| `GenerarCopiaSeguridadAlComprimir` | `Ints` | 0 | Indica si Digi3D.AI generará una copia de seguridad de tu archivo de trabajo al comprimir el archivo de dibujo. | [Configuración › Copia de seguridad › Generar copia de seguridad al comprimir](../cuadros-de-dialogo/configuracion/copia-de-seguridad/generar-copia-de-seguridad-al-comprimir.md) |
| `GenerarCopiaSeguridadAlSalir` | `Ints` | 0 | Indica si Digi3D.AI generará una copia de seguridad de tu archivo de trabajo al salir del programa. | [Configuración › Copia de seguridad › Generar copia de seguridad al salir](../cuadros-de-dialogo/configuracion/copia-de-seguridad/generar-copia-de-seguridad-al-salir.md) |
| `InterfazMulticodificación` | `Ints` | 0 o 1, según el código que lo lee primero | Indica el tipo de interfaz para seleccionar código a utilizar. | [Configuración › Ventana de dibujo › Interfaz para seleccionar código](../cuadros-de-dialogo/configuracion/diging/interfaz-para-seleccionar-codigo.md) |
| `LimitarFactorZoom` | `Ints` | 0 | Si está activo impone un factor de zoom máximo en la ventana de dibujo. | [Configuración › Ventana de dibujo › Limitar el zoom máximo](../cuadros-de-dialogo/configuracion/diging/limitar-el-zoom-maximo.md) |
| `MaxPuntosArco` | `Ints` | 200 | Especifica el número máximo de vértices que tendrá un arco. | [Configuración › Arcos y circunferencias › Máximo de puntos](../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/maximo-de-puntos.md) |
| `MinPuntosArco` | `Ints` | 20 | Especifica el número mínimo de vértices que tendrá un arco. | [Configuración › Arcos y circunferencias › Mínimo de puntos](../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/minimo-de-puntos.md) |
| `MinutosCopiaSeguridad` | `Ints` | 0 | Indica cada cuánto tiempo (en minutos) se generará una copia de seguridad de tu archivo de dibujo. Para deshabilitar las copias de seguridad, pon un 0 en este campo. | [Configuración › Copia de seguridad › Generar copia de seguridad cada (minutos)](../cuadros-de-dialogo/configuracion/copia-de-seguridad/generar-copia-de-seguridad-cada-minutos.md) |
| `MostrarAyudasCodigos` | `Ints` | 0 | Indica si Digi3D.AI mostrará el archivo de ayuda asociado a cada código en el digi.tab al seleccionar dicho código. | [Configuración › Comunicación con el usuario › Mostrar ayudas por código](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/mostrar-ayudas-por-codigo.md) |
| `MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada` | `Ints` | 0 | Si se habilita, se mostrarán los campos de BBDD marcados como no visibles en el panel de Propiedades de la entidad seleccionada. | [Configuración › Base de datos › Mostrar campos no visibles en el panel Propiedades de la entidad seleccionada](../cuadros-de-dialogo/configuracion/base-de-datos/mostrar-campos-no-visibles.md) |
| `NumeroMaximoEntidadesOctree` | `Ints` | 1000 | Número de entidades a partir del cual un nodo del índice espacial de la ventana de dibujo se subdivide. Se lee al arrancar. | Solo por SQL |
| `PermitirGeometriasConCodigosRepetidos` | `Ints` | 0 | Si está activo, podrás asignar el mismo código varias veces a una geometría. | [Configuración › Ventana de dibujo › Permitir códigos repetidos](../cuadros-de-dialogo/configuracion/diging/permitir-codigos-repetidos.md) |
| `PermitirSeleccionarCódigosInexistentes` | `Ints` | 0 | Indica si se permitirá al usuario seleccionar códigos inexistentes en la tabla de códigos. | [Configuración › Ventana de dibujo › Permitir seleccionar códigos inexistentes](../cuadros-de-dialogo/configuracion/diging/permitir-seleccionar-codigos-inexistentes.md) |
| `PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo` | `Ints` | 0 o 1, según el código que lo lee primero | Si se activa, se pulsará automáticamente el botón de Añadir en los cuadros de diálogo que solicitan códigos como los que aparecen al ejecutar la orden ON, OFF, etc. | [Configuración › Ventana de dibujo › Auto-pulsar Añadir... en los diálogos que solicitan códigos](../cuadros-de-dialogo/configuracion/diging/auto-pulsar-anadir-en-los-dialogos-que-solicitan-codigos.md) |
| `RellenoPoligonosConCentroide` | `Texts` | `00 255 00` | Color de relleno de los polígonos con centroide, como tres números R G B separados por espacios. | [Configuración › Topologías no definidas en la tabla de códigos › Color de relleno (polígonos con centroide)](../cuadros-de-dialogo/configuracion/topologias-no-definidas-en-la-tabla-de-codigos/color-de-relleno-poligonos-con-centroide.md) |
| `RellenoPoligonosSinCentroide` | `Texts` | `255 00 00` | Color de relleno de los polígonos sin centroide, como tres números R G B separados por espacios. | [Configuración › Topologías no definidas en la tabla de códigos › Color de relleno (polígonos sin centroide)](../cuadros-de-dialogo/configuracion/topologias-no-definidas-en-la-tabla-de-codigos/color-de-relleno-poligonos-sin-centroide.md) |
| `ResetVaciaPilaOrdenes` | `Ints` | 0 | Si se habilita, al pulsar el botón de RESET se anularán todas las órdenes de la pila de órdenes en vez de la orden activa. | [Configuración › Ventana de dibujo › Reset vacía la pila de órdenes](../cuadros-de-dialogo/configuracion/diging/reset-vacia-la-pila-de-ordenes.md) |
| `TamanoMinimoTileOctree` | `Ints` | 512 | Tamaño mínimo de un nodo del índice espacial de la ventana de dibujo. Se lee al arrancar. | Solo por SQL |
| `TextoCentroidesHuecos` | `Texts` | `*` | Textos que si se localizan en el centroide de un polígono harán que el polígono se considere un hueco en las topologías que no están definidas en la tabla de códigos como aquellas que se crean con BINTOP o con CREAR_TOPOLOGIA_CODIGOS_VISIBLES. | [Configuración › Topologías no definidas en la tabla de códigos › Texto de centroide para huecos](../cuadros-de-dialogo/configuracion/topologias-no-definidas-en-la-tabla-de-codigos/texto-de-centroide-para-huecos.md) |
| `UtilizarParametrosImportacionExportacionPreconfigurados` | `Ints` | 0 | Si vale 1, Digi3D.AI no muestra el cuadro de parámetros de importación o exportación después de elegir un archivo de dibujo, y usa los parámetros memorizados del formato. | Solo por SQL |
| `UtilizarProyectosArchivosDibujo` | `Ints` | 0 | Si está activo, la pestaña de archivo de dibujo del cuadro de diálogo de nuevo proyecto muestra únicamente un cuadro de opción para seleccionar el proyecto. | [Configuración › Comunicación con el usuario › Utilizar archivos de proyecto](../cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/utilizar-archivos-de-proyecto.md) |

## `DigiNG\Extensiones\<extensión>`

`<extensión>` es el nombre de cada extensión de órdenes de la ventana de dibujo que el instalador registra en **HKEY\_LOCAL\_MACHINE**.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | Si vale 1, Digi3D.AI carga al arrancar esa extensión de órdenes de la ventana de dibujo. | Solo por SQL (el instalador escribe el valor inicial) |

## `DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ComportamientoAtributos` | `Ints` | 0 | Especifica cómo rellenar los atributos de BBDD del código destino. | [Configuración › Renomcod › Atributos de BBDD del código destino](../cuadros-de-dialogo/configuracion/renomcod/atributos-de-bbdd-del-codigo-destino.md) |

## `DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ControlTopologicoTextoCentroide` | `Ints` | 1 | Indica el criterio que se utilizará para comparar centroides de polígonos vecinos. | [Configuración › Control topológico › Criterio de comparación de centroides](../cuadros-de-dialogo/configuracion/control-topologico/criterio-de-comparacion-de-centroides.md) |

## `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `CentroidesDuplicados` | `Ints` | 1 | Si se activa se añadirán tareas por cada centroide duplicado localizado al formar la topología. | [Configuración › CREAR_TOPOLOGIA_CODIGOS_VISIBLES › Detectar centroides duplicados](../cuadros-de-dialogo/configuracion/crear-topologia-codigos-visibles/detectar-centroides-duplicados.md) |
| `LineasConPuntosDobles` | `Ints` | 1 | Si se activa se añadirán tareas por cada línea con puntos dobles localizada. | [Configuración › CREAR_TOPOLOGIA_CODIGOS_VISIBLES › Detectar líneas con puntos dobles](../cuadros-de-dialogo/configuracion/crear-topologia-codigos-visibles/detectar-lineas-con-puntos-dobles.md) |
| `LineasDeUnSoloPunto` | `Ints` | 1 | Si se activa se añadirán tareas por cada línea localizada con un único punto. | [Configuración › CREAR_TOPOLOGIA_CODIGOS_VISIBLES › Detectar líneas de un solo punto](../cuadros-de-dialogo/configuracion/crear-topologia-codigos-visibles/detectar-lineas-de-un-solo-punto.md) |
| `NombreTopologiaDefecto` | `Texts` | `Topología creada a las $(HoraCompleta)` | Nombre que se le asignará a la topología si el nombre no se pasa como parámetro al ejecutar la orden. Admite macros. | [Configuración › CREAR_TOPOLOGIA_CODIGOS_VISIBLES › Nombre de la topología por defecto](../cuadros-de-dialogo/configuracion/crear-topologia-codigos-visibles/nombre-de-la-topologia-por-defecto.md) |
| `PoligonosSinArea` | `Ints` | 1 | Si se activa se añadirán tareas por cada polígono sin área localizado al formar la topología. | [Configuración › CREAR_TOPOLOGIA_CODIGOS_VISIBLES › Detectar polígonos sin área](../cuadros-de-dialogo/configuracion/crear-topologia-codigos-visibles/detectar-poligonos-sin-area.md) |

## `DigiNG\Extensiones`

Extensiones de órdenes de la ventana de dibujo. El nombre de cada valor es el nombre de una extensión.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Ints` | 1 | Orden de carga de cada extensión de órdenes de la ventana de dibujo. La primera extensión se carga siempre en primer lugar. | Solo por SQL |

## `DigiNG\IO\<formato>`

`<formato>` es el nombre de cada importador y exportador que el instalador registra en **HKEY\_LOCAL\_MACHINE**, por ejemplo `Digi21.Io.DGN`, `Digi21.Io.SHP` o `Digi21.Io.BinDouble`. Respeta las mayúsculas del registro: no siempre coinciden con las de las carpetas `DigiNG\IO\...` de las opciones de cada importador.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | Si vale 1, Digi3D.AI carga al arrancar el importador y exportador de ese formato. | Solo por SQL (el instalador escribe el valor inicial) |
| `Order` | `Ints` | 2 | Posición del formato en las listas de formatos, de menor a mayor. El primero es el que proponen los cuadros de guardar. | Solo por SQL (el instalador escribe el valor inicial) |
| `WinSxS` | `Ints` | 0 | Si vale 1, el importador se carga como ensamblado WinSxS. No afecta a las compilaciones de depuración. | Solo por SQL (el instalador escribe el valor inicial) |

## `DigiNG\IO\Digi21.Io.Bin`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos binarios de precisión simple (*.bin) › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-precision-simple/anadir-codigos-desconocidos.md) |
| `PermitirAtributosTabla1` | `Ints` | 0 | Si está activado, se considerará que la tabla 1 es una tabla de base de datos y no la tabla interna del programa. | [Configuración › Importador/Exportador de archivos binarios de precisión simple (*.bin) › Permitir atributos con Tabla=1](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-precision-simple/permitir-atributos-con-tabla-1.md) |

## `DigiNG\IO\Digi21.Io.BinDouble`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos binarios de doble precisión (*.bind) › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-doble-precision/anadir-codigos-desconocidos.md) |
| `CargarRegistrosAsincrono` | `Ints` | 1 | Permite configurar el momento en el que se cargarán de la BBDD los atributos de cada código. | [Configuración › Importador/Exportador de archivos binarios de doble precisión (*.bind) › Carga de registros](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-doble-precision/carga-de-registros.md) |

## `DigiNG\IO\Digi21.Io.Dgn`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Si vale 1, al abrir un DGN se añaden a la tabla de códigos activa los códigos de las entidades sin código de transformación. | [Configuración › Importador/Exportador de archivos Bentley MicroStation v8 (*.dgn) › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-bentley-microstation-v8/anadir-codigos-desconocidos.md) |
| `MostrarModalAlGuardar` | `Ints` | 0 | Si vale 1, Digi3D.AI muestra un cuadro modal mientras guarda un archivo DGN. | [Configuración › Importador/Exportador de archivos Bentley MicroStation v8 (*.dgn) › Mostrar modal al guardar](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-bentley-microstation-v8/mostrar-modal-al-guardar.md) |

## `DigiNG\IO\Digi21.Io.Dwg`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos DWG › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-dwg/anadir-codigos-desconocidos.md) |

## `DigiNG\IO\Digi21.Io.FileGDB`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador Exportador de FileGdb › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-filegdb/anadir-codigos-desconocidos.md) |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si vale 1, al abrir una FileGDB se pregunta qué capas cargar. | Solo por SQL |

## `DigiNG\IO\Digi21.Io.Geomedia`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos Datawarehouse de Geomedia › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/anadir-codigos-desconocidos.md) |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si se activa, al cargar un archivo, se mostrará un cuadro de diálogo en el que se pueden seleccionar las capas a cargar. | [Configuración › Importador/Exportador de archivos Datawarehouse de Geomedia › Preguntar por capas a cargar](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-datawarehouse-de-geomedia/preguntar-por-capas-a-cargar.md) |

## `DigiNG\IO\Digi21.Io.GeoPackage`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › GeoPackage › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/geopackage/anadir-codigos-desconocidos.md) |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si se habilita se mostrará un cuadro de diálogo que le permite al usuario seleccionar las capas a cargar en caso de que el archivo GeoPackage tenga más de una capa con geometrías. | [Configuración › GeoPackage › Preguntar por capas al cargar](../cuadros-de-dialogo/configuracion/geopackage/preguntar-por-capas-al-cargar.md) |

## `DigiNG\IO\Digi21.Io.Kml`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos de Google Earth (*.kml) › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-de-google-earth/anadir-codigos-desconocidos.md) |

## `DigiNG\IO\Digi21.Io.PostGIS`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Conector con PostGis › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/conector-con-postgis/anadir-codigos-desconocidos.md) |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si se activa, al cargar un archivo, se mostrará un cuadro de diálogo en el que se pueden seleccionar las capas a cargar. | [Configuración › Conector con PostGis › Preguntar por capas a cargar](../cuadros-de-dialogo/configuracion/conector-con-postgis/preguntar-por-capas-a-cargar.md) |
| `RegionesDeInteresConTamañoConstante` | `Ints` | 0 | Si se activa, en el panel de archivos de dibujo se podrá configurar el tamaño que tendrán las regiones de interés que se solicitarán a PostGIS. | [Configuración › Conector con PostGis › Regiones de interés de tamaño constante](../cuadros-de-dialogo/configuracion/conector-con-postgis/regiones-de-interes-de-tamano-constante.md) |
| `SoloLecturaSilencioso` | `Ints` | 0 | Si está activo, el importador/exportador no almacenará ni eliminará geometrías, pero no se lo comunicará a Digi3D.AI, que creerá que se han almacenado/eliminado correctamente. | [Configuración › Conector con PostGis](../cuadros-de-dialogo/configuracion/conector-con-postgis/README.md) › Solo lectura silenciosa |
| `TipoRecorteInterseccionRoi` | `Ints` | 0 | Indica si las geometrías devueltas por el servidor estarán recortadas a la ventana de región de interés. | [Configuración › Conector con PostGis › Tipo de recorte de geometrías](../cuadros-de-dialogo/configuracion/conector-con-postgis/tipo-de-recorte-de-geometrias.md) |

## `DigiNG\IO\Digi21.Io.Shp`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de archivos Shapefile › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/anadir-codigos-desconocidos.md) |
| `CampoEliminado` | `Texts` | (vacío) | Indica el nombre del campo en el que se almacenará el valor que indica que el registro está eliminado. | [Configuración › Importador/Exportador de archivos Shapefile › Campo en el que almacenar marca de eliminado](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/campo-en-el-que-almacenar-marca-de-eliminado.md) |
| `ConsiderarMultiPoligonosComoPoligonos` | `Ints` | 0 | Si vale 1, un polígono 3D (PolygonZ) con varios anillos exteriores se carga como un único polígono cuyos anillos exteriores adicionales son huecos. | Solo por SQL |
| `EliminarAlmacenandoValorEnCampo` | `Ints` | 0 | Indica cómo especificar en el Shapefile que una geometría está eliminada. | [Configuración › Importador/Exportador de archivos Shapefile › Modo de eliminación de geometrías](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/modo-de-eliminacion-de-geometrias.md) |
| `PermitirComprimir` | `Ints` | 1 | Indica si se permitirá a Digi3D.AI comprimir un archivo abierto con este traductor. | [Configuración › Importador/Exportador de archivos Shapefile › Permitir comprimir](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/permitir-comprimir.md) |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si se activa, al cargar un archivo, se mostrará un cuadro de diálogo en el que se pueden seleccionar las capas a cargar. | [Configuración › Importador/Exportador de archivos Shapefile › Preguntar por capas a cargar](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/preguntar-por-capas-a-cargar.md) |
| `ValorGeometriaEliminada` | `Texts` | `%DATETIME%` | Indica el valor a almacenar en el campo al eliminar la geometría. | [Configuración › Importador/Exportador de archivos Shapefile › Valor a asignar cuando se elimina la geometría](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/valor-a-asignar-cuando-se-elimina-la-geometria.md) |
| `ValorGeometriaNoEliminada` | `Texts` | `99999999` | Indica el valor que especifica que la geometría NO está eliminada. | [Configuración › Importador/Exportador de archivos Shapefile › Valor que indica que la geometría NO está eliminada](../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/valor-que-indica-que-la-geometria-no-esta-eliminada.md) |

## `DigiNG\IO\Digi21.Io.Vec`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `AñadirCódigosDesconocidos` | `Ints` | 0 | Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación. | [Configuración › Importador/Exportador de formato VEC de Latino › Añadir códigos desconocidos](../cuadros-de-dialogo/configuracion/importador-exportador-de-formato-vec-de-latino/anadir-codigos-desconocidos.md) |

