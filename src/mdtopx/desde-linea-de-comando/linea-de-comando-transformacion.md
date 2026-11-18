# Transformación de coordenadas
<!-- id: linea-de-comando-transformacion -->

[Transformación de coordenadas](/mdtopx/otras-herramientas/transformacion-de-coordenadas.md)

Esta herramienta transforma las coordenadas de todos los puntos de un archivo. Para ejecutarla desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /TRANSFORM [archivo de salida]
```

Escribe el archivo de entrada antes de `/TRANSFORM`. El archivo de salida es opcional.

## Archivos

El archivo de entrada puede ser un archivo de dibujo, una nube de puntos o un modelo digital de triángulos (TIN, red irregular de triángulos). Con un modelo digital de rejilla o con un proyecto, MDTopX no ejecuta la transformación.

* **Sin archivo de salida**: MDTopX sobrescribe el archivo de entrada con las coordenadas transformadas, en el mismo formato.
* **Con archivo de salida y un archivo de dibujo o una nube de puntos**: MDTopX exporta el resultado al archivo de salida y no modifica el archivo de entrada. La extensión del archivo de salida determina el formato: DXF (AutoCad), DGN (MicroStation), PTS (Leica HDS), LAS, LAZ, ASC (ASCII), KML, IFC (versión 4.1, si MDTopX incluye ese exportador), SHP (Shape) o BIN (DIGI) con cualquier otra extensión.
* **Con archivo de salida y un modelo digital de triángulos**: MDTopX guarda el modelo transformado en el archivo de salida, en el formato de modelo digital de MDTopX. Si la extensión corresponde a un formato de malla que MDTopX sabe exportar, como STL, guarda el archivo en ese formato. MDTopX no modifica el archivo de entrada.

Esta herramienta exige la licencia del módulo MDTopX. Para guardar el resultado de una nube de puntos LiDAR (detección y medición por luz láser) o de un escáner terrestre, MDTopX exige además la licencia del módulo Láser. Si MDTopX no puede guardar el archivo por falta de licencia, no transforma el archivo.

## Configuración

MDTopX lee la sección **\[Helmert]** del archivo MDTopX.ini. Si una clave no está en la sección, MDTopX usa el valor guardado en la configuración del usuario, que es el último que se aceptó en el cuadro de diálogo de la herramienta [Transformación de coordenadas](/mdtopx/otras-herramientas/transformacion-de-coordenadas.md). Si nunca se guardó ese valor, MDTopX usa el valor predeterminado que se indica en cada clave.

Modo de introducción de los datos:

* **TipoDatos**: método con el que MDTopX obtiene los parámetros. Valor predeterminado: 1.
  * **0**: parámetros de transformación escritos en las claves de esta sección.
  * **1**: tensor (matriz de transformación) escrito en las claves **Tensor**.
  * **2**: parámetros guardados en un archivo.
  * **3**: rejilla de transformación entre sistemas de referencia en formato NTV2.
  * **4**: modelo del geoide EGM2008, que transforma cotas elipsoidales en cotas ortométricas.
  * **5**: MDTopX muestra el mensaje «Transformación no implementada» en un cuadro de mensaje y no transforma el archivo. El proceso queda detenido hasta que alguien cierra el cuadro.
  * **6**: la línea de comando no ejecuta la transformación a trozos del cuadro de diálogo. MDTopX trata este valor como 1.
* **Tipo**: tipo de transformación con **TipoDatos** 0 y 1. Valores admitidos: 0 (Helmert 2D, de dos dimensiones), 1 (Helmert 3D, de tres dimensiones) y 4 (afín 2D). Valor predeterminado: 0.

Parámetros de transformación (**TipoDatos** = 0). Los giros se escriben en grados centesimales (gon; 400 gon son una vuelta completa). Las claves que cada tipo de transformación usa son:

| Tipo | Claves que usa |
|---|---|
| 0 (Helmert 2D) | **DesplazamientoX**, **DesplazamientoY**, **GiroY** (ángulo de giro) y **EscalaY** (factor de escala) |
| 4 (afín 2D) | **DesplazamientoX**, **DesplazamientoY**, **GiroX**, **GiroY**, **EscalaX** y **EscalaY** |
| 1 (Helmert 3D) | **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**, **GiroX**, **GiroY**, **GiroZ**, **EscalaX**, **EscalaY** y **EscalaZ** |

* **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**: desplazamiento que MDTopX suma a cada coordenada, en las unidades del archivo. Valor predeterminado: 0.
* **GiroX**, **GiroY**, **GiroZ**: ángulos de giro en grados centesimales. Valor predeterminado: 0.
* **EscalaX**, **EscalaY**, **EscalaZ**: factores de escala. Valor predeterminado: 1.

Tensor (**TipoDatos** = 1):

* **Tensor00**, **Tensor01**, **Tensor02**, **Tensor10**, **Tensor11**, **Tensor12**, **Tensor20**, **Tensor21**, **Tensor22**: elementos de la matriz de transformación; el primer dígito es la fila y el segundo, la columna. Valor predeterminado: la matriz identidad (1 en **Tensor00**, **Tensor11** y **Tensor22**, y 0 en el resto), que no modifica las coordenadas. En las transformaciones Helmert 2D y afín, MDTopX usa solo **Tensor00**, **Tensor02**, **Tensor20** y **Tensor22**. Con el tensor, MDTopX no aplica desplazamientos.

Parámetros en archivo (**TipoDatos** = 2):

* **ModoCalculo**: 0 (transformación directa) o 1 (transformación inversa). Valor predeterminado: 0.
* MDTopX lee los parámetros del archivo que indica el valor **FicheroParametros** guardado en la configuración del usuario. El archivo es un archivo INI con una sección **\[Parametros_transformacion]**, que contiene las claves **Tipo**, **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**, **GiroX**, **GiroY**, **GiroZ**, **EscalaX**, **EscalaY** y **EscalaZ**, entre otras. MDTopX.ini no admite la clave **FicheroParametros**.

Rejilla NTV2 (**TipoDatos** = 3):

* **Fichero**: ruta del archivo de rejilla NTV2. Valor predeterminado: `SPED2ET.GSB`.
* **ModoCalculo**: 0 (sentido directo de la rejilla) o 1 (sentido inverso). Valor predeterminado: 0.
* **Huso**: número del huso UTM (Universal Transversa de Mercator) de las coordenadas. Valor predeterminado: 30.
* **Hemisferio**: 0 (norte) o 1 (sur). Valor predeterminado: 0.

Modelo del geoide (**TipoDatos** = 4):

* **Huso** y **Hemisferio**: igual que con la rejilla NTV2.
* MDTopX lee el modelo del geoide del archivo que indica el valor **FicheroParametros** guardado en la configuración del usuario. MDTopX.ini no admite la clave **FicheroParametros**.

Con un archivo de dibujo y **TipoDatos** 0 o 1, MDTopX multiplica además la altura de cada texto por **EscalaX** si ese valor no es 1 y, si **EscalaX** es 1, por **EscalaY** cuando este valor no es 1.

```ini
[Helmert]
TipoDatos = 0
Tipo = 4
DesplazamientoX = 1000
DesplazamientoY = 2000
GiroX = 0.5
GiroY = 0.5
EscalaX = 1.00002
EscalaY = 1.00002
```

Es indiferente que los nombres de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
