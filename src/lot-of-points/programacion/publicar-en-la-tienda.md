# Publicar en la tienda de extensiones
<!-- id: lot-of-points-publicar-en-la-tienda -->

La tienda de extensiones de digi21.net distribuye comandos de Lot Of Points escritos en C, C++, Python o .NET.
El usuario instala las extensiones desde **Configuración** > **Tienda** (consulta el
[gestor de extensiones](../gestor-de-extensiones.md)). Digi21 aprueba a cada desarrollador y revisa cada versión
antes de publicarla, porque el código de una extensión se ejecuta en el equipo del usuario con los mismos permisos
que Lot Of Points.

## Darse de alta como desarrollador

1. Inicia sesión en digi21.net y abre **Licencias** > **Publicar extensiones de Lot Of Points**.
2. Escribe el nombre público con el que la tienda muestra tus extensiones y un prefijo: minúsculas, cifras y
   guiones entre palabras, por ejemplo `mi-empresa`. El prefijo encabeza los identificadores de tus extensiones y
   de sus módulos, y no se puede cambiar. Los prefijos de Digi21 (`lop`, `digi21`, `digi3d`, `mdtopx` y otros)
   están reservados.
3. Espera a que Digi21 apruebe la solicitud.

## Crear una extensión

Crea la extensión en el portal de desarrolladores con:

- un identificador formado por tu prefijo, un punto y un nombre, por ejemplo `mi-empresa.viales`, de como máximo
  100 caracteres;
- el programa que carga la extensión (hoy, Lot Of Points); no puedes cambiar el programa después de crear la extensión;
- el nombre, el resumen y los meses de soporte que incluye una compra;
- la descripción y las instrucciones en Markdown, un formato de texto con marcas para indicar títulos, listas y enlaces. La ficha pública muestra como texto el HTML (lenguaje de marcado
  de hipertexto) incrustado y solo muestra las imágenes que subes desde la página de la extensión;
- el icono: una imagen cuadrada de al menos 96 × 96 píxeles y hasta 5 MiB, en PNG (Portable Network Graphics), JPEG (Joint
  Photographic Experts Group), GIF (Graphics Interchange Format) o WebP. Se recomiendan 256 × 256 píxeles: la página **Tienda**
  de Lot Of Points muestra el icono a 48 × 48 píxeles y la ficha de digi21.net a 96 × 96.

Para mostrar una imagen en la descripción, las instrucciones o las novedades, súbela desde la página de la extensión y
pega en el campo que estés editando la línea de Markdown que aparece después de subir la imagen, con la forma `![texto alternativo](dirección de la imagen)`.
La pestaña **Vista previa** de cada campo muestra el texto como lo mostrará la ficha pública.

## Ofertas y módulos

Cada oferta indica cómo obtiene el usuario la extensión:

| Oferta | Datos |
|---|---|
| Gratis | Sin módulo ni precio. Cualquier equipo registrado puede descargar la extensión. |
| Compra para un equipo | Módulo y precio. La licencia se activa en un solo equipo. |
| Compra flotante | Módulo y precio. El usuario elige la fecha de fin de cada activación y puede cambiar de equipo. |
| Alquiler | Módulo, precio y meses de alquiler. |
| Demostración | Módulo y días de demostración, sin precio. Cada cuenta y cada equipo pueden tener una demostración del módulo. |

El módulo es un nombre `prefijo.nombre`, por ejemplo `mi-empresa.viales`. El formulario propone como módulo el identificador
de la extensión y ofrece los módulos de tus otras ofertas; elige **Otro módulo…** para escribir otro nombre. Mientras la tienda no admita pagos, los
usuarios pueden pedir una demostración de las extensiones de pago que tengan una oferta de demostración. Después de publicar la primera versión,
no puedes eliminar una oferta con módulo, porque los usuarios con una licencia de ese módulo necesitan esa
oferta para descargar la extensión.

## Declarar el módulo en el código

Declara el módulo de la oferta en cada comando de pago. Lot Of Points solo muestra y ejecuta el comando si una
licencia activada en el equipo incluye ese módulo, también cuando alguien copia la biblioteca o el guion fuera
de la carpeta de la extensión.

