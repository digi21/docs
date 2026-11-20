# Desde línea de comando
<!-- id: desde-linea-de-comando -->

MDTopX permite ser ejecutado desde la línea de comando pasando parámetros para configurar el cálculo. Las herramientas de cálculo de MDTopX requieren el archivo de configuración MDTopX.ini, un archivo ASCII con las opciones de configuración. MDTopX busca MDTopX.ini en la carpeta del archivo de entrada; si indicas el archivo de entrada sin ruta, MDTopX busca MDTopX.ini en el directorio de trabajo actual.

Al ejecutar una orden desde la línea de comando, MDTopX mantiene la ventana principal minimizada o sin mostrar, ejecuta la orden y termina el proceso. Si la orden termina antes de que MDTopX muestre la ventana (porque faltan argumentos obligatorios o la licencia no es válida), la ventana no llega a mostrarse. Mientras una orden calcula, MDTopX muestra el cuadro de progreso, el mismo que muestra la interfaz. Las órdenes `/REF` y `/DEM` son la excepción: abren el archivo de entrada en la interfaz de MDTopX, con la ventana en su tamaño normal, y el proceso sigue en ejecución hasta que el usuario cierra MDTopX.

Si escribes en la línea de comando solo el nombre de un archivo que MDTopX sabe abrir, sin ninguna herramienta, MDTopX se inicia y abre ese archivo.

## Archivo de entrada y argumentos de las órdenes

Estas reglas valen para todas las órdenes de esta página salvo `/activar-equipo` y `/servidor-licencias`, que se describen en su sección.

* MDTopX toma como archivo de entrada el primer argumento que no empieza por «/» ni por «-» y que ninguna orden consume como suyo. El archivo de entrada puede ir antes de la orden o después de la orden y de sus argumentos: `MDTopX entrada.mdt /CUR curvas.dxf` y `MDTopX /CUR curvas.dxf entrada.mdt` producen el mismo resultado.
* Cada orden consume los argumentos que la tabla siguiente indica, que tienen que ir inmediatamente después de la orden y en el orden de la tabla. Si una orden tiene un argumento opcional y escribes el archivo de entrada justo después de ella, MDTopX lo toma como ese argumento y la línea de comando queda sin archivo de entrada. Con las órdenes de argumento opcional (`/SUA`, `/TRANSFORM`, `/ASFALTO`, `/RAILES`, `/LINEASVIAL` y `/LINEASRAIL`), escribe el archivo de entrada antes de la orden.
* MDTopX ignora los argumentos que sobran después de completar los de la orden cuando la línea ya tiene archivo de entrada. Por ejemplo, el segundo archivo que se escribe detrás de `/COM` no tiene efecto.
* Un argumento que empieza por «/» o por «-» y no es una orden de MDTopX (por ejemplo, `/p`, `/pt`, `/dde`, `/Embedding` o `/Register`) no se toma como archivo de entrada.

| Orden | Argumentos que consume | Si faltan |
| --- | --- | --- |
| `/TRI`, `/CUR`, `/SOM`, `/HIP`, `/PEN`, `/ORI`, `/PER`, `/CUB`, `/REJ`, `/TRICUR`, `/TRIREJ`, `/EXPORT`, `/ACOPIOS` | Uno: el archivo de salida. | Error. |
| `/PRO` | Hasta dos: el archivo de salida y el archivo a proyectar. | Error si faltan los dos. |
| `/LADO` | Uno: la longitud máxima de un lado, en metros y mayor que 0. | Error. |
| `/DEM` | Uno: un nombre de archivo. | Error. |
| `/RUP` | Uno: el archivo de salida. | Error. |
| `/ORIENTARNUBEARCHIVO` | Uno: el archivo de orientación. | Error. |
| `/SUA`, `/TRANSFORM` | Uno, opcional: el archivo de salida. | MDTopX guarda el resultado en el archivo de entrada. |
| `/ASFALTO`, `/RAILES`, `/LINEASVIAL`, `/LINEASRAIL` | Uno, opcional: el formato del archivo de dibujo (`DXF`, `DGN` o `SHP`). | MDTopX guarda el archivo de dibujo en formato BIN (DIGI). |
| `/REF` | Todos los argumentos que la siguen, como lista de archivos de referencia. | Ninguna: MDTopX solo abre el archivo de entrada. El archivo de entrada tiene que ir antes de la orden. |
| `/AGREGA` | Todos los argumentos que la siguen, como lista de archivos que se unen al archivo de entrada. | Error si no escribes ninguno. El archivo de entrada tiene que ir antes de la orden. |
| `/ORTOFOTO` | Uno: un nombre de archivo. La orden no está disponible. | Ninguna. |
| `/COM`, `/TRICOM`, `/MAGIC`, `/SUELOVIAL`, `/SUELOFFCC`, `/FILTRADO`, `/ORIENTARNUBE` | Ninguno. | Ninguna. |

