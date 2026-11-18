# Clasificar suelo de trazado
<!-- id: linea-de-comando-clasificar-suelo-de-trazado -->

[Clasificar suelo de trazado](/mdtopx/modulo-mms/trazado/clasificar-suelo-de-trazado.md)

La orden **/SUELOVIAL** clasifica en suelo y en no suelo los puntos de una nube de puntos registrada con un sistema MMS (*Mobile Mapping System*, registro con un vehículo) en una carretera. Realiza la misma operación que el botón **Suelo** del panel **Trazado** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[TrazaMMS]** del archivo MDTopX.ini y procesa todos los orígenes de puntos (identificadores de registro) del archivo.

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /SUELOVIAL
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ) o un proyecto de MDTopX que contiene nubes de puntos.
* **Archivo de salida**: esta orden no tiene archivo de salida, y MDTopX ignora cualquier argumento que se escriba después de **/SUELOVIAL**. MDTopX guarda la clasificación en el propio archivo de entrada. Si el archivo de entrada es un proyecto, MDTopX guarda cada nube de puntos del proyecto después de clasificarla.

MDTopX asigna la clase 2 (suelo) a los puntos de suelo y la clase 6 (objeto) a los puntos que clasifica como no suelo.

## Licencia

MDTopX termina sin ejecutar la orden si no encuentra la licencia de MDTopX. Con esa licencia, MDTopX calcula la clasificación, pero solo la guarda si el equipo tiene la licencia del [módulo MMS](/mdtopx/modulo-mms/). Sin la licencia del módulo MMS, MDTopX cierra los documentos sin guardar y la orden no modifica ningún archivo.

## Configuración en MDTopX.ini

Para configurar la clasificación, MDTopX.ini debe contener la línea **\[TrazaMMS]** seguida de las claves siguientes. Si una clave no está en MDTopX.ini o su valor está vacío, MDTopX usa el valor que tiene guardado en la configuración del usuario y, si no hay ninguno guardado, el valor predeterminado que se indica aquí. MDTopX lee como máximo 255 caracteres de cada valor.

* **EsAereo**: tipo de registro. 0 (láser terrestre, propio de un sistema MMS) o 1 (fotogrametría aérea, propia de un sistema UAV). Valor predeterminado: 0. Con 1, el cuadro de diálogo exige indicar **SzFileEje**.
* **SzFileEje**: ruta completa del archivo que contiene el eje por el que pasó el vehículo. Puede ser un archivo de dibujo (BIN, DXF, DGN o Shape) o un archivo de vial. Con un archivo de dibujo, MDTopX usa la primera línea que tiene puntos. Valor predeterminado: vacío; en ese caso, MDTopX calcula una posible trayectoria a partir de la nube de puntos.
* **VariosSensores**: 0 o 1. Escribe 1 si el sistema MMS tiene escáneres laterales además del principal. Valor predeterminado: 0. El cuadro de diálogo desactiva esta opción cuando **EsAereo** vale 1.
* **DistanciaMaxima**: distancia máxima, en metros, entre dos perfiles consecutivos del registro. Depende de la velocidad del vehículo al registrar. Valor predeterminado: 0.2.
* **Tolerancia**: discrepancia altimétrica máxima, en metros, entre puntos cercanos para considerarlos de la misma superficie. Aumenta este valor si el vial es un camino irregular. Valor predeterminado: 0.05.
* **ConservarObjetos**: 0 o 1. Con 1, MDTopX conserva la clasificación previa de los puntos que ya están clasificados como objetos. Valor predeterminado: 1.
* **UtilizarGPS**: 0 o 1. Con 1, MDTopX usa el tiempo GPS de los puntos para mejorar la clasificación. Escribe 0 si el registro se hizo con varias pasadas de escaneado. Valor predeterminado: 1.
* **EsFFCC**: MDTopX lee esta clave, pero **/SUELOVIAL** la sustituye por 0 antes de calcular. La clave no tiene efecto sobre esta orden.

```ini
[TrazaMMS]
EsAereo = 0
SzFileEje = C:\Trabajo\eje.bin
VariosSensores = 0
DistanciaMaxima = 0.2
Tolerancia = 0.05
ConservarObjetos = 1
UtilizarGPS = 1
```

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Clasificar suelo de FFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md)
* [Clasificar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md)