| Lenguaje | Declaración |
|---|---|
| C | Campo `module` de `lop_command` (consulta la [referencia de lop_sdk.h](c-cpp/referencia.md#lop_command)). |
| C++ | Campo `module` de `lop::Declaration`. |
| Python | Argumento `module` de `@lop.command` (consulta la [referencia del módulo lop](python/referencia.md#comandos-de-python)). |
| .NET | Propiedad `Module` del atributo `[Command]`. |

Los comandos sin módulo no necesitan licencia.

## Preparar el ZIP de una versión

Cada versión es un ZIP con los archivos que Lot Of Points instala en la carpeta de la versión:

- Las bibliotecas `.dll` nativas que exportan `lop_register_commands` y los ensamblados .NET van en la raíz del ZIP.
  Las dependencias de una biblioteca nativa también pueden ir en la raíz.
- Cada archivo `.py` de la raíz es un guion de comandos. Pon los módulos auxiliares de Python en una subcarpeta con
  un nombre propio de tu extensión, porque todas las extensiones comparten `sys.path` y los nombres de módulo.
- El ZIP no puede contener carpetas `__pycache__` ni un archivo `manifiesto.jws` en la raíz, ni rutas con `..`,
  `\`, `:`, nombres que terminen en punto o espacio, ni nombres de dispositivo de Windows como `CON` o `NUL`.
- El archivo ZIP puede ocupar hasta 200 mebibytes (MiB) y contener hasta 5.000 elementos en total, contando archivos
  y carpetas. El contenido descomprimido puede ocupar hasta 1 gibibyte (GiB). El ZIP tiene que contener al menos un
  archivo `.dll` o `.py`.

## Publicar una versión

1. Escribe en la página de la extensión la versión (`mayor.menor.revisión`, mayor que la de cada versión ya
   creada), la versión mínima de Lot Of Points y las novedades en Markdown. Si es una versión beta, marca la casilla de
   versión beta (consulta la sección «Versiones beta»).
2. Elige el ZIP y pulsa **Subir y enviar a revisión**. La página sube el ZIP a digi21.net y el servidor comprueba
   su contenido.
3. Espera la revisión de Digi21. Si Digi21 rechaza la versión, la página muestra el motivo y puedes subir otro ZIP.

Al publicar la versión, digi21.net asigna la fecha de publicación y firma un manifiesto con el resumen criptográfico de cada
archivo. Cada vez que se inicia, Lot Of Points comprueba la firma del manifiesto y los resúmenes criptográficos de los archivos de cada versión instalada. Una compra permite usar las
versiones de la extensión publicadas hasta la fecha de fin del soporte incluido en esa compra. Si Digi21 retira una versión publicada, la tienda deja de
entregarla y Lot Of Points deja de cargarla.

## Ocultar una extensión

Una extensión oculta no aparece en el catálogo de la tienda ni en su ficha pública de digi21.net (`/Extensiones/{id}`).
Los usuarios la encuentran en Lot Of Points con un código de acceso que les entregas (consulta la sección
«Códigos de acceso»). Una extensión oculta pasa por la misma aprobación y la misma revisión de Digi21 que una extensión
del catálogo, y Digi21 firma también los manifiestos de sus versiones. Si la extensión es de pago, el usuario sigue necesitando
la licencia: el código de acceso permite encontrar y descargar la extensión, pero no sustituye a la licencia.

Para ocultar una extensión o volver a mostrarla en el catálogo:

1. Abre la página de la extensión en el portal de desarrolladores y ve a la sección **Visibilidad en el catálogo**.
2. Pulsa **Ocultar**. Para volver a mostrarla, pulsa **Mostrar en el catálogo**.
3. Si la extensión ya tiene versiones publicadas, confirma el aviso del portal: «Los usuarios que instalaron la extensión
   desde el catálogo dejarán de recibir versiones nuevas hasta que escriban un código de acceso en Lot Of Points.».
   Estos usuarios conservan las versiones instaladas; para recibir versiones nuevas, escriben un código de acceso.

Una entrada de la tienda para comprar una función incluida en el programa tiene que figurar en el catálogo, así que el portal no
permite ocultarla.

## Códigos de acceso

Un código de acceso permite encontrar una extensión oculta en Lot Of Points y descargarla. Cada código pertenece a una
extensión. Crea un código por destinatario para poder revocarlos por separado.

Para crear un código de acceso:

1. En la página de la extensión, ve a la sección **Códigos de acceso**.
2. Escribe, si quieres, una descripción en **Descripción del destinatario (opcional)**. La tabla de códigos muestra esa
   descripción.
3. Elige, si quieres, una fecha en **Caduca el (opcional; a las 00:00 en tiempo universal coordinado, UTC)**. Si no eliges
   fecha, el código no caduca (**Sin caducidad**).
4. Pulsa **Crear un código de acceso**.
5. Copia el código y el enlace con los botones **Copiar** y envíalos al destinatario.

El portal muestra el código y el enlace una sola vez: «Copia ahora el código y el enlace: la tienda guarda solo el resumen
SHA-256 del código y no puede volver a mostrar el código.». SHA-256 es una función que calcula un resumen criptográfico de un texto;
a partir del resumen no se puede recuperar el código. Si pierdes un código, revócalo y crea otro.

Un código tiene 20 letras y cifras. El portal lo muestra en cuatro grupos de cinco separados por guiones. El enlace tiene la
forma `https://lotofpoints.xyz/Extensiones/Codigo#BCDFG-HJKLM-NPQRS-TVWXZ`. El código ocupa el fragmento de la
dirección, situado después de la almohadilla (`#`). El navegador no envía ese fragmento al servidor. La página `/Extensiones/Codigo` muestra el código del enlace con un
botón **Copiar** e indica cómo usarlo en Lot Of Points.

Cada extensión puede tener como máximo 100 códigos sin revocar. Si ya tiene 100, el portal muestra «La extensión ya tiene 100
códigos de acceso sin revocar. Revoca un código de acceso antes de crear un código de acceso nuevo.».

La tabla de la sección **Códigos de acceso** muestra, para cada código, sus 5 primeros caracteres, la descripción, la fecha de
creación (**Creado (UTC)**), la fecha de caducidad (**Caduca (UTC)**), el número de **Consultas**, la **Última consulta (UTC)**
y el **Estado**: **Vigente**, **Caducado** o **Revocado**. Una consulta es una petición de Lot Of Points que encuentra el
código vigente.

Para revocar un código, pulsa **Revocar** en su fila de la tabla. Desde ese momento, Lot Of Points no encuentra la extensión
con ese código. Revocar un código no desinstala la extensión de los equipos que ya la instalaron, y Lot Of Points sigue
cargando las versiones instaladas. Para que Lot Of Points deje de cargar una versión instalada, pide a Digi21 que retire esa versión.

### Qué hace el usuario en Lot Of Points

1. Abre el panel **Tienda** y pulsa **Buscar con un código de acceso**.
2. Escribe el código o pega el enlace que te envió el desarrollador. El cuadro de diálogo explica: «Escribe el código de acceso o pega el enlace
   que te ha enviado el desarrollador. Las extensiones ocultas no aparecen en el catálogo de la tienda.». Lot Of Points acepta
   el código con o sin guiones.
3. Pulsa **Buscar**. Lot Of Points muestra la ficha de la extensión, y el usuario la instala igual que una extensión del
   catálogo. El cuadro de confirmación avisa de que la extensión no aparece en el catálogo y de que Lot Of Points la ha
   encontrado con el código escrito.

Si ningún código vigente coincide con el texto, Lot Of Points muestra «Ningún código de acceso vigente coincide con el texto
escrito. Comprueba el código o pide otro al desarrollador de la extensión.».

Lot Of Points guarda el código de cada extensión oculta que el usuario encuentra. Cuando el usuario actualiza el catálogo y el
código guardado ha caducado o lo has revocado, Lot Of Points muestra: «El código de acceso guardado para {0} ha caducado o el
desarrollador lo ha revocado. Lot Of Points conserva las versiones instaladas de {0}. Escribe un código vigente para consultar
las versiones disponibles de {0} en la tienda.», donde {0} es el nombre de la extensión.

## Versiones beta

Una versión beta es una versión que publicas para que los usuarios la prueben antes de que la publiques como versión estable. Lot Of Points
ofrece las versiones beta de una extensión solo a los usuarios que eligen recibirlas.

Para publicar una versión beta:

1. En la página de la extensión, rellena el formulario de la versión como se explica en la sección «Publicar una versión».
2. Marca la casilla **Versión beta: Lot Of Points solo la ofrece a los usuarios que eligen recibir las versiones beta de esta
   extensión.**
3. Pulsa **Subir y enviar a revisión**.

Una versión beta usa el mismo formato de número que una estable (`mayor.menor.revisión`, sin sufijos como `-beta.1`) y su
número tiene que ser mayor que el de cada versión ya creada, beta o estable. Digi21 la revisa igual que una versión estable, y el manifiesto
firmado no indica que sea beta. La tabla de versiones de la página de la extensión tiene una columna **Beta** que marca las
versiones beta. La ficha pública de digi21.net no muestra las versiones beta.

Para que solo reciban la beta destinatarios concretos, publícala en una extensión oculta aparte.

### Qué hace el usuario en Lot Of Points

La ficha de la extensión muestra la **Última versión beta**. El usuario pulsa **Instalar la versión beta {0}**, donde {0} es el
número de la versión, y confirma la instalación. Si la instalación de la beta finaliza correctamente, Lot Of Points ofrece desde ese momento la
versión más reciente de la extensión, beta o estable. Para dejar de recibir las versiones beta, el usuario pulsa **Volver a la
versión estable {0}**. Si la última versión estable no está instalada, Lot Of Points la descarga al pulsar el botón. En el
siguiente inicio, Lot Of Points carga la última versión estable y borra las versiones beta instaladas.

### Publicar una beta como versión estable

Para publicar como estable una versión beta ya publicada, pulsa **Publicar como versión estable** en su fila de la tabla de versiones.
Digi21 no repite la revisión, porque los ficheros y el manifiesto firmado son los que ya revisó. La versión conserva su fecha de
publicación y la columna **Beta** deja de marcarla. Los usuarios que no reciben versiones beta empiezan a ver esa versión como
estable.

El portal rechaza el cambio si la versión no es una beta publicada o si la extensión tiene una versión estable publicada con un
número mayor: «Solo se puede publicar como estable una versión beta publicada, y la extensión no puede tener una versión
estable publicada con un número de versión mayor que el de esa versión beta.». Por ejemplo, si publicas la versión estable 1.1.1, no puedes publicar como estable la
beta 1.1.0.
