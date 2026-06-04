# Archivo de configuración Digi3DNET.db

Es una base de datos que almacena la configuración de Digi3D.NET.

Digi3D.NET históricamente almacenaba la configuración en el registro de _Windows._

Los parámetros de configuración comunes para todos los usuarios \(como el tipo de estereoscopía, que no varía en un ordenador en función del usuario conectado\) se almacenaban en la clave del registro: **Computer\HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET**.

Los parámetros de configuración específicos del usuario \(como el color preferido del índice en la ventana fotogramétrica\) se almacenaban en la clave del registro: **Computer\HKEY\_CURRENT\_USER\SOFTWARE\Digi21\Digi3D.NET**.

El problema de almacenar la configuración para todos los usuarios en la entrada **HKEY\_LOCAL\_MACHINE** es que requiere ser administrador para almacenar la configuración, y eso no es posible para ciertos usuarios, de manera que decidimos hacer que la configuración de máquina en formato SQLITE ubicada en la ruta: **C:\ProgramData\Digi3D.NET\Digi3DNET.db**.

Este archivo de puede copiar entre equipos para evitar configurar lo mismo en varias máquinas.

El instalador de Digi3D.NET no crea este archivo, sino que sigue almacenando los parámetros para el equipo en el registro, en **LOCAL\_MACHINE** \(puesto que al instalar el programa tenemos la garantía de ser administrador del equipo\). La primera vez que arranquemos Digi3D.NET, éste comprobará que el archivo no existe y lo creará de nuevo a partir de la información almacenada en **LOCAL\_MACHINE**.

Este archivo se puede editar con programas con _DB Browser For SQLite_.

