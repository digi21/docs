# Línea de comandos
<!-- id: linea-de-comandos -->

Puedes pasar parámetros a Digi3D.AI desde la línea de comandos.

Con estos parámetros puedes, por ejemplo, iniciar el programa, abrir un archivo de dibujo y ejecutar un archivo de macroinstrucciones que realice una tarea y cierre el programa al finalizar la tarea.

Cada orden se escribe después de `digi3d.exe` y tiene sus propias opciones, que se describen en la página de la orden. Puedes escribir varias órdenes en la misma línea, como en el ejemplo que combina `foto` y `dibujo`. Los nombres de las órdenes y de las opciones distinguen mayúsculas de minúsculas, salvo `/activar-equipo`.

Si la línea de comandos no contiene ninguna orden, Digi3D.AI se inicia como si no tuviera parámetros. Si contiene un argumento que no es ninguna de las órdenes ni de las opciones de esta página, Digi3D.AI muestra un cuadro de mensaje con el error, no ejecuta ninguna orden y continúa iniciándose como si no tuviera parámetros. Por ejemplo, Digi3D.AI no abre un archivo cuyo nombre se escribe solo después de `digi3d.exe`: usa las órdenes `dibujo`, `foto` o `proyecto`.

## Opciones

| Opción | Descripción |
| ------ | ----------- |
| --ayuda | Muestra en un cuadro de mensaje la sintaxis de las órdenes y de las opciones. Al cerrar el cuadro, Digi3D.AI continúa iniciándose sin ejecutar ninguna orden. |

## Comandos

| Orden | Descripción |
| ----- | ----------- |
| [dibujo](/digi3d-ai/referencia/linea-de-comandos/dibujo/) | Abre una ventana de dibujo |
| [foto](/digi3d-ai/referencia/linea-de-comandos/foto.md) | Abre una ventana fotogramétrica |
| [proyecto](/digi3d-ai/referencia/linea-de-comandos/proyecto.md) | Carga un archivo de proyecto fotogramétrico |
| [/activar-equipo](/digi3d-ai/referencia/linea-de-comandos/activar-equipo.md) | Activa el ordenador para todos los usuarios de Windows con un código de activación de licencias de software, sin abrir Digi3D.AI. Se escribe con barra inicial y no se combina con las demás órdenes. |
| [/eliminar-activacion-equipo](/digi3d-ai/referencia/linea-de-comandos/eliminar-activacion-equipo.md) | Elimina del ordenador la activación de licencias de software para todos los usuarios de Windows, sin abrir Digi3D.AI. Se escribe con barra inicial y no se combina con las demás órdenes. |

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

Ejecuta la siguiente orden, en una consola abierta con **Ejecutar como administrador**, para activar el ordenador para todos los usuarios de Windows con un código de activación (consulta [/activar-equipo](activar-equipo.md)):

```powershell
digi3d.exe /activar-equipo <código>
```
