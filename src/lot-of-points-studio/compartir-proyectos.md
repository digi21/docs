# Compartir proyectos
<!-- id: lot-of-points-studio-compartir-proyectos -->

Studio genera un enlace para abrir cada proyecto publicado en Lot Of Points. Ese enlace apunta al catálogo del
proyecto e incorpora la firma de acceso compartido (SAS, del inglés *Shared Access Signature*) de solo
lectura configurada en **Ajustes**. La dirección del recurso es un localizador uniforme de recursos (URL).

## Obtener el enlace

Configura **Contenedor de Azure (URL con SAS de solo lectura, para compartir)** en [Ajustes](ajustes.md).
Debe corresponder al mismo contenedor en el que has publicado las nubes. Después, vuelve a **Proyectos** y
selecciona el proyecto que quieras compartir.

Sobre la lista de nubes aparece el campo **URL para cargar el proyecto en Lot Of Points:**. Pulsa **Copiar** para
llevar el enlace al portapapeles. Si falta la URL de lectura, Studio muestra el aviso **Configura el SAS de solo
lectura** en lugar del enlace. La URL de escritura no se utiliza para generar este enlace compartido.

El enlace conserva los permisos y la caducidad del SAS del contenedor. Para abrir el catálogo en Lot Of Points
basta el permiso de lectura; para consultar también la lista de proyectos en Studio hace falta el permiso de
listado. La página de [Ajustes](ajustes.md#url-de-solo-lectura) explica esta diferencia.

## Abrir el proyecto en Lot Of Points

En Lot Of Points, pulsa **Añadir nubes de puntos remotas (Azure)** en el panel **Capas** y pega el enlace que
has copiado. El visor lee el catálogo y abre sus nubes por *streaming*: solicita las partes del nivel de detalle
que necesita para la vista, sin descargar antes el proyecto completo.

Las imágenes esféricas publicadas acompañan a las nubes. El visor descarga las miniaturas al abrir el catálogo del proyecto y descarga
los originales al entrar en cada fotografía. Lot Of Points también permite editar las nubes remotas en el equipo del usuario cuando tienen registro
de ediciones e índices originales. Los comandos por teselas pueden elegir nubes remotas; las consultas de solo
lectura no necesitan registro de ediciones ni índices originales. Las ediciones locales no actualizan los archivos publicados en Azure. Consulta la [introducción de Lot Of Points](../lot-of-points/introduccion.md)
para conocer las herramientas del visor.

## Renovar un enlace caducado

Si el SAS ha caducado, introduce una URL de lectura vigente en **Ajustes**, vuelve a **Proyectos** y copia de nuevo
el enlace. El catálogo guarda las direcciones de sus nubes sin el SAS; por tanto, renovar el acceso no requiere
volver a publicar los datos.
