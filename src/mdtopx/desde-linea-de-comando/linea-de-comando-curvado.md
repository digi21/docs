# Curvado

[Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /CUR [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, a partir del cual se calculará el curvado.

El archivo de salida será el nombre con el que se salve el curvado. El programa salvará en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation).

Además de esta secuencia y para configurar el modo de curvado, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Curvado]** y a continuación los campos siguientes:

* **AlturaTexto**: Altura de texto en metros
* **Suavizado**: 0 (sin suavizar), 1 (poco suavizado) ó 2 (muy suavizado)
* **TextoCurvas**: 0 (sin rotulación) ó 1 (con rotulación)
* **CodigoFinas**: Código en el que se registrarán las curvas de nivel normales
* **CodigoMaestras**: Código en el que se registrarán las curvas de nivel maestras
* **CodigoTextos**: Código en el que se almacenaran los textos de rotulación
* **Escala**: Denominador de la escala del curvado
* **Finas**: Equidistancia de las curvas de nivel normales
* **Maestras**: Equidistancia de las curvas de nivel maestras
* **SeparaTextos**: Separación en metros de los textos de rotulación a lo largo de la curva de nivel
* **HayLimite**: 0 (sin límite) ó 1 (con límite)
* **Decimales**: Número de dígitos decimales en los textos de rotulación
* **Límite**: Nombre del archivo con límite

```ini
[Curvado]
Escala = 500
Suavizado = 2
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
HayLimite = 1
Limite = Limite.bin
TextosCurvas = 1
AlturaTexto = 1.5
CodigoTextos = TXC
SeparaTextos = 50
Decimales = 0
```

Es indiferente que los nombres de los campos están en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