## Órdenes sin sus argumentos obligatorios

Si falta un argumento que la tabla marca como error, MDTopX escribe en el archivo MDTopX.LOG el mensaje «La orden /ORDEN tiene argumentos obligatorios ausentes o no válidos. MDTopX termina sin procesar el archivo.» (con MDTopX en inglés, «The /ORDEN command has missing or invalid required arguments. MDTopX ends without processing the file.») y termina sin abrir ningún archivo.

## Comodines en el archivo de entrada

Con una orden de esta página, el nombre del archivo de entrada puede contener los comodines `*` (cualquier número de caracteres) y `?` (un carácter). Sin ninguna orden, MDTopX no sustituye los comodines.

* MDTopX busca en la carpeta del patrón los archivos cuyo nombre cumple el patrón y omite las carpetas. Si el patrón no tiene ruta, busca en el directorio de trabajo actual.
* MDTopX procesa el primer archivo que devuelve la búsqueda. El orden de la búsqueda es el que devuelve el sistema de archivos.
* MDTopX busca MDTopX.ini y crea MDTopX.LOG en la carpeta del patrón, que es la carpeta de los archivos encontrados.
* Con `/REF`, MDTopX carga los demás archivos encontrados como archivos de referencia, además de los que escribes después de `/REF`.
* Con cualquier otra orden, MDTopX procesa únicamente el primer archivo. Por cada uno de los demás archivos encontrados, MDTopX escribe en MDTopX.LOG la línea «Archivo del comodín no procesado: \<ruta\>», con la ruta del archivo.

## Avisos y errores: archivo MDTopX.LOG

Con cualquier orden salvo `/REF` y `/DEM`, MDTopX no muestra cuadros de aviso ni de error. Escribe los avisos y los errores en el archivo MDTopX.LOG, junto con el desarrollo del cálculo. Esto incluye los avisos de licencia del arranque (fin del soporte técnico, fin del alquiler y llave de protección no localizada), los errores de lectura y de guardado de archivos y los mensajes de cada orden. MDTopX tampoco muestra el aviso de versión nueva.

* MDTopX crea MDTopX.LOG en la carpeta del archivo de entrada, junto a MDTopX.ini; si el archivo de entrada no tiene ruta, lo crea en el directorio de trabajo. Si MDTopX.LOG ya existe, MDTopX añade los mensajes al final de MDTopX.LOG. Al iniciar la ejecución de la orden, MDTopX escribe la fecha, la orden, el archivo de entrada y el archivo de salida.
* Si MDTopX no puede crear MDTopX.LOG (por ejemplo, porque no puede escribir en la carpeta), escribe cada mensaje en la salida de errores del proceso, si el proceso tiene una (por ejemplo, redirigida con `2>`), o, si no la tiene, en la consola del proceso que ha lanzado MDTopX. Si no existe ninguna de las dos, MDTopX no escribe el mensaje.
* Los cuadros de importación ASCII y de opciones de exportación (.shp, .kml y nube de puntos) no se muestran. En la importación ASCII, MDTopX usa las columnas, los separadores y las líneas iniciales guardados en su configuración si encajan con las primeras líneas del archivo y, si no encajan, detecta el formato automáticamente. En la exportación, usa los valores que mostrarían los cuadros. MDTopX.LOG registra el huso UTM y el hemisferio que MDTopX usa al guardar un archivo .kml, y que las líneas no se guardan al guardar un dibujo con líneas en LAS, LAZ o PTS.

## Códigos de salida

Con una orden de MDTopX de esta página, el proceso `MDTopX.exe` termina con un código de salida que depende de los errores y avisos que MDTopX registra mientras ejecuta la orden. Si MDTopX puede crear MDTopX.LOG, escribe cada error y cada aviso en ese archivo (sección «Avisos y errores: archivo MDTopX.LOG»). Las órdenes `/activar-equipo` y `/servidor-licencias` tienen sus propios códigos de salida, descritos en su página.

