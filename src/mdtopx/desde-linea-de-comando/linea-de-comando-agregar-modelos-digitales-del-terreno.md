# Agregar modelos digitales del terreno
<!-- id: linea-de-comando-agregar-modelos-digitales-del-terreno -->

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

El archivo de entrada deberá ser un archivo de modelo digital, el cual se procederá a modificar añadiendo el resto de archivos.

Además de esta secuencia y para configurar el modo de suma de los modelos, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Preferencias]** y a continuación el campo siguiente. Si el idioma de la interfaz de MDTopX es el inglés, el nombre de la sección es **\[Preferences]**:

* **ModoSuma**: Indica qué hacer con los puntos cuando los modelos se solapan: 0 (no insertar puntos nuevos), 1 (borrar los puntos originales), 2 (juntar todos los puntos), 3 (insertar puntos nuevos con cota proyectada), 4 (calcular cota media en puntos nuevos), 5 (calcular cota media en todos los puntos), 6 (calcular cota según distancia al MDT en puntos nuevos) o 7 (calcular cota según distancia al MDT en todos los puntos). Si el archivo no incluye el campo, MDTopX utiliza el valor que tiene guardado en sus preferencias; en una instalación sin preferencias guardadas, ese valor es 2.

```ini
[Preferencias]
ModoSuma=7
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
