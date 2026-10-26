# Archivo de configuración Digi3DNET.db
<!-- id: archivo-de-configuracion-digi3dnet.db -->

Es una base de datos que almacena la configuración de Digi3D.AI.

Digi3D.AI históricamente almacenaba la configuración en el registro de _Windows._

Los parámetros de configuración comunes para todos los usuarios \(como el tipo de estereoscopía, que no varía en un ordenador en función del usuario conectado\) se almacenaban en la clave del registro: **Computer\HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET**.

Los parámetros de configuración específicos del usuario \(como el color preferido del índice en la ventana fotogramétrica\) se almacenaban en la clave del registro: **Computer\HKEY\_CURRENT\_USER\SOFTWARE\Digi21\Digi3D.NET**.

Almacenar la configuración para todos los usuarios en la entrada **HKEY\_LOCAL\_MACHINE** requiere permisos de administrador, de los que algunos usuarios no disponen. Por eso, la configuración del equipo se almacena en una base de datos en formato SQLITE ubicada en la ruta **C:\ProgramData\Digi3D.NET\Digi3DNET.db**.

Puedes copiar el archivo Digi3DNET.db entre equipos para evitar repetir la configuración en varias máquinas.

El instalador de Digi3D.AI no crea el archivo Digi3DNET.db, sino que sigue almacenando los parámetros para el equipo en el registro, en **LOCAL\_MACHINE** \(puesto que la instalación del programa requiere permisos de administrador del equipo\). La primera vez que arranca, Digi3D.AI crea el archivo con las tablas vacías. Cada vez que Digi3D.AI lee un valor que no está en el archivo, copia ese valor de **LOCAL\_MACHINE** o, si tampoco existe en esa clave del registro, guarda el valor por defecto. Los valores de tipo real son la excepción: Digi3D.AI solo guarda estos valores si existen en **LOCAL\_MACHINE**; si un valor de tipo real no existe en esa clave del registro, Digi3D.AI usa el valor por defecto sin guardarlo. Por eso el archivo solo contiene los valores que Digi3D.AI ha leído alguna vez.

El archivo Digi3DNET.db se puede editar con programas como _DB Browser For SQLite_ o con el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md).

La página de cada opción de los cuadros de diálogo [Configuración](../cuadros-de-dialogo/configuracion/README.md), [Configurar proyectos](../cuadros-de-dialogo/configurar-proyectos.md) y [Configuración de dispositivos de entrada](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md) indica, en la sección **Dónde se almacena**, la carpeta, la tabla y el nombre del valor que guarda la opción, y las sentencias SQL que lo cambian. La página [Valores del archivo de configuración](valores-del-archivo-de-configuracion-digi3dnet.db.md) enumera los valores que no tienen página de opción.