| Código | Significado | Casos |
| --- | --- | --- |
| 0 | MDTopX no ha registrado ningún error ni aviso. | La orden ha terminado sin que MDTopX registre errores ni avisos. |
| 1 | MDTopX ha registrado algún error. | Faltan argumentos obligatorios. La licencia no es válida. MDTopX no puede abrir el archivo de entrada, incluido un patrón con comodines sin ninguna coincidencia. La orden es `/ORTOFOTO`. Hay un error de lectura, de escritura o de cálculo. `/AGREGA` no ha unido ningún archivo. La orden no corresponde al tipo del archivo de entrada (por ejemplo, `/TRI` sobre un archivo MDT). Falla el arranque de MDTopX antes de que empiece la orden. |
| 2 | MDTopX ha registrado algún aviso y ningún error. | `/AGREGA` ha unido algún archivo y no ha unido otro. `/REF` no ha podido cargar alguna referencia. |

* Si MDTopX ha registrado errores y avisos, el código es 1.
* Los mensajes informativos no cambian el código. Tampoco lo cambian los avisos de licencia del arranque (fin del soporte técnico y fin del alquiler), porque MDTopX los escribe antes de empezar a ejecutar la orden.
* Con `/REF` y `/DEM`, MDTopX fija el código cuando termina la orden, antes de que el usuario trabaje con la interfaz, y el proceso devuelve ese código al cerrar la ventana principal.
* El código 0 indica que MDTopX no ha registrado ningún error ni aviso; no garantiza que la orden haya guardado un resultado. Consulta MDTopX.LOG para confirmar el resultado.

MDTopX es una aplicación de ventanas, así que para leer el código de salida hay que esperar a que termine el proceso. Con un archivo por lotes, `start /wait` espera al proceso y guarda su código de salida en `errorlevel`. `if errorlevel N` es verdadera cuando el código es N o mayor, por lo que la comprobación del código 2 va antes que la del código 1:

```bat
start /wait "" "C:\Ruta\de\instalación\MDTopX.exe" "C:\datos\entrada.dxf" /TRI "C:\datos\salida.mdt"
if errorlevel 2 (
    echo MDTopX ha terminado con avisos. Consulta C:\datos\MDTopX.LOG.
    goto :fin
)
if errorlevel 1 (
    echo MDTopX ha terminado con errores. Consulta C:\datos\MDTopX.LOG.
    exit /b 1
)
echo MDTopX ha terminado sin registrar errores ni avisos.
:fin
```

