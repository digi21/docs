# Valores del archivo de configuración Digi3DNET.db
<!-- id: valores-del-archivo-de-configuracion-digi3dnet.db -->

Esta página enumera los valores del [archivo de configuración Digi3DNET.db](archivo-de-configuracion-digi3dnet.db.md) que no tienen página de opción: los que solo se pueden cambiar con SQL y los que escriben cuadros de diálogo distintos de **Configuración**, **Configurar proyectos** y **Configuración de dispositivos de entrada**. Los valores están agrupados por carpeta (columna `Path` de la tabla `Keys`) y se modifican con el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md).

Los valores de las opciones del cuadro de diálogo [Configuración](../cuadros-de-dialogo/configuracion/README.md) están en la página de cada opción, en la sección **Dónde se almacena**, con las sentencias SQL que los cambian. Los valores de [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) y de [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md) están en la sección **Dónde se almacena** de esas dos páginas.

La configuración de cada usuario no está en esta base de datos: Digi3D.AI la guarda en el registro de _Windows_, en **HKEY\_CURRENT\_USER**. La página de cada opción indica también la clave y el valor del registro.

## Cómo leer las tablas

* **Valor**: contenido de la columna `Value`. Un nombre entre `<` y `>` indica un patrón: Digi3D.AI construye el nombre al ejecutarse, y la descripción explica cómo.
* **Tabla**: tabla de la base de datos que guarda el valor: `Ints` (entero), `Texts` (texto) o `Doubles` (real). Digi3D.AI no usa la tabla `Blobs`.
* **Por defecto**: valor que usa Digi3D.AI si el valor no tiene fila y el registro de _Windows_ no contiene un valor en **HKEY\_LOCAL\_MACHINE**. En los valores booleanos, 1 equivale a activado y 0 a desactivado. Los valores por defecto de texto que dependen del idioma se muestran en español.
* **Dónde se cambia**: cuadro de diálogo que escribe el valor. **Solo por SQL** indica que ningún cuadro de diálogo lo escribe: Digi3D.AI solo lo lee, y para cambiarlo hay que usar el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md) u otra herramienta de SQLite.

Digi3D.AI crea la fila de un valor la primera vez que lo lee. Si el valor no existe en la base de datos, lo copia de **HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET** o, si allí tampoco existe, guarda el valor por defecto. Los valores reales (`Doubles`) son la excepción: al leerlos, solo se copian si existen en **HKEY\_LOCAL\_MACHINE**; si no, Digi3D.AI usa el valor por defecto sin guardarlo. Un cuadro de diálogo que escribe un valor real lo guarda siempre.

## Carpeta raíz

Valores guardados en la carpeta raíz. En la tabla `Keys`, su `Path` es la cadena vacía.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `KeyID` | `Texts` | (vacío) | Identificador (KeyID) de la llave de protección elegida en el cuadro Seleccionar llave. | Cuadro **Seleccionar llave** |

## `App\Configuration\Scroll`

Configuración de la ventana fotogramétrica.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<clave índice>` | `Texts` | (vacío) | Lo leen las ventanas de PointCloud y de ortofoto estereoscópica para cargar las imágenes de los índices. `<clave índice>` es uno de los nombres `RutaIndicePequeño`, `RutaIndiceMediano`, `RutaIndiceGrande`, `RutaIndiceAspa`, `RutaIndiceCruz` o `RutaIndicePersonalizado` de esta misma carpeta. | Solo por SQL |
| `3` | `Ints` | 0 | Tras un cambio rápido de modelo, 1 hace que la ventana de dibujo procese un cambio de orientación; 0 hace que gire y regenere su vista según el modelo. | Solo por SQL |
| `NumeroTriangulosHorizontalPorTesela` | `Ints` | 4 | Número de subdivisiones por lado de cada tesela de imagen cuando la imagen se dibuja transformada (proyectada). Debe ser 1 o mayor. | Solo por SQL |

## `App\Configuration`

Configuración general de la aplicación.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<proveedor>ApiKey` | `Texts` | (vacío) | Clave de API del proveedor del asistente de IA, cifrada con DPAPI de máquina y codificada en base64. `<proveedor>` es `Claude`, `OpenAI`, `AzureOpenAI`, `Kimi`, `OpenRouter`, `LMStudio`, `Ollama` o `Generico`. | Configuración del proveedor en el panel del **asistente de IA** |
| `DirectorioInstalacion` | `Texts` | (vacío) | Carpeta de instalación de Digi3D.AI. Desde ella se cargan los importadores y exportadores. | Solo por SQL (el instalador escribe el valor inicial) |
| `EpsgCrsKitSqlite` | `Texts` | `C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite` | Ruta de la base de datos EPSG que usa la biblioteca de sistemas de referencia. | Solo por SQL (el instalador escribe el valor inicial) |
| `InstallDirDebugUnicode` | `Texts` | (vacío) | Carpeta de instalación que usan las compilaciones de depuración. No la usa la versión instalada. | Solo por SQL |
| `InterseccionPuntoRectaNuevo` | `Ints` | 1 | Si vale 1, la proyección de un punto sobre una recta usa el algoritmo optimizado para 3D. | Solo por SQL. El cuadro Configuración no muestra la opción, pero al pulsar **Aceptar** vuelve a guardar el valor que leyó. |
| `MonitorizarFirstChanceExceptions` | `Ints` | 0 | Si vale 1, Digi3D.AI registra las excepciones de primera oportunidad de .NET al arrancar. Sirve para diagnóstico. | Solo por SQL |
| `OpenGisFiles` | `Texts` | (vacío) | Carpeta de datos de la biblioteca de sistemas de referencia (rejillas y archivos auxiliares). | Solo por SQL (el instalador escribe el valor inicial) |
| `SegundosVigilanteCierre` | `Ints` | 120 | Segundos que Digi3D.AI espera a que terminen sus hilos al cerrarse antes de generar un volcado de diagnóstico. 0 o un valor negativo desactiva la vigilancia. | Solo por SQL |
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

