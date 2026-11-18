# Mapa de tintas hipsométricas
<!-- id: linea-de-comando-mapa-de-tintas-hipsometricas -->

[Mapa de tintas hipsométricas](/mdtopx/como/como-mapa-de-tintas-hipsometricas.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /HIP [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, a partir del cual se generará el mapa de tintas hipsométricas.

El archivo de salida será el nombre con el que se salve el mapa de tintas hipsométricas. El programa salvará en el formato TIF, BMP o JPEG, en función de la extensión del archivo de salida.

Además de esta secuencia y para configurar el modo de generación del mapa de tintas hipsométricas, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Hipsometricas]** y a continuación los campos siguientes:

* **Size**: Tamaño en metros del píxel de la imagen de salida. Valor predeterminado: 1.
* **Limite**: Nombre del archivo con el límite
* **CheckLimite**: 0 (sin límite) o 1 (con límite). Valor predeterminado: 0.
* **CheckSombreado**: 0 (sin sombreado) o 1 (con sombreado). Valor predeterminado: 0.
* **Degradacion**: 0 (cada intervalo se pinta con un color uniforme) o 1 (degradación entre los colores de los intervalos). Valor predeterminado: 1.
* **GrabarLimites**: 0 (no grabar) o 1 (grabar los límites de los intervalos como entidades vectoriales en el archivo **NombreVector**). Valor predeterminado: 0.
* **NombreVector**: Nombre del archivo donde se graban los límites de los intervalos. El programa lo salva en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation). Valor predeterminado: Limites vectoriales.bin.
* **Gama\[n]**: Nombre de una gama de colores, siendo n un número correlativo empezando por 1. MDTopX deja de leer la secuencia en el primer valor de n que no existe en el archivo. MDTopX utiliza para el mapa la última gama de la secuencia.
* **Gama\[n]Intervalo\[m]**: Secuencia de los intervalos que formarán parte de la gama n, siendo m un número correlativo empezando por 1. MDTopX deja de leer la secuencia en el primer valor de m que no existe en el archivo. Cada valor contiene primero la cota en metros y después el color empleado, representado por sus valores en rojo, verde y azul, separados por comas.
* **DataRayo\_Angulo**: Ángulo de inclinación del rayo de luz del sombreado, en grados centesimales (gon). Valor predeterminado: 50.
* **DataRayo\_Acimut**: Acimut del rayo de luz del sombreado, en grados centesimales (gon). Valor predeterminado: 350.
* **DataRayo\_Intensidad**: Intensidad del rayo de luz del sombreado. Valor predeterminado: 1.
* **DataRayo\_Exageracion**: Exageración vertical aplicada al calcular el sombreado. Valor predeterminado: 1.
* **DataRayo\_TipoRayo**: Modo de coloración del sombreado: 0 (blanco-color) o 1 (blanco-color-negro). Valor predeterminado: 0.

Los campos con prefijo **DataRayo\_** solo se utilizan si **CheckSombreado** vale 1.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Hipsometricas]
Size=1
CheckLimite=0
CheckSombreado = 0
Gama1=Gama de ejemplo
Gama1Intervalo1=900,0,255,0
Gama1Intervalo2=950,255,255,0
Gama1Intervalo3=1000,255,0,0
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
