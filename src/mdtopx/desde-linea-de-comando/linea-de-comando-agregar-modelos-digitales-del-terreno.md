# Agregar modelos digitales del terreno
<!-- id: linea-de-comando-agregar-modelos-digitales-del-terreno -->

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

La orden une al archivo de entrada los archivos que escribes después de `/AGREGA`. El archivo de entrada puede ser un archivo de dibujo (incluidas las nubes de puntos), un modelo digital de red irregular de triángulos (TIN, por sus siglas en inglés), un modelo digital de rejilla (DEM), un proyecto o un archivo de viales. Cada archivo que se une tiene que poder leerse como el mismo tipo de archivo que el archivo de entrada. Con un DEM, los archivos que se unen tienen que ser archivos DEM o ESRI ASCII Grid con el mismo tamaño de celda y con las celdas alineadas con las del archivo de entrada.

MDTopX toma como archivos a agregar todos los argumentos que siguen a `/AGREGA`, así que escribe el archivo de entrada antes de la orden. Si no escribes ningún archivo después de la orden, MDTopX no la ejecuta y escribe en MDTopX.LOG el mensaje «La orden /AGREGA tiene argumentos obligatorios ausentes o no válidos. MDTopX termina sin procesar el archivo.» (con MDTopX en inglés, «The /AGREGA command has missing or invalid required arguments. MDTopX ends without processing the file.»).

## Resultado

* Si MDTopX une al menos un archivo y el usuario no cancela la unión, MDTopX guarda el resultado en el archivo de entrada, que queda sobrescrito. Trabaja con una copia si necesitas conservar el archivo de entrada original.
* Por cada archivo que MDTopX no une, escribe en MDTopX.LOG la línea «MDTopX no ha unido el archivo \<ruta\>.» (con MDTopX en inglés, «MDTopX has not merged the file \<path\>.»), seguida de la causa cuando MDTopX la conoce. Los archivos que no se unen son, por ejemplo, los que MDTopX no puede leer, los que no son del mismo tipo que el archivo de entrada y, con dibujos y modelos TIN, los que son iguales al archivo de entrada. MDTopX continúa con el archivo siguiente.
* Con dibujos, modelos TIN y proyectos, si MDTopX empieza a unir un archivo y la unión falla con un error que no es una cancelación, el modelo del archivo de entrada puede conservar en memoria parte de los cambios de la unión fallida. En ese caso MDTopX escribe en MDTopX.LOG que no ha unido el archivo, no procesa los archivos siguientes y no guarda el archivo de entrada.
* Si MDTopX no une ningún archivo, no guarda el archivo de entrada y escribe en MDTopX.LOG la línea «Error: MDTopX no ha unido ningún archivo y no guarda el archivo de entrada.» (con MDTopX en inglés, «Error: MDTopX has not merged any file and does not save the input file.»).

Para configurar el modo de suma de los modelos digitales TIN y DEM, añade a MDTopX.ini la sección **\[Preferencias]** y el campo siguiente. Los dibujos, los proyectos y los viales no usan este campo. Si el idioma de la interfaz de MDTopX es el inglés, el nombre de la sección es **\[Preferences]**:

* **ModoSuma**: Indica qué hacer con los puntos cuando los modelos se solapan: 0 (no insertar puntos nuevos), 1 (borrar los puntos originales), 2 (juntar todos los puntos), 3 (insertar puntos nuevos con cota proyectada), 4 (calcular cota media en puntos nuevos), 5 (calcular cota media en todos los puntos), 6 (calcular cota según distancia al MDT en puntos nuevos) o 7 (calcular cota según distancia al MDT en todos los puntos). Si el archivo no incluye el campo, MDTopX utiliza el valor que tiene guardado en sus preferencias; en una instalación sin preferencias guardadas, ese valor es 2.

```ini
[Preferencias]
ModoSuma=7
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