## `Digi3D\Extensiones\<extensión>\<idioma>`

`<extensión>` es el nombre de una extensión de órdenes de Digi3D y `<idioma>` un código de idioma como `es-ES`. El instalador escribe estos valores.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<orden>` | `Texts` | (vacío) | Identificador (GUID) de la orden de una extensión de Digi3D, indexado por el nombre de la orden en cada idioma. | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\<extensión>`

`<extensión>` es el nombre de cada extensión del sensor cónico que el instalador registra en **HKEY\_LOCAL\_MACHINE**.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | Si vale 1, Digi3D.AI carga al arrancar esa extensión del sensor cónico (importadores de cámaras y orientaciones). | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `PrecisionAltimetricaPuntosPaso` | `Doubles` | 0.5 | Precisión altimétrica de los puntos de paso en el ajuste RPCBA. | Solo por SQL |
| `PrecisionPlanimetricaPuntosPaso` | `Doubles` | 0.1 | Precisión planimétrica de los puntos de paso en el ajuste RPCBA. | Solo por SQL |

## `Digi3D\Extensiones`

Extensiones de órdenes de la ventana fotogramétrica.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<extensión>` | `Texts` | (vacío) | Descripción de cada extensión de órdenes de Digi3D. Solo aparece en el mensaje de error si la extensión no se carga. | Solo por SQL (el instalador escribe el valor inicial) |

## `Digi3D\IO\TarjDigi3D\<dispositivo>`

`<dispositivo>` es el nombre del dispositivo de entrada configurado (tarjeta serie genérica, ISA, DPW USB…). Los demás parámetros de cada dispositivo están en la página [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md).

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `<variable>` | `Texts` | número del botón | Número de la tecla del archivo de configuración de teclas que se asocia a cada botón del dispositivo serie genérico. `<variable>` es `Boton1` a `Boton32`. | Solo por SQL |

## `Digi3D\IO\TarjDigi3D\SEC-232m`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | Solo por SQL |

## `Digi3D\IO\TarjDigi3D\UdpIp`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `BombardeoCodificadores` | `Ints` | 1 | Milisegundos entre dos lecturas de los codificadores del dispositivo. | Solo por SQL |

## `Digi3D\IO\TarjDigi3D`

Configuración común de los dispositivos de entrada.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `PuertoSerieCodificadores` | `Ints` | 1 | Puerto serie común que usa la tarjeta SEC-232m si su carpeta no tiene uno propio. | Solo por SQL |

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
| `Digi21::DigiTab::DigiTab` | `Texts` | (vacío) | Nombre antiguo del valor `DigiTab`. Digi3D.AI lo lee si `DigiTab` está vacío. | Solo por SQL |

## `DigiNG\Configuration`

Configuración general de la ventana de dibujo.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `NumeroMaximoEntidadesOctree` | `Ints` | 1000 | Número de entidades a partir del cual un nodo del índice espacial de la ventana de dibujo se subdivide. Se lee al arrancar. | Solo por SQL |
| `TamanoMinimoTileOctree` | `Ints` | 512 | Tamaño mínimo de un nodo del índice espacial de la ventana de dibujo. Se lee al arrancar. | Solo por SQL |
| `UtilizarParametrosImportacionExportacionPreconfigurados` | `Ints` | 0 | Si vale 1, Digi3D.AI no muestra el cuadro de parámetros de importación o exportación después de elegir un archivo de dibujo, y usa los parámetros memorizados del formato. | Solo por SQL |

## `DigiNG\Extensiones\<extensión>`

`<extensión>` es el nombre de cada extensión de órdenes de la ventana de dibujo que el instalador registra en **HKEY\_LOCAL\_MACHINE**.

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `Activated` | `Ints` | 0 | Si vale 1, Digi3D.AI carga al arrancar esa extensión de órdenes de la ventana de dibujo. | Solo por SQL (el instalador escribe el valor inicial) |

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

## `DigiNG\IO\Digi21.Io.FileGDB`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `PreguntarPorCapasACargar` | `Ints` | 1 | Si vale 1, al abrir una FileGDB se pregunta qué capas cargar. | Solo por SQL |

## `DigiNG\IO\Digi21.Io.Shp`

| Valor | Tabla | Por defecto | Qué hace | Dónde se cambia |
| :--- | :--- | :--- | :--- | :--- |
| `ConsiderarMultiPoligonosComoPoligonos` | `Ints` | 0 | Si vale 1, un polígono 3D (PolygonZ) con varios anillos exteriores se carga como un único polígono cuyos anillos exteriores adicionales son huecos. | Solo por SQL |
