# Orientar nube contra nube
<!-- id: linea-de-comando-orientar-nube-contra-nube -->

La herramienta `/ORIENTARNUBE` calcula cuánto hay que girar y desplazar una nube de puntos desorientada (por ejemplo, un escaneo SLAM, *Simultaneous Localization and Mapping*) para que coincida con la nube de puntos de un modelo teórico del mismo recinto, y aplica ese giro y ese desplazamiento a la nube.

Para ejecutar esta herramienta desde la línea de comando, escribe la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /ORIENTARNUBE
```

Esta herramienta no acepta un archivo de salida como argumento de la línea de comando. Escribe la ruta completa del archivo de entrada. MDTopX busca MDTopX.ini en la carpeta del archivo de entrada.

## Archivos

* **Archivo de entrada**: nube de puntos que quieres orientar. MDTopX aplica la transformación a esta nube y la guarda en este mismo archivo, por lo que sobrescribe el original. Trabaja con una copia si necesitas conservar la nube sin orientar. Si el cálculo falla, MDTopX no modifica el archivo.
* **Nube de puntos destino**: nube del modelo teórico del recinto, con el suelo y las paredes y sin techos. Se indica en la clave **NombreDibujoDestino** de MDTopX.ini. MDTopX no modifica este archivo.
* **Archivo de transformaciones**: archivo de texto con la transformación calculada. MDTopX lo crea si la clave **GenerarSalidaConTransformacion** vale 1, con el nombre indicado como valor de la clave **NombreSalidaConTransformacion**. Si escribes un nombre sin carpeta, MDTopX lo crea en el directorio de trabajo del proceso.

MDTopX anota el desarrollo del cálculo en el archivo MDTopX.LOG, que crea en la carpeta del archivo MDTopX.ini.

## Licencia

Esta herramienta no exige la licencia de MDTopX: MDTopX no comprueba que haya una llave de protección o una licencia de software de MDTopX antes de ejecutarla. /ACOPIOS, /FILTRADO y /ORIENTARNUBE no comprueban la licencia de MDTopX al iniciarse.

## Qué calcula MDTopX

1. Calcula la cota del suelo de cada nube a partir de sus puntos más bajos.
2. Selecciona de cada nube los puntos de tres franjas horizontales situadas a 1, 2 y 3 metros sobre el suelo, cada una de 0.4 metros de espesor, y calcula el contorno de los puntos de cada franja.
3. Obtiene la dirección dominante de los contornos de cada nube y calcula, para cada una, el giro que alinea esa dirección con los ejes X e Y.
4. Convierte los contornos, ya alineados con los ejes, en imágenes con píxeles de lado **SizeCelda** y busca el desplazamiento horizontal que más hace coincidir las dos imágenes. Repite la búsqueda con la nube de entrada girada 0, 90, 180 y 270 grados adicionales y se queda con el giro que produce más coincidencia.
5. Repite la búsqueda del desplazamiento horizontal con píxeles cuyo lado mide SizeCelda / 2.
6. Ajusta la cota Z: proyecta los puntos del suelo de la nube destino sobre la superficie triangulada de los puntos del suelo de la nube de entrada y desplaza la nube de entrada en Z para anular la moda de las diferencias de cota.
7. Aplica a la nube de entrada tres operaciones, en este orden: el giro que la alinea con los ejes más el giro adicional elegido en el paso 4 (**Giro1**), los desplazamientos de los pasos 4, 5 y 6 (**Traslacion**) y un giro final que lleva la nube desde los ejes hasta la dirección real de la nube destino (**Giro2**).

## Configuración en MDTopX.ini

Para configurar el cálculo, MDTopX.ini debe tener una línea con el texto **\[UnirNubesDesorientadas]** y, a continuación, estas claves. Los nombres de sección y de clave no distinguen mayúsculas de minúsculas. Si omites una clave o le das un valor vacío, MDTopX usa el valor guardado en la configuración del usuario de MDTopX y, si no hay ninguno, el valor predeterminado. Cada valor admite como máximo 255 caracteres.

* **NombreDibujoDestino**: ruta del archivo con la nube de puntos destino. Es obligatoria. Si el archivo no existe o no contiene puntos, MDTopX no orienta la nube de entrada. Si escribes una ruta sin carpeta, MDTopX la busca en el directorio de trabajo del proceso. Predeterminado: vacío.
* **DistanciaMin**: longitud mínima, en metros, que debe tener un tramo de contorno, una vez ajustado a una recta, para que MDTopX lo conserve. Predeterminado: 0.5.
* **DistanciaMax**: distancia máxima, en metros, entre dos tramos de contorno para que MDTopX los una. MDTopX usa también este valor como paso de la malla con la que reduce los puntos del suelo de la nube destino. Predeterminado: 0.5.
* **SizeCelda**: lado, en metros, de los píxeles de las imágenes de los contornos. Predeterminado: 0.1.
* **GenerarSalidaConTransformacion**: 0 (no crear el archivo de transformaciones) o 1 (crearlo). Predeterminado: 1.
* **NombreSalidaConTransformacion**: nombre del archivo de transformaciones. Predeterminado: `Transformaciones.txt`.
* **DibujoDestinoEsTeorico**: MDTopX lee esta clave pero la ignora: con esta herramienta siempre trata la nube destino como un modelo teórico con suelo y paredes.
* **DibujoDestinoEstaClasificado**: MDTopX lee esta clave pero no la usa.

Al leer la configuración del usuario (no MDTopX.ini), MDTopX asigna el valor guardado de **DistanciaMin** a **DistanciaMax** y el valor guardado de **DistanciaMax** a **DistanciaMin**. Escribe las dos claves en MDTopX.ini para que el cálculo no dependa de esa configuración.

```ini
[UnirNubesDesorientadas]
NombreDibujoDestino = C:\Nave\Teorico.las
DistanciaMin = 0.5
DistanciaMax = 0.1
SizeCelda = 0.1
GenerarSalidaConTransformacion = 1
NombreSalidaConTransformacion = C:\Nave\Transformaciones.txt
```

## Archivo de transformaciones

El archivo de transformaciones es un archivo de texto con tres secciones. **Giro1** y **Giro2** son ángulos en grados, alrededor del eje vertical, con 4 decimales. **Traslacion** contiene los desplazamientos en X, Y y Z que MDTopX aplica a la nube, en metros y con 3 decimales, separados por un espacio.

```ini
[Giro1]
19.0043
[Traslacion]
-16.600 -11.200 0.830
[Giro2]
-0.4032
```

Vea también:

* [Introducción a la línea de comandos](./)
* [Cubicar acopios](/mdtopx/desde-linea-de-comando/linea-de-comando-acopios.md)
