# Cubicar acopios
<!-- id: linea-de-comando-acopios -->

La herramienta `/ACOPIOS` clasifica los puntos de una nube de puntos tomada en el interior de una nave (por ejemplo, un escaneo SLAM, *Simultaneous Localization and Mapping*) y calcula el volumen de los acopios de material que hay sobre el suelo. Es el mismo cálculo que describe [Cubicación de acopios](/mdtopx/programacion/python/mdtopx-acopios.md), en la programación con Python.

Para ejecutar esta herramienta desde la línea de comando, escribe la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /ACOPIOS [archivo de salida]
```

Escribe la ruta completa de los dos archivos. MDTopX busca MDTopX.ini en la carpeta del archivo de entrada.

## Archivos

* **Archivo de entrada**: nube de puntos con clasificación LAS, por ejemplo un archivo LAS o LAZ. MDTopX clasifica los puntos y guarda la nube clasificada en este mismo archivo, por lo que sobrescribe el original. Trabaja con una copia si necesitas conservar la nube sin clasificar.
* **Archivo de salida**: archivo de dibujo con el resultado de la cubicación. Es obligatorio: si no lo escribes, MDTopX no lee MDTopX.ini y calcula con los valores guardados en la configuración del usuario. MDTopX guarda este archivo en formato DIGI (BIN) con cualquier extensión que escribas; a diferencia de la herramienta [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md), la extensión no selecciona DXF ni DGN.

La clasificación que MDTopX escribe en el archivo de entrada usa estos códigos de clasificación LAS: 2 (suelo), 3 (acopio), 4 (punto alto), 5 (pared), 6 (techo) y 7 (ruido). Los puntos que no clasifica quedan en la clase 1 (sin clasificar).

MDTopX anota el desarrollo del cálculo en el archivo MDTopX.LOG, que crea en la carpeta del archivo MDTopX.ini, y escribe en él los valores de la sección **\[ClasificarAcopios]** que usa en el cálculo.

## Licencia

Esta herramienta no exige la licencia de MDTopX: MDTopX no comprueba que haya una llave de protección o una licencia de software de MDTopX antes de ejecutarla. /ACOPIOS, /FILTRADO y /ORIENTARNUBE no comprueban la licencia de MDTopX al iniciarse.

## Resultado

El resultado depende de si indicas un archivo de zonas en la clave **NombreDibujoZonas**.

* **Con archivo de zonas**: MDTopX calcula el volumen del acopio de cada zona. El archivo de salida contiene el límite de cada zona cubicada y, en su interior, un texto con el nombre de la zona y su volumen, por ejemplo `A1 : 123.45 m³`. Si la clave **SalidaResultados** tiene valor, MDTopX escribe además un informe de texto con el volumen de cada zona.
* **Sin archivo de zonas**: MDTopX busca los acopios en toda la nube, sin ninguna zona de referencia. El archivo de salida contiene el límite de cada acopio que encuentra y un texto con su volumen, por ejemplo `123.45 m³`. MDTopX no escribe el informe de **SalidaResultados**.

El archivo de zonas es un archivo de dibujo con líneas cerradas (el límite de cada zona) y un texto dentro de cada línea (el nombre de la zona). MDTopX ignora los textos que no están dentro de ninguna línea cerrada.

## Configuración en MDTopX.ini

Para configurar el cálculo, MDTopX.ini debe tener una línea con el texto **\[ClasificarAcopios]** y, a continuación, estas claves. Los nombres de sección y de clave no distinguen mayúsculas de minúsculas. Si omites una clave o le das un valor vacío, MDTopX usa el valor guardado en la configuración del usuario de MDTopX y, si no hay ninguno, el valor predeterminado. Cada valor admite como máximo 255 caracteres.

* **NombreDibujoMuros**: ruta del archivo con la nube de puntos de las paredes de la nave. Es opcional. MDTopX usa los puntos más bajos de esta nube para obtener la base de las paredes y calcular los límites del suelo. Predeterminado: vacío.
* **NombreDibujoZonas**: ruta del archivo de zonas. Es opcional. Con esta clave, MDTopX cubica por zonas. Predeterminado: vacío.
* **NombreMateriales**: ruta de un archivo de texto con los materiales y su densidad. Es opcional. Cada línea contiene el nombre del material y su densidad, separados por espacios, tabuladores o comas. MDTopX ignora las líneas cuya densidad no sea un número mayor que 0. Si el nombre contiene espacios, escríbelo entre comillas dobles. Predeterminado: vacío.
* **NombreRelacionZonasMaterial**: ruta de un archivo de texto que relaciona cada zona con un material. Es opcional y MDTopX solo lo usa si **NombreMateriales** indica un archivo con al menos un material. Cada línea contiene tres campos: el nombre de la zona, una descripción y el nombre del material, con los mismos separadores que el archivo de materiales. MDTopX compara los nombres sin distinguir mayúsculas de minúsculas. Si el material de una zona no está en el archivo de materiales, MDTopX lo anota en MDTopX.LOG y no calcula el peso de esa zona. Predeterminado: vacío.
* **SalidaResultados**: nombre del informe de texto con los resultados por zona. Si lo escribes sin carpeta, MDTopX lo crea en la carpeta del archivo de entrada. Predeterminado: `Resultados.txt`.
* **ClasificarAcopios**: 0 o 1. Solo tiene efecto con **NombreDibujoZonas**. Con 1, MDTopX clasifica además los puntos de la nube de cada zona en acopio, pared, punto alto, ruido y suelo, y calcula el volumen con los puntos clasificados como acopio. Con 0, MDTopX no hace esa clasificación. Con 1 el cálculo tarda más. Predeterminado: 1.
* **PasoMalla**: paso de la malla, en metros, con el que MDTopX clasifica la nube. Varios umbrales del cálculo son múltiplos de este valor. Escribe un valor mayor que 0 con punto decimal: MDTopX sustituye un valor negativo por el predeterminado y un valor 0 provoca un error en el cálculo. Predeterminado: 0.1.
* **DesfaseEntreDibujos**: distancia en metros a la que MDTopX desplaza los límites que obtiene de la nube de paredes: hacia fuera los límites exteriores y hacia dentro los límites interiores. Solo tiene efecto con **NombreDibujoMuros**. MDTopX sustituye un valor negativo por el predeterminado. Predeterminado: 0.5.
* **Formato**: MDTopX lee esta clave pero no la usa. El formato del archivo de salida no depende de ella.

Si escribes una ruta sin carpeta en **NombreDibujoMuros**, **NombreDibujoZonas**, **NombreMateriales** o **NombreRelacionZonasMaterial**, MDTopX la busca en el directorio de trabajo del proceso. Escribe la ruta completa para evitar que dependa del directorio desde el que lances MDTopX.

```ini
[ClasificarAcopios]
NombreDibujoMuros = C:\Nave\Muros.las
NombreDibujoZonas = C:\Nave\Zonas.bin
NombreMateriales = C:\Nave\Materiales.txt
NombreRelacionZonasMaterial = C:\Nave\Relaciones.txt
SalidaResultados = Resultados.txt
ClasificarAcopios = 1
PasoMalla = 0.1
DesfaseEntreDibujos = 0.5
```

## Informe de resultados

El informe de **SalidaResultados** es un archivo de texto con las columnas alineadas, no un archivo delimitado. Tiene una línea por zona, con estas columnas:

* **Nombre**: nombre de la zona.
* **CantidadVol**: cantidad de prismas con los que MDTopX calcula el volumen de la zona.
* **Superficie**: superficie en planta del acopio.
* **Volumen**: volumen del acopio sobre el suelo.
* **AlturaMedia** y **AlturaMax**: altura media y altura máxima del acopio.

Si hay archivo de relación de zonas con materiales, el informe añade las columnas **Peso**, **Descripción** y **Material**. El peso de una zona es su volumen multiplicado por la densidad de su material, y MDTopX lo calcula solo si el material está en el archivo de materiales. Después de las zonas, el informe contiene una línea con los totales y, con archivo de relación, una tabla **Materiales utilizados** con la cantidad de zonas, la superficie, el volumen y el peso de cada material.

Vea también:

* [Introducción a la línea de comandos](./)
* [Cubicación de acopios (Python)](/mdtopx/programacion/python/mdtopx-acopios.md)
* [Orientar nube contra nube](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md)
