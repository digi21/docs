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
   creada), la versión mínima de Lot Of Points y las novedades en Markdown.
2. Elige el ZIP y pulsa **Subir y enviar a revisión**. La página sube el ZIP a digi21.net y el servidor comprueba
   su contenido.
3. Espera la revisión de Digi21. Si Digi21 rechaza la versión, la página muestra el motivo y puedes subir otro ZIP.

Al publicar la versión, digi21.net asigna la fecha de publicación y firma un manifiesto con el resumen criptográfico de cada
archivo. Cada vez que se inicia, Lot Of Points comprueba la firma del manifiesto y los resúmenes criptográficos de los archivos de cada versión instalada. Una compra permite usar las
versiones de la extensión publicadas hasta la fecha de fin del soporte incluido en esa compra. Si Digi21 retira una versión publicada, la tienda deja de
entregarla y Lot Of Points deja de cargarla.
