---
description: Perfiles desde línea de comando
---

# Perfiles

[Perfiles](../como.../untitled-305.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /PER [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectarán los perfiles.

El archivo de salida será el nombre con el que se salve los perfiles longitudinales. El programa salvará en el formato que indique la extensión: BIN \(DIGI\), DXF \(AutoCad\) o DGN \(MicroStation\).

Si se activa la opción de perfiles longitudinales, Éstos se salvarán con el nombre "Transversales de " más el nombre del archivo de salida y el mismo formato. La traza proyectada se salvará con el nombre "Proyección de " más el nombre del archivo de salida y el mismo formato.

Si se activa la opción de Cubicar la traza, la triangulación de ésta se salvará con el nombre de "Traza de " más el nombre del archivo de salida y formato de modelo digital y la cubicación con el nombre "Cubicación de " más el nombre del archivo de salida y formato de modelo digital.

Además de esta secuencia y para configurar el modo de proyección de los perfiles, en el archivo MDTop.INI debería haber una línea obligatoria con el texto \[Perfiles\] y a continuación los campos siguientes:

* Traza : Nombre del archivo de dibujo que contiene las entidades de las que se calcularán los perfiles
* CodigoRasante: Código de las entidades que forman el perfil de la rasante
* CodigoTerreno: Código de las entidades que forman el perfil del terreno
* EscalaHorizontal: Denominador de la escala horizontal de los perfiles
* EscalaVertical: Denominador de la escala vertical de los perfiles
* HayGuitarra: 0 \(sin guitarra\) o 1 \(con guitarra\)
* HayRasante: 0 \(sin perfil de la rasante\) o 1 \(con perfil de la rasante\)
* HayLongitudinal: 0 \(sin perfiles longitudinales\) o 1 \(con perfiles longitudinales\)
* HayTransversales: 0 \(sin perfiles transversales\) o 1 \(con perfiles transversales\)
* Guitarra\_Alineaciones : Opción desactivada
* Guitarra\_Altura: Altura en metros de los textos de la guitarra
* Guitarra\_AlturaTitulo: Altura en metros de los títulos de los perfiles longitudinales
* Guitarra\_CotaRasante: 0 o 1
* Guitarra\_CotaTerreno: 0 o 1
* Guitarra\_CotaRojaDesmonte: 0 o 1
* Guitarra\_CotaRojaTerraplen: 0 o 1
* Guitarra\_Dist0: Distancia al origen en metros
* Guitarra\_DistOrigen: 0 o 1
* Guitarra\_DistParcial: 0 o 1
* Guitarra\_Kms: Opción desactivada
* Guitarra\_Perfiles: Opción desactivada
* Guitarra\_TipoPlanoComp: 0 \(cota absoluta del plano de comparación\), 1 \(cota relativa a cada perfil\) o 2 \(cota relativa a todos los perfiles\).
* Guitarra\_ValorPlanoComp: Cota absoluta o relativa en metros del plano de comparación
* Guitarra\_Puntos: Opción desactivada
* Guitarra\_CodGuitar: Códigos de las líneas de la guitarra
* Guitarra\_CodLineasInternas: Códigos de las líneas internas de la guitarra
* Guitarra\_SoloIntervalo: 0 \(información en todos los puntos del perfil\) o 1 \(información sólo cada cierto intervalo \)
* Guitarra\_Intervalo: Distancia en metros entre los puntos donde se registrará información
* Presenta\_NumeroPerfiles: Cantidad de perfiles longitudinales por fila/columna
* Presenta\_OrdenaFilas: 0 \(orden por filas\) o 1 \(orden por columnas\)
* Presenta\_SeparaPerfilX: Separación en metros en el eje de abscisas entre perfiles
* Presenta\_SeparaPerfilY: Separación en metros en el eje de ordenadas
* Tipo\_Cortes: 0 \(no usar cortes con triángulos\), 1 \(usar sólo los cortes con líneas de rupturas\) o 2 \(usar todos los cortes con triángulos\)
* Tipo\_Interpola: 0 \(interpolar la cota de los puntos con los cortes\) o 1 \(proyectar individualmente\)
* Transversal\_AnchoIzq: Ancho en metros a la izquierda del eje del perfil transversal
* Transversal\_AnchoDer: Ancho en metros a la derecha del eje del perfil transversal
* Transversal\_CubicaTraza: 0 \(no cubicar\) o 1 \(cubicar\)
* Transversal\_Distancia: Distancia en metros en perfiles transversales
* Transversal\_EscalaHor: Denominador de la escala horizontal de los perfiles transversales
* Transversal\_EscalaVer: Denominador de la escala vertical de los perfiles transversales
* Transversal\_HayAscii: 0 \(sin fichero ASCII\) o 1 \(con fichero ASCII\)
* Transversal\_HayInforme: 0 \(sin informe\) o 1 \(con informe\)
* Transversal\_PeralteDer: Peralte en tanto por ciento a la derecha del eje del perfil transversal
* Transversal\_PeralteIzq: Peralte en tanto por ciento a la izquierda del eje del perfil transversal
* Transversal\_TaludX: Desplazamiento en el eje de abscisas del talud
* Transversal\_TaludY: Desplazamiento en el eje de ordenadas del talud
* Transversal\_CodRasante: Código de la entidades que forman el perfil transversal de la rasante
* Transversal\_CodTerreno: Código de la entidades que forman el perfil transversal del terreno
* Transversal\_FicAscii: Nombre del fichero ASCII generado
* Transversal\_TipoFicAscii: Formato del fichero ASCII de salida con los perfiles transversales: 0 \(TopCal\), 1 \(Clip\) o 2 \(Genius\).
* Transversal\_FicInforme: Nombre del informe generado
* Transversal\_Presenta\_NumeroPerfiles: Número de perfiles transversales por fila/columna
* Transversal\_Presenta\_OrdenaFilas: 0 \(orden por filas\) o 1 \(orden por columnas\)
* Transversal\_Presenta\_SeparaPerfilX: Separación en metros entre perfiles transversales en el eje de abscisas
* Transversal\_Presenta\_SeparaPerfilY: Separación en metros entre perfiles transversales en el eje ordenadas
* Transversal\_Tipo\_Cortes: 0 \(no usar cortes con triángulos\), 1 \(usar sólo los cortes con líneas de rupturas\) o 2 \(usar todos los cortes con triángulos\)
* Transversal\_Tipo\_Interpola: 0 \(interpolar la cota de los puntos con los cortes\) o 1 \(proyectar individualmente\)
* Transversal\_Guitarra\_CodGuitar : Código de las entidades de la guitarra de los perfil transversales
* Transversal\_Guitarra\_CodTextos: Código de los textos de los perfiles transversales
* Transversal\_Guitarra\_Altura: Altura en metros de los textos de la guitarra de los perfiles transversales
* Transversal\_Guitarra\_AlturaTitulo: Altura en metros de los títulos de los perfiles transversales
* Transversal\_Guitarra\_PrimerPerfil: Número de orden del primer perfil transversal
* Transversal\_Guitarra\_TipoPlanoComp: 0 \(cota absoluta del plano de comparación\), 1 \(cota relativa a cada perfil\) o 2 \(cota relativa a todos los perfiles\)
* Transversal\_Guitarra\_ValorPlanoComp: Cota absoluta o relativa en metros del plano de comparación

{% hint style="info" %}
Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

