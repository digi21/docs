# Curvado
<!-- id: linea-de-comando-curvado -->

[Curvado](/mdtopx/como/como-curvado.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /CUR [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, a partir del cual se calculará el curvado.

El archivo de salida será el nombre con el que se salve el curvado. El programa salvará en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation).

Además de esta secuencia y para configurar el modo de curvado, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Curvado]** y a continuación los campos siguientes:

* **Escala**: Denominador de la escala del curvado. Valor predeterminado: 1000.
* **Finas**: Equidistancia en metros de las curvas de nivel normales. Valor predeterminado: 1.
* **Maestras**: Equidistancia en metros de las curvas de nivel maestras. Valor predeterminado: 5.
* **TipoSuavizado**: 0 (sin suavizar), 1 (suavizado con B-spline) ó 2 (suavizado con spline cúbico). Valor predeterminado: 2.
* **FactorSuavizado**: Factor de suavizado, un número entero de 1 a 10, que se utiliza cuando **TipoSuavizado** vale 1 ó 2. Valor predeterminado: 10.
* **ComprobarCortes**: 0 (no comprobar) ó 1 (comprobar los cortes entre curvas al suavizarlas). Se utiliza cuando **TipoSuavizado** no vale 0. Valor predeterminado: 1.
* **SuavizaRupturas**: 0 (no suavizar ni generalizar las curvas en los cortes con líneas de ruptura) ó 1 (suavizar y generalizar). Valor predeterminado: 1.
* **TolLineal**: Tolerancia lineal de generalización de las curvas, en metros. Valor predeterminado: 0,04. El cuadro de diálogo de curvado recalcula este valor a partir de **Escala**; al leer MDTopX.ini no se recalcula.
* **TolSuperficial**: Tolerancia superficial de generalización de las curvas, en metros. Valor predeterminado: 0,2. El cuadro de diálogo de curvado recalcula este valor a partir de **Escala**; al leer MDTopX.ini no se recalcula.
* **CodigoFinas**: Código en el que se registrarán las curvas de nivel normales. Valor predeterminado: FINAS.
* **CodigoMaestras**: Código en el que se registrarán las curvas de nivel maestras. Valor predeterminado: MAESTR.
* **CodigoFinasDep**: Código en el que se registrarán las curvas de nivel normales de depresión. Valor predeterminado: FINASD.
* **CodigoMaestrasDep**: Código en el que se registrarán las curvas de nivel maestras de depresión. Valor predeterminado: MAESTD.
* **CodigoTextos**: Código en el que se almacenarán los textos de rotulación. Valor predeterminado: TEXTOS.
* **TextoCurvas**: 0 (sin rotulación) ó 1 (con rotulación de las curvas maestras). Valor predeterminado: 1.
* **AlturaTexto**: Altura de texto en metros. Se utiliza cuando **TextoCurvas** vale 1. Valor predeterminado: 2.
* **SeparaTextos**: Separación en metros de los textos de rotulación a lo largo de la curva de nivel. Se utiliza cuando **TextoCurvas** vale 1. Valor predeterminado: 100.
* **Decimales**: Número de dígitos decimales en los textos de rotulación. Se utiliza cuando **TextoCurvas** vale 1. Valor predeterminado: 2.
* **CortarCurvas**: 0 (no cortar) ó 1 (cortar las curvas de nivel en los textos de rotulación). Se utiliza cuando **TextoCurvas** vale 1. Valor predeterminado: 1.
* **HayLimite**: 0 (sin límite) ó 1 (con límite). Valor predeterminado: 0.
* **Limite**: Nombre del archivo con límite. El archivo debe contener al menos una línea cerrada.
* **UsarRangoCota**: 0 (curvar todo el rango de cotas) ó 1 (curvar solo entre **CotaMin** y **CotaMax**). Valor predeterminado: 0.
* **CotaMin**: Cota mínima en metros de las curvas de nivel, si **UsarRangoCota** vale 1. Valor predeterminado: 0.
* **CotaMax**: Cota máxima en metros de las curvas de nivel, si **UsarRangoCota** vale 1. Valor predeterminado: 0.
* **UsarCurvasRegistradas**: 0 (no respetar) ó 1 (respetar las curvas de nivel que el modelo digital tiene registradas como líneas de ruptura con los códigos **CodigoFinasRegistradas** y **CodigoMaestrasRegistras**). Valor predeterminado: 1.
* **CodigoFinasRegistradas**: Código de las curvas de nivel normales registradas en el modelo digital. Valor predeterminado: FINAS.
* **CodigoMaestrasRegistras**: Código de las curvas de nivel maestras registradas en el modelo digital. El nombre del campo se escribe así, sin la sílaba «da» de «Registradas». Valor predeterminado: MAESTR.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Curvado]
Escala = 500
TipoSuavizado = 2
FactorSuavizado = 10
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
HayLimite = 1
Limite = Limite.bin
TextoCurvas = 1
AlturaTexto = 1.5
CodigoTextos = TXC
SeparaTextos = 50
Decimales = 0
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
