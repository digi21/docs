# Línea de comandos

Digi3D.NET admite que le pasemos parámetros desde la línea de comandos.

Gracias a estos parámetros podemos por ejemplo ejecutar el programa ordenándole que abra un archivo de dibujo y haciéndole ejecutar un archivo de macroinstrucciones que realice alguna determinada tarea para terminar cerrando el programa.

El programa puede recibir opcionalmente desde la línea de parámetros los distintos comandos (si no recibe ninguno, no realiza ninguna tarea, además puede recibir más de uno simultáneamente).

En caso de indicar por la línea de comandos un parámetro, éste requerirá que se pasen una serie de parámetros opcionales.

## Opciones

| Opción  | Descripción   |
| ------- | ------------- |
| --ayuda | Muestra ayuda |

## Comandos

| Comando                 | Descripción                                 |
| ----------------------- | ------------------------------------------- |
| [dibujo](/digi3d-net/referencia/linea-de-comandos/dibujo/)       | Ordena abrir una ventana de dibujo          |
| [foto](/digi3d-net/referencia/linea-de-comandos/foto.md)         | Ordena abrir una ventana fotogramétrica     |
| [proyecto](/digi3d-net/referencia/linea-de-comandos/proyecto.md) | Carga un archivo de proyecto fotogramétrico |

## Ejemplos

Para abrir un archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Para abrir un archivo de dibujo en formato binario de doble precisión y ejecutando como comando el archivo de macroinstrucciones "trabaja" con la tabla de códigos c:\trabajo\tabla.tab.xml

```powershell
digi3d.exe dibujo --orden @trabaja --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Para abrir un archivo de dibujo en formato binario de doble precisión indicando que la escala de representación de patrones sea 1:2000 y que la equidistancia de curvas de nivel sea 2.0 con la tabla de códigos c:\trabajo\tabla.tab.xml

```powershell
digi3d.exe dibujo --escala 2000 --equidis 2 --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Para abrir una ventana fotogramétrica con el modelo c:\trabajo\modelo.d3d

```
digi3d.exe foto c:\trabajo\modelo.d3d
```

Para abrir una ventana fotogramétrica con el modelo c:\trabajo\modelo.d3d y una de dibujo con el archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml

```powershell
digi3d.exe foto c:\trabajo\modelo.d3d dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Para abrir en el panel de archivo fotogramétrico el archivo c:\trabajo\proyecto.prj

```
digi3d.exe proyecto c:\trabajo\proyecto.prj
```
