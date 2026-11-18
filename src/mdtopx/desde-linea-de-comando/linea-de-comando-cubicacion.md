# Cubicación
<!-- id: linea-de-comando-cubicacion -->

[Cubicación](/mdtopx/como/como-cubicacion.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /CUB [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, con el que se calculará la cubicación.

El archivo de salida será el nombre con el que se salve la cubicación en formato de modelo digital.

Si se activa la opción de perfiles, éstos se salvarán con el nombre " Perfiles de " más el nombre del archivo de salida y formato según la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation).

Además de esta secuencia y para configurar el modo de calcular la cubicación, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Cubicacion]** y a continuación los campos siguientes:

* **FicMDT**: Nombre del segundo modelo digital con el que se va a calcular la cubicación
* **Limite**: Nombre del archivo de dibujo que contiene el límite de cubicación
* **HayLimites**: 0 (sin archivo de límite) ó 1 (con el archivo de límite indicado en **Limite**). Valor predeterminado: 1.
* **TipoCalculo**: 0 (por intersección de triángulos) ó 1 (por rejilla). Valor predeterminado: 0.
* **Paso**: Paso en metros de la rejilla, si se utiliza este método de cálculo. Valor predeterminado: 1.
* **Tolerancia**: Tolerancia de la proyección en metros. Valor predeterminado: 0.
* **Perfiles**: 0 (sin perfiles de la cubicación) ó 1 (con perfiles de la cubicación). Valor predeterminado: 0.
* **HayInforme**: 0 (sin informe de la cubicación) ó 1 (con informe de la cubicación). Valor predeterminado: 1.
* **SumarInfo**: 0 ó 1. El valor 1 indica que la cubicación forma parte de un informe de varias cubicaciones. Valor predeterminado: 0.
* **Desbroce**: Distancia vertical en metros de la capa vegetal que se descontará de la cubicación. Valor predeterminado: 0.
* **FicInforme**: Nombre del fichero ASCII con el informe de la cubicación. Valor predeterminado: Informe.asc.

Los campos siguientes, con prefijo **Perfiles\_**, configuran los perfiles de la cubicación:

* **Perfiles\_Traza**: Nombre del archivo de dibujo que contiene las entidades de las que se calcularán los perfiles de la cubicación
* **Perfiles\_TipoPerfiles**: 0 (perfiles a lo largo de las entidades del archivo **Perfiles\_Traza**), 1 (perfiles horizontales) ó 2 (perfiles verticales). Valor predeterminado: 0.
* **Perfiles\_Incremento**: Separación en metros entre los perfiles horizontales o verticales. Valor predeterminado: 1.
* **Perfiles\_CubicarPerfiles**: 0 (sin cubicación de los perfiles) ó 1 (con cubicación de los perfiles). Valor predeterminado: 0.
* **Perfiles\_InfoCubicacion**: Nombre del fichero ASCII con la cubicación de los perfiles, si **Perfiles\_CubicarPerfiles** vale 1. Valor predeterminado: Cubicacion Perfiles.asc.
* **Perfiles\_CodigoRasante**: Código de las entidades que forman el perfil del primer MDT. Valor predeterminado: RASANT.
* **Perfiles\_CodigoTerreno**: Código de las entidades que forman el perfil del segundo MDT. Valor predeterminado: TERREN.
* **Perfiles\_CodigoCapaVegetal**: Código de las entidades que forman el perfil de la capa vegetal. Valor predeterminado: CV.
* **Perfiles\_EscalaHorizontal**: Denominador de la escala horizontal de los perfiles. Valor predeterminado: 1000.
* **Perfiles\_EscalaVertical**: Denominador de la escala vertical de los perfiles. Valor predeterminado: 500.
* **Perfiles\_HayGuitarra**: 0 (sin guitarra) ó 1 (con guitarra). Valor predeterminado: 1.