Con PowerShell, `Start-Process` con `-Wait -PassThru` devuelve un objeto cuya propiedad `ExitCode` contiene el código de salida:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\MDTopX.exe' -ArgumentList 'C:\datos\entrada.dxf', '/TRI', 'C:\datos\salida.mdt' -Wait -PassThru
switch ($proceso.ExitCode) {
    0 { 'MDTopX ha terminado sin registrar errores ni avisos.' }
    2 { 'MDTopX ha terminado con avisos. Consulta C:\datos\MDTopX.LOG.' }
    default { throw "MDTopX ha terminado con el código $($proceso.ExitCode). Consulta C:\datos\MDTopX.LOG." }
}
```

Sustituye `C:\Ruta\de\instalación\MDTopX.exe` por la ruta absoluta de `MDTopX.exe`.

## Licencia

Las órdenes `/ACOPIOS`, `/FILTRADO`, `/ORIENTARNUBE` y `/ORIENTARNUBEARCHIVO` funcionan sin la licencia de MDTopX: MDTopX no la comprueba al arrancar ni antes de guardar el resultado en el archivo de entrada y no muestra los avisos de licencia. La página de cada orden indica la licencia que MDTopX exige para guardar el archivo. Con el resto de las órdenes, si MDTopX no encuentra la licencia de MDTopX, escribe «Licencia no válida» en MDTopX.LOG (con `/REF` y `/DEM`, la muestra en un cuadro) y termina sin ejecutar la orden. Guardar el resultado de algunas órdenes exige además otro módulo de licencia.

## Nombres de los archivos de resultado

MDTopX no sobrescribe los resultados cuyo nombre construye él. Estos resultados son los archivos de dibujo de las órdenes `/ASFALTO`, `/RAILES`, `/LINEASVIAL` y `/LINEASRAIL` (por ejemplo, «Asfalto de », «Marcas viales de », «Raíles de » y «Perfiles de » seguidos del nombre del archivo de entrada o del proyecto, sin extensión) y el archivo de trazado con extensión VIA. MDTopX comprueba el nombre con su extensión. Si ya existe `Raíles de via.dxf`, MDTopX escribe `Raíles de via (2).dxf`; si también existe, escribe `Raíles de via (3).dxf`, y así sucesivamente.

* Los archivos de salida cuyo nombre escribes en la línea de comando (por ejemplo, el de `/CUR`) se escriben con ese nombre.
* Si MDTopX no reconoce el formato del archivo con el que guarda un dibujo, lo guarda en formato DIGI en `<nombre sin extensión>.BIN`, o en `<nombre sin extensión> (2).BIN` si el primero existe, y escribe en MDTopX.LOG la ruta original y la ruta que ha usado.

## MDTopX.ini y la configuración del usuario

Con una orden sin interfaz, MDTopX lee MDTopX.ini solo para esa ejecución. Al terminar no guarda en la configuración del usuario los valores leídos de MDTopX.ini ni las opciones de exportación, por lo que la interfaz abre después con los mismos valores que tenía antes de ejecutar la orden. Las páginas de cada orden que citan «el valor guardado en la configuración del usuario» se refieren al valor que aceptó el usuario en el cuadro de diálogo de la interfaz.

MDTopX solo lee MDTopX.ini: ninguna orden de esta página crea, escribe ni modifica MDTopX.ini. Las claves que MDTopX.ini no contiene conservan los valores de la configuración del usuario.

## Herramientas de cálculo

Estas herramientas leen el archivo MDTopX.ini:

* [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
* [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)
* [Cubicación](/mdtopx/desde-linea-de-comando/linea-de-comando-cubicacion.md)
* [Comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md)
* [Proyectar sobre MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-proyectar-sobre-mdt.md)
* [Rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)
* [Sombreado](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)
* [Mapa de tintas hipsométricas](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-tintas-hipsometricas.md)
* [Exportar modelos digitales del terreno](/mdtopx/desde-linea-de-comando/linea-de-comando-exportar-modelos-digitales-del-terreno.md)
* [Agregar modelos digitales del terreno](/mdtopx/operaciones-con-archivos/agregar-modelos-digitales-del-terreno.md)

## Herramientas combinadas y mapas del modelo digital

Estas herramientas también leen el archivo MDTopX.ini:

* [Triangulación y curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-curvado.md): triangula un archivo de dibujo y calcula el curvado en una sola ejecución, sin guardar la triangulación (`/TRICUR`).
* [Triangulación y rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-rejilla.md): triangula un archivo de dibujo y genera la rejilla en una sola ejecución, sin guardar la triangulación (`/TRIREJ`).
* [Triangulación y comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-comprobar-mdt.md): triangula un archivo de dibujo y comprueba su altimetría; solo guarda el archivo de errores (`/TRICOM`).
* [Mapa de pendientes](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-pendientes.md): calcula el mapa de pendientes de un modelo digital y lo guarda como imagen TIF, BMP o JPEG (`/PEN`).
* [Mapa de orientaciones](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-orientaciones.md): calcula el mapa de orientaciones de un modelo digital y lo guarda como imagen TIF, BMP o JPEG (`/ORI`).
* [Extraer líneas de ruptura](/mdtopx/desde-linea-de-comando/linea-de-comando-extraer-lineas-de-ruptura.md): extrae las vaguadas, las divisorias y los puntos de interés de un DEM suavizado y los guarda en un archivo BIN (`/RUP`; requiere el módulo VirtuaLand para guardar).

## Herramientas de nubes de puntos

Estas herramientas también leen el archivo MDTopX.ini. Sin la licencia de MDTopX, MDTopX ejecuta solo `/ACOPIOS`, `/FILTRADO`, `/ORIENTARNUBE` y `/ORIENTARNUBEARCHIVO`; las demás herramientas terminan sin ejecutarse (consulta [Licencia](#licencia)). Guardar el resultado de algunas herramientas exige otro módulo de licencia; cada página lo indica.

* [Transformación de coordenadas](/mdtopx/desde-linea-de-comando/linea-de-comando-transformacion.md): transforma las coordenadas de un archivo de dibujo, una nube de puntos o un TIN (`/TRANSFORM`).
* [Superficie mágica](/mdtopx/desde-linea-de-comando/linea-de-comando-superficie-magica.md): clasifica automáticamente los puntos de una nube LiDAR (`/MAGIC`).
* [Clasificar suelo de trazado](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md): clasifica en suelo y no suelo una nube de puntos MMS de carretera (`/SUELOVIAL`).
* [Clasificar suelo de FFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md): clasifica en suelo y no suelo una nube de puntos MMS de ferrocarril (`/SUELOFFCC`).
* [Clasificar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md): clasifica asfalto, marcas viales, bordillos y aceras de una nube MMS de carretera y genera su archivo de dibujo (`/ASFALTO`).
* [Buscar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md): calcula los límites del asfalto, las líneas blancas, los ejes, los carriles y los transversales de una carretera (`/LINEASVIAL`).
* [Buscar raíles](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md): clasifica los puntos de los raíles de una nube MMS y genera el dibujo de sus límites y su eje (`/RAILES`).
* [Buscar líneas de raíl](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md): calcula las líneas de raíles, túnel, andenes, muros y traviesas de un ferrocarril, con el eje y los transversales (`/LINEASRAIL`).
* [Filtrar puntos](/mdtopx/desde-linea-de-comando/linea-de-comando-filtrar-puntos.md): reduce la densidad de una nube de puntos con una rejilla de paso configurable y guarda el resultado en el mismo archivo (`/FILTRADO`).
* [Cubicar acopios](/mdtopx/desde-linea-de-comando/linea-de-comando-acopios.md): clasifica una nube de puntos de interior de nave y calcula el volumen de sus acopios, por zonas o en toda la nube (`/ACOPIOS`).
* [Orientar nube contra nube](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md): orienta una nube de puntos desorientada contra la nube de un modelo teórico y guarda la transformación en un archivo de texto (`/ORIENTARNUBE`).
* [Orientar nube con un archivo de orientación](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md#orientar-con-un-archivo-de-orientación): aplica a una nube de puntos la transformación guardada en un archivo de orientación y guarda la nube modificada en el archivo de entrada (`/ORIENTARNUBEARCHIVO`).

## Otras órdenes

`/LADO` tiene página propia; las demás órdenes de esta lista se describen aquí.

* [Borrar triángulos por longitud de lado](/mdtopx/desde-linea-de-comando/linea-de-comando-borrar-triangulos-por-longitud-de-lado.md): borra los triángulos de un modelo digital que tienen algún lado mayor que una longitud y guarda el modelo en el mismo archivo (`/LADO`).
* `/SUA`: suaviza un modelo digital de rejilla (archivo DEM) con la herramienta [Suavizado](/mdtopx/modulo-virtualand/suavizado.md) y guarda el DEM suavizado en el archivo de salida o, si no escribes ninguno, en el archivo de entrada. Para configurar el suavizado, añade a MDTopX.ini la sección **\[SuavizadoDEM]**, con las claves **Ferguson**, **BSpline** y **Rupturas** (0 o 1; valor predeterminado: 0) y **Suavizado** (nivel de suavizado, de 1 a 10; valor predeterminado: 10). Estas claves corresponden a los campos del cuadro de diálogo de Suavizado. Si una clave no existe, MDTopX usa el valor guardado en la configuración del usuario.
* `/REF`: abre el archivo de entrada en la interfaz y carga como archivos de referencia los archivos que escribes después de la orden. MDTopX carga los archivos indicados después de `/REF` con la función de [Cargar ficheros de referencia](/mdtopx/operaciones-con-archivos/abrir-archivos-de-referencia.md). Si el archivo de entrada contiene comodines, MDTopX carga además como referencias los demás archivos cuyos nombres coinciden con el patrón, a continuación de los que escribes después de la orden. Después de intentar cargar todos los archivos, MDTopX muestra un cuadro de mensaje por cada archivo que no ha podido cargar, con el texto «MDTopX no puede cargar el archivo de referencia \<ruta\>.» (con MDTopX en inglés, «MDTopX cannot load the reference file \<path\>.»). Escribe el archivo de entrada antes de la orden, porque `/REF` toma como lista de archivos todos los argumentos que la siguen.
* `/DEM`: abre el archivo de entrada en la interfaz. La orden exige un argumento; MDTopX lo anota como archivo de salida en MDTopX.LOG, pero no escribe ningún archivo con ese nombre.
* `/ORTOFOTO`: no está disponible desde la línea de comando. MDTopX escribe en MDTopX.LOG el mensaje «La orden /ORTOFOTO no se puede ejecutar desde la línea de comando. MDTopX termina sin procesar el archivo.» y termina sin abrir ningún archivo.

## Órdenes de licencias de software

Estas órdenes no leen el archivo MDTopX.ini ni ejecutan ninguna herramienta de cálculo. No muestran ventanas, no abren la interfaz de MDTopX y terminan el proceso de `MDTopX.exe` con un código de salida que indica el resultado. Se escriben con barra inicial y no distinguen mayúsculas de minúsculas:

* [Activar equipo](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activa el ordenador, para todos los usuarios de Windows, con un código de activación (`/activar-equipo <código>`).
* [Servidor de licencias](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): guarda o borra la dirección del servidor de licencias local (`/servidor-licencias <dirección>` o `/servidor-licencias /quitar`).
