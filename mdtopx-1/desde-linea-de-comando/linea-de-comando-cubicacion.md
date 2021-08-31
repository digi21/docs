---
description: Cubicación desde línea de comando
---

# Cubicación

[Cubicación](../como.../como-cubicacion.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /CUB [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, con el que se calculará la cubicación.

El archivo de salida será el nombre con el que se salve la cubicación en formato de modelo digital.

Si se activa la opción de perfiles, éstos se salvarán con el nombre " Perfiles de " más el nombre del archivo de salida y formato según la extensión: BIN \(DIGI\), DXF \(AutoCad\) o DGN \(MicroStation\).

Además de esta secuencia y para configurar el modo de calcular la cubicación, en el archivo MDTop.INI debería haber una línea obligatoria con el texto **\[Cubicacion\]** y a continuación los campos siguientes:

* **FicMDT**: Nombre del segundo modelo digital con el que se va a calcular la cubicación
* **Limite**: Nombre del archivo de dibujo que contiene el límite de cubicación
* **TipoCalculo**: 0 \(por intersección de triángulos\) ó 1 \(por rejilla\)
* **Paso**: Paso en metros de la rejilla, si se utiliza este método de cálculo
* **Tolerancia**: Tolerancia de la proyección en metros
* **Perfiles**: 0 \(sin perfiles de la cubicación\) ó 1 \(con perfiles de la cubicación\)
* **HayInforme**: 0 \(sin informe de la cubicación\) ó 1 \(con perfiles de la cubicación\)
* **Desbroce**: Distancia vertical en metros de la capa vegetal que se descontará de la cubicación
* **FicInforme**: Nombre del fichero ASCII con el informe de la cubicación
* **Perfiles\_Traza**: Nombre del archivo de dibujo que contiene las entidades de las que se calcularán los perfiles de la cubicación
* **Perfiles\_CodigoRasante**: Código de las entidades que forman el perfil del primer MDT
* **Perfiles\_CodigoTerreno**: Código de las entidades que forman el perfil del segundo MDT
* **Perfiles\_EscalaHorizontal**: Denominador de la escala horizontal de los perfiles
* **Perfiles\_EscalaVertical**: Denominador de la escala vertical de los perfiles
* **Perfiles\_HayGuitarra**: 0 \(sin guitarra\) ó 1 \(con guitarra\)
* **Perfiles\_Guitarra\_Alineaciones**: Opción desactivada
* **Perfiles\_Guitarra\_Altura**: Altura en metros de los textos de la guitarra
* **Perfiles\_Guitarra\_AlturaTitulo**: Altura en metros de los títulos de los perfiles
* **Perfiles\_Guitarra\_CotaRasante**: 0 ó 1
* **Perfiles\_Guitarra\_CotaTerreno**: 0 ó 1
* **Perfiles\_Guitarra\_CotaRojaDesmonte**: 0 ó 1
* **Perfiles\_Guitarra\_CotaRojaTerraplen**: 0 ó 1
* **Perfiles\_Guitarra\_Dist0**: Distancia al origen en metros
* **Perfiles\_Guitarra\_DistOrigen**: 0 ó 1
* **Perfiles\_Guitarra\_DistParcial**: 0 ó 1
* **Perfiles\_Guitarra\_Kms**: Opción desactivada
* **Perfiles\_Guitarra\_Perfiles**: Opción desactivada
* **Perfiles\_Guitarra\_TipoPlanoComp**: 0 \(cota absoluta del plano de comparación\), 1 \(cota relativa a cada perfil\) ó 2 \(cota relativa a todos los perfiles\)
* **Perfiles\_Guitarra\_ValorPlanoComp**: Cota absoluta o relativa en metros del plano de comparación
* **Perfiles\_Guitarra\_Puntos**: Opción desactivada
* **Perfiles\_Guitarra\_CodGuitar**: Códigos de las líneas de la guitarra
* **Perfiles\_Guitarra\_CodLineasInternas**: Códigos de las líneas internas de la guitarra
* **Perfiles\_Guitarra\_SoloIntervalo**: 0 \(información en todos los puntos del perfil\) ó 1 \(información sólo cada cierto intervalo\)
* **Perfiles\_Guitarra\_Intervalo**: Distancia en metros entre los puntos donde se registrará información
* **Perfiles\_Presenta\_NumeroPerfiles**: Cantidad de perfiles longitudinales por fila/columna
* **Perfiles\_Presenta\_OrdenaFilas**: 0 \(orden por filas\) ó 1 \(orden por columnas\)
* **Perfiles\_Presenta\_SeparaPerfilX**: Separación en metros en el eje de abscisas entre perfiles
* **Perfiles\_Presenta\_SeparaPerfilY**: Separación en metros en el eje de ordenadas
* **Perfiles\_Tipo\_Cortes**: 0 \(no usar cortes con triángulos\), 1 \(usar sólo los cortes con líneas de rupturas\) ó 2 \(usar todos los cortes con triángulos\)
* **Perfiles\_Tipo\_Interpola**: 0 \(interpolar la cota de los puntos con los cortes\) ó 1 \(proyectar individualmente\)

```text
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
 Perfiles_Guitarra_Alineaciones = 0
 Perfiles_Guitarra_Altura = 2
 Perfiles_Guitarra_AlturaTitulo = 5
 Perfiles_Guitarra_CotaRasante = 1
 Perfiles_Guitarra_CotaTerreno = 1
 Perfiles_Guitarra_CotaRojaDesmonte = 1
 Perfiles_Guitarra_CotaRojaTerraplen = 1
 Perfiles_Guitarra_Dist0 = 0
 Perfiles_Guitarra_DistOrigen = 1
 Perfiles_Guitarra_DistParcial = 1
 Perfiles_Guitarra_Kms = 0
 Perfiles_Guitarra_Perfiles = 0
 Perfiles_Guitarra_TipoPlanoComp = 0
 Perfiles_Guitarra_ValorPlanoComp = 900
 Perfiles_Guitarra_Puntos = 0
 Perfiles_Guitarra_CodGuitar = GUITAR
 Perfiles_Guitarra_CodLineasInternas = N0
 Perfiles_Guitarra_SoloIntervalo = 1
 Perfiles_Guitarra_Intervalo = 10
 Perfiles_Presenta_NumeroPerfiles = 4
 Perfiles_Presenta_OrdenaFilas = 1
 Perfiles_Presenta_SeparaPerfilX = 2
 Perfiles_Presenta_SeparaPerfilY = 2
 Perfiles_Tipo_Cortes = 2
 Perfiles_Tipo_Interpola = 0
```

{% hint style="info" %}
Es indiferente que los nombres de los campos están en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