MDTopX lee los campos de la guitarra, de la presentación y del tipo de proyección de los perfiles de la cubicación de esta misma sección, sin el prefijo **Perfiles\_**. Los campos con prefijo **Perfiles\_Guitarra\_**, **Perfiles\_Presenta\_** y **Perfiles\_Tipo\_** no se leen. Estos campos son los descritos para los perfiles longitudinales en la página [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md):

* **Guitarra\_**: **Guitarra\_Alineaciones**, **Guitarra\_Kms**, **Guitarra\_Perfiles**, **Guitarra\_Puntos**, **Guitarra\_CotaRasante**, **Guitarra\_CotaTerreno**, **Guitarra\_CotaRojaDesmonte**, **Guitarra\_CotaRojaTerraplen**, **Guitarra\_Pendientes**, **Guitarra\_Galibo**, **Guitarra\_TipoPlanoComp**, **Guitarra\_ValorPlanoComp**, **Guitarra\_CodGuitar**, **Guitarra\_CodLineasInternas**, **Guitarra\_SoloIntervalo**, **Guitarra\_Intervalo**, **Guitarra\_IncluirLineasHor**, **Guitarra\_SeparaLineasHor**, **Guitarra\_IncluirNombre**, **Guitarra\_PosNombre**, **Guitarra\_CodNombre**, **Guitarra\_AlturaNombre**, **Guitarra\_IncluirEscalas**, **Guitarra\_PosEscalas**, **Guitarra\_CodEscalas**, **Guitarra\_AlturaEscalas**, **Guitarra\_IncluirSuperf**, **Guitarra\_PosSuperf**, **Guitarra\_CodSuperf**, **Guitarra\_AlturaSuperf**, **Guitarra\_IncluirInfo**, **Guitarra\_CodInfo**, **Guitarra\_AlturaInfo**, **Guitarra\_Dist0**, **Guitarra\_DistUltimoPunto**, **Guitarra\_DistOrigen** y **Guitarra\_DistParcial**.
* **Presenta\_**: **Presenta\_NumeroPerfiles**, **Presenta\_OrdenaFilas**, **Presenta\_SeparaPerfilX** y **Presenta\_SeparaPerfilY**.
* **Tipo\_**: **Tipo\_Cortes** y **Tipo\_Interpola**.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Cubicacion]
FicMDT = radia2.mdt
Limite = limite.bin
Perfiles = 1
HayInforme = 1
Desbroce = 0.20
Tolerancia = 0.0
FicInforme = informe.asc
Perfiles_Traza = linea.bin
Perfiles_CodigoRasante = RASANT
Perfiles_CodigoTerreno = TERREN
Perfiles_EscalaHorizontal = 1000
Perfiles_EscalaVertical = 500
Perfiles_HayGuitarra = 1
Guitarra_Alineaciones = 0
Guitarra_AlturaNombre = 5
Guitarra_AlturaEscalas = 2
Guitarra_AlturaSuperf = 2
Guitarra_AlturaInfo = 2
Guitarra_CotaRasante = 1
Guitarra_CotaTerreno = 1
Guitarra_CotaRojaDesmonte = 1
Guitarra_CotaRojaTerraplen = 1
Guitarra_Dist0 = 0
Guitarra_DistOrigen = 1
Guitarra_DistParcial = 1
Guitarra_Kms = 0
Guitarra_Perfiles = 0
Guitarra_TipoPlanoComp = 0
Guitarra_ValorPlanoComp = 900
Guitarra_Puntos = 0
Guitarra_CodGuitar = GUITAR
Guitarra_CodLineasInternas = N0
Guitarra_SoloIntervalo = 1
Guitarra_Intervalo = 10
Presenta_NumeroPerfiles = 4
Presenta_OrdenaFilas = 1
Presenta_SeparaPerfilX = 2
Presenta_SeparaPerfilY = 2
Tipo_Cortes = 2
Tipo_Interpola = 0
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
