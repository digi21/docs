# Mapa de pendientes
<!-- id: linea-de-comando-mapa-de-pendientes -->

[Mapa de pendientes](/mdtopx/como/como-mapa-de-pendientes.md)

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /PEN [archivo de salida]
```

El archivo de entrada es un archivo de modelo digital del terreno (MDT) a partir del cual MDTopX calcula el mapa de pendientes. Puede ser un archivo de triangulación (extensión MDT) o un archivo DEM, que es un modelo de rejilla (extensión DEM).

El archivo de salida es la imagen del mapa de pendientes. MDTopX guarda la imagen en formato TIF, BMP o JPEG, según la extensión del archivo de salida. MDTopX guarda además un archivo ORT con el mismo nombre, que contiene las coordenadas de la esquina superior izquierda de la imagen y el tamaño del píxel en metros.

Licencia: la herramienta requiere la licencia de MDTopX; sin ella, MDTopX termina sin ejecutar la orden. Cuando el archivo de entrada es un DEM, MDTopX necesita además el módulo VirtuaLand para guardar la imagen. Sin ese módulo, MDTopX calcula el mapa de pendientes, pero no crea el archivo de salida.

Para configurar el mapa, añade a MDTopX.ini la sección **\[Pendientes]** con las claves siguientes. Si una clave no existe o está vacía, MDTopX usa el valor guardado en la configuración del usuario (el último que se usó en el cuadro de diálogo de la interfaz de MDTopX) o, si no hay ninguno guardado, el valor predeterminado indicado:

* **Size**: tamaño en metros del píxel de la imagen de salida. Valor predeterminado: 1.
* **CheckLimite**: 0 (sin límite) o 1 (con límite). Valor predeterminado: 0.
* **Limite**: nombre del archivo con el límite de la zona. MDTopX lo lee solo si CheckLimite vale 1. Puede ser un archivo BIN (DIGI), DXF (AutoCad) o DGN (MicroStation); MDTopX usa la primera línea cerrada que encuentra en el archivo y termina con un error si no hay ninguna. Valor predeterminado: vacío.
* **CheckSombreado**: 0 (sin sombreado) o 1 (combina el mapa con un sombreado oblicuo del modelo, calculado en color negro). Valor predeterminado: 0.
* **Degradacion**: 0 (colores puros) o 1 (promedia los colores de los intervalos contiguos para que la transición sea gradual). Valor predeterminado: 1.
* **GrabarLimites**: 0 (no guarda los límites de los intervalos) o 1 (guarda los límites entre intervalos como vectores en el archivo NombreVector). Solo tiene efecto cuando el archivo de entrada es un MDT; con un DEM, MDTopX no guarda los límites. Valor predeterminado: 0.
* **NombreVector**: nombre del archivo donde MDTopX guarda los límites entre intervalos. El formato depende de la extensión: DXF (AutoCad), DGN (MicroStation) o BIN (DIGI) para cualquier otra extensión. Valor predeterminado: Limites vectoriales.bin.
* **Gama\[n]**: nombre de la gama de colores, siendo n un número correlativo que empieza en 1. MDTopX lee los nombres hasta el primer número que falte y usa la última gama de la sección. Si no hay ninguna clave **Gama\[n]**, MDTopX usa la gama seleccionada en la configuración del usuario. Define al menos una gama en MDTopX.ini si nunca has usado esta herramienta en la interfaz. Si el nombre ya existe en la configuración del usuario, MDTopX añade los intervalos del archivo a esa gama.
* **Gama\[n]Intervalo\[m]**: intervalo de la gama n, siendo m un número correlativo que empieza en 1. El valor son cuatro números separados por comas: la pendiente en grados sexagesimales y los componentes rojo, verde y azul del color (de 0 a 255).
* **DataRayo\_Angulo**: ángulo de inclinación del rayo del sombreado, en grados centesimales. Valor predeterminado: 50.
* **DataRayo\_Acimut**: acimut de la dirección del rayo, en grados centesimales. Valor predeterminado: 350.
* **DataRayo\_Intensidad**: factor de intensidad de la iluminación. Valor predeterminado: 1.
* **DataRayo\_Exageracion**: factor de exageración vertical del relieve. Valor predeterminado: 1.
* **DataRayo\_TipoRayo**: 0 (blanco o color) o 1 (blanco, color o negro). Valor predeterminado: 0.

Las claves **DataRayo\_...** solo se usan si CheckSombreado vale 1.

```ini
[Pendientes]
Size = 2
CheckLimite = 0
CheckSombreado = 1
Degradacion = 1
GrabarLimites = 0
Gama1 = Pendientes
Gama1Intervalo1 = 0,0,255,0
Gama1Intervalo2 = 15,255,255,0
Gama1Intervalo3 = 30,255,0,0
DataRayo_Angulo = 50
DataRayo_Acimut = 350
DataRayo_Intensidad = 1
DataRayo_Exageracion = 1
DataRayo_TipoRayo = 0
```

MDTopX no distingue entre mayúsculas y minúsculas en los nombres de sección y de clave.

Vea también:

* [Introducción a la línea de comandos](./)
* [Mapa de orientaciones](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-orientaciones.md)
* [Sombreado](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)
