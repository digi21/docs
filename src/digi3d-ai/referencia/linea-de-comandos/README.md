# Línea de comandos
<!-- id: linea-de-comandos -->

Puedes pasar parámetros a Digi3D.AI desde la línea de comandos.

Con estos parámetros puedes, por ejemplo, iniciar el programa, abrir un archivo de dibujo y ejecutar un archivo de macroinstrucciones que realice una tarea y cierre el programa al finalizar la tarea.

El programa puede recibir una o varias órdenes desde la línea de comandos. Si no recibe ninguna, no realiza ninguna tarea.

En caso de indicar por la línea de comandos un parámetro, éste requerirá que se pasen una serie de parámetros opcionales.

## Opciones

| Opción  | Descripción   |
| ------- | ------------- |
| --ayuda | Muestra ayuda |

## Comandos

| Orden                   | Descripción                                 |
| ----------------------- | ------------------------------------------- |
| [dibujo](/digi3d-ai/referencia/linea-de-comandos/dibujo/)       | Ordena abrir una ventana de dibujo          |
| [foto](/digi3d-ai/referencia/linea-de-comandos/foto.md)         | Ordena abrir una ventana fotogramétrica     |
| [proyecto](/digi3d-ai/referencia/linea-de-comandos/proyecto.md) | Carga un archivo de proyecto fotogramétrico |

## Ejemplos

Ejecuta la siguiente orden para abrir un archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Ejecuta la siguiente orden para abrir un archivo de dibujo en formato binario de doble precisión con la tabla de códigos c:\trabajo\tabla.tab.xml y ejecutar el archivo de macroinstrucciones "trabaja":

```powershell
digi3d.exe dibujo --orden @trabaja --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Ejecuta la siguiente orden para abrir un archivo de dibujo en formato binario de doble precisión con la tabla de códigos c:\trabajo\tabla.tab.xml, una escala de representación de patrones de 1:2000 y una equidistancia de curvas de nivel de 2.0 unidades de longitud de trabajo del dibujo:

```powershell
digi3d.exe dibujo --escala 2000 --equidis 2 --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Ejecuta la siguiente orden para abrir una ventana fotogramétrica con el modelo c:\trabajo\modelo.d3d:

```
digi3d.exe foto c:\trabajo\modelo.d3d
```

Ejecuta la siguiente orden para abrir una ventana fotogramétrica con el modelo c:\trabajo\modelo.d3d y una de dibujo con el archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe foto c:\trabajo\modelo.d3d dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Ejecuta la siguiente orden para abrir en el panel de archivo fotogramétrico el archivo c:\trabajo\proyecto.prj:

```
digi3d.exe proyecto c:\trabajo\proyecto.prj
```
