# Archivo de configuración Digi3DNET.db
<!-- id: archivo-de-configuracion-digi3dnet.db -->

Es una base de datos que almacena la configuración de Digi3D.AI.

Digi3D.AI históricamente almacenaba la configuración en el registro de _Windows._

Los parámetros de configuración comunes para todos los usuarios \(como el tipo de estereoscopía, que no varía en un ordenador en función del usuario conectado\) se almacenaban en la clave del registro: **Computer\HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET**.

Los parámetros de configuración específicos del usuario \(como el color preferido del índice en la ventana fotogramétrica\) se almacenaban en la clave del registro: **Computer\HKEY\_CURRENT\_USER\SOFTWARE\Digi21\Digi3D.NET**.

El problema de almacenar la configuración para todos los usuarios en la entrada **HKEY\_LOCAL\_MACHINE** es que requiere ser administrador para almacenar la configuración, y eso no es posible para ciertos usuarios, de manera que decidimos hacer que la configuración de máquina en formato SQLITE ubicada en la ruta: **C:\ProgramData\Digi3D.NET\Digi3DNET.db**.

Este archivo de puede copiar entre equipos para evitar configurar lo mismo en varias máquinas.

El instalador de Digi3D.AI no crea este archivo, sino que sigue almacenando los parámetros para el equipo en el registro, en **LOCAL\_MACHINE** \(puesto que al instalar el programa tenemos la garantía de ser administrador del equipo\). La primera vez que arranca, Digi3D.AI crea el archivo con las tablas vacías. Después, cada vez que lee un valor que no está en el archivo, lo copia de **LOCAL\_MACHINE** o, si allí tampoco existe, guarda su valor por defecto. Los valores reales son la excepción: solo se guardan si existen en **LOCAL\_MACHINE**; si no, Digi3D.AI usa el valor por defecto sin guardarlo. Por eso el archivo solo contiene los valores que Digi3D.AI ha leído alguna vez.

Este archivo se puede editar con programas con _DB Browser For SQLite_ o con el cuadro de diálogo [Configuración avanzada](../cuadros-de-dialogo/configuracion-avanzada.md).

La página [Valores del archivo de configuración](valores-del-archivo-de-configuracion-digi3dnet.db.md) enumera los valores que guarda el archivo, con su carpeta, su tabla, su valor por defecto y el cuadro de diálogo que los modifica.

