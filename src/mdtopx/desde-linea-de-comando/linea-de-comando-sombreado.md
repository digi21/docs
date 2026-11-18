# Sombreado
<!-- id: linea-de-comando-sombreado -->

[Sombreado](/mdtopx/como/como-sombreado.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /SOM [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, a partir del cual se generará el sombreado.

El archivo de salida será el nombre con el que se salve el sombreado. El programa salvará en el formato TIF, BMP o JPEG, en función de la extensión del archivo de salida.

Además de esta secuencia y para configurar el modo de generación del sombreado, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Sombreado]** y a continuación los campos siguientes:

* **Size** : Tamaño en metros del píxel de la imagen de salida. Valor predeterminado: 1.
* **Tipo** : 0 (iluminación cenital), 1 (iluminación oblicua) o 2 (iluminación mixta). Valor predeterminado: 0.
* **Limite** : Nombre del archivo con el límite
* **CheckLimite** : 0 (sin límite) o 1 (con límite). Valor predeterminado: 0.
* **ColorCenital** : color empleado en la iluminación cenital, representado por sus valores en rojo, verde y azul, separados por comas. Valor predeterminado: 0,255,255.
* **ColorOblicuo** : color empleado en la iluminación oblicua, representado por sus valores en rojo, verde y azul, separados por comas. Valor predeterminado: 255,0,255.
* **DataRayo\_Angulo** : Ángulo de inclinación del rayo de luz, en grados centesimales (gon). Valor predeterminado: 50.
* **DataRayo\_Acimut** : Acimut del rayo de luz, en grados centesimales (gon). Valor predeterminado: 350.
* **DataRayo\_Intensidad** : Intensidad del rayo de luz. Valor predeterminado: 1.
* **DataRayo\_Exageracion** : Exageración vertical aplicada al calcular el sombreado. Valor predeterminado: 1.
* **DataRayo\_TipoRayo** : Modo de coloración: 0 (blanco-color) o 1 (blanco-color-negro). Valor predeterminado: 0.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Sombreado]
Size=1
Tipo=2
CheckLimite=0
ColorCenital=255,0,0
ColorOblicuo=0,0,255
DataRayo_Angulo=50
DataRayo_Acimut=350
DataRayo_Intensidad=1
DataRayo_Exageracion=1
DataRayo_TipoRayo=0
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
