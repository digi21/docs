# Perfiles
<!-- id: linea-de-comando-perfiles -->

[Perfiles](/mdtopx/como/como-perfiles.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /PER [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectarán los perfiles.

El archivo de salida será el nombre con el que se salve los perfiles longitudinales. El programa salvará en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation).

Si se activa la opción de perfiles transversales, éstos se salvarán con el nombre "Transversales de " más el nombre del archivo de salida y el mismo formato. La traza proyectada se salvará con el nombre "Proyección de " más el nombre del archivo de salida y el mismo formato.

Si se activa la opción de Cubicar la traza, la triangulación de ésta se salvará con el nombre de "Traza de " más el nombre del archivo de salida y formato de modelo digital y la cubicación con el nombre "Cubicación de " más el nombre del archivo de salida y formato de modelo digital.

Además de esta secuencia y para configurar el modo de proyección de los perfiles, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Perfiles]** y a continuación los campos siguientes:

* **Traza** : Nombre del archivo de dibujo que contiene las entidades de las que se calcularán los perfiles
* **CodigoRasante**: Código de las entidades que forman el perfil de la rasante. Valor predeterminado: RASANT.
* **CodigoTerreno**: Código de las entidades que forman el perfil del terreno. Valor predeterminado: TERREN.
* **CodigoCapaVegetal**: Código de las entidades que forman el perfil de la capa vegetal. Valor predeterminado: CV.
* **EscalaHorizontal**: Denominador de la escala horizontal de los perfiles. Valor predeterminado: 1000.
* **EscalaVertical**: Denominador de la escala vertical de los perfiles. Valor predeterminado: 500.
* **HayGuitarra**: 0 (sin guitarra) o 1 (con guitarra). Valor predeterminado: 1.
* **HayRasante**: 0 (sin perfil de la rasante) o 1 (con perfil de la rasante). Valor predeterminado: 1.
* **HayLongitudinal**: 0 (sin perfiles longitudinales) o 1 (con perfiles longitudinales). Valor predeterminado: 1.
* **HayTransversales**: 0 (sin perfiles transversales) o 1 (con perfiles transversales). Valor predeterminado: 1.

Los campos siguientes, con prefijo **Guitarra\_**, configuran la guitarra de los perfiles longitudinales y de los transversales:

* **Guitarra\_Alineaciones** : Opción desactivada
* **Guitarra\_Kms**: Opción desactivada
* **Guitarra\_Perfiles**: Opción desactivada
* **Guitarra\_Puntos**: Opción desactivada
* **Guitarra\_CotaRasante**: 0 (sin cota de la rasante) o 1 (con cota de la rasante). Valor predeterminado: 1.
* **Guitarra\_CotaTerreno**: 0 (sin cota del terreno) o 1 (con cota del terreno). Valor predeterminado: 1.
* **Guitarra\_CotaRojaDesmonte**: 0 (sin cota roja de desmonte) o 1 (con cota roja de desmonte). Valor predeterminado: 1.
* **Guitarra\_CotaRojaTerraplen**: 0 (sin cota roja de terraplén) o 1 (con cota roja de terraplén). Valor predeterminado: 1.
* **Guitarra\_Pendientes**: 0 (sin pendientes) o 1 (con pendientes). Valor predeterminado: 0.
* **Guitarra\_Galibo**: 0 (sin gálibo) o 1 (con gálibo). Valor predeterminado: 0.
* **Guitarra\_TipoPlanoComp**: 0 (cota absoluta del plano de comparación), 1 (cota relativa a cada perfil) o 2 (cota relativa a todos los perfiles). Valor predeterminado: 1.
* **Guitarra\_ValorPlanoComp**: Cota absoluta o relativa en metros del plano de comparación. Valor predeterminado: 1.
* **Guitarra\_CodGuitar**: Código de las líneas de la guitarra. Valor predeterminado: GUITAR.
* **Guitarra\_CodLineasInternas**: Código de las líneas internas de la guitarra. Valor predeterminado: INTERNAS.
* **Guitarra\_SoloIntervalo**: 0 (información en todos los puntos del perfil) o 1 (información sólo cada cierto intervalo ). Valor predeterminado: 0.
* **Guitarra\_Intervalo**: Distancia en metros entre los puntos donde se registrará información. Valor predeterminado: 10.
* **Guitarra\_IncluirLineasHor**: 0 (sin líneas horizontales dentro de la caja del perfil) o 1 (con líneas horizontales). Valor predeterminado: 1.
* **Guitarra\_SeparaLineasHor**: Separación en metros entre las líneas horizontales de la caja del perfil. Valor predeterminado: 1.
* **Guitarra\_IncluirNombre**: 0 (sin texto con el nombre del perfil) o 1 (con texto con el nombre del perfil). Valor predeterminado: 1.
* **Guitarra\_PosNombre**: Posición del texto con el nombre del perfil, como número de orden de la lista «Posición» del cuadro de diálogo de la guitarra. Valor predeterminado: 5.
* **Guitarra\_CodNombre**: Código del texto con el nombre del perfil. Valor predeterminado: TITULO.
* **Guitarra\_AlturaNombre**: Altura en metros del texto con el nombre del perfil. Valor predeterminado: 2.
* **Guitarra\_IncluirEscalas**: 0 (sin texto con las escalas) o 1 (con texto con las escalas). Valor predeterminado: 1.
* **Guitarra\_PosEscalas**: Posición del texto con las escalas, como número de orden de la lista «Posición». Valor predeterminado: 0.
* **Guitarra\_CodEscalas**: Código del texto con las escalas. Valor predeterminado: ESCALA.
* **Guitarra\_AlturaEscalas**: Altura en metros del texto con las escalas. Valor predeterminado: 1.
* **Guitarra\_IncluirSuperf**: 0 (sin texto con las superficies) o 1 (con texto con las superficies). Valor predeterminado: 1.
* **Guitarra\_PosSuperf**: Posición del texto con las superficies, como número de orden de la lista «Posición». Valor predeterminado: 6.
* **Guitarra\_CodSuperf**: Código del texto con las superficies. Valor predeterminado: SUPERF.
* **Guitarra\_AlturaSuperf**: Altura en metros del texto con las superficies. Valor predeterminado: 1.
* **Guitarra\_IncluirInfo**: 0 (sin texto de información) o 1 (con texto de información). Valor predeterminado: 1.
* **Guitarra\_CodInfo**: Código del texto de información. Valor predeterminado: INFO.
* **Guitarra\_AlturaInfo**: Altura en metros del texto de información. Valor predeterminado: 0,75.

Los campos siguientes de la guitarra solo se aplican a los perfiles longitudinales:

* **Guitarra\_Dist0**: Distancia al origen en metros. Valor predeterminado: 0.
* **Guitarra\_DistUltimoPunto**: Distancia al último punto en metros. Valor predeterminado: 0.
* **Guitarra\_DistOrigen**: 0 (sin distancia al origen) o 1 (con distancia al origen). Valor predeterminado: 1.
* **Guitarra\_DistParcial**: 0 (sin distancia parcial) o 1 (con distancia parcial). Valor predeterminado: 1.

Los campos siguientes de la guitarra solo se aplican a los perfiles transversales:

* **Guitarra\_DistAlEje**: 0 (sin distancia al eje) o 1 (con distancia al eje). Valor predeterminado: 1.
* **Guitarra\_PrimerPerfil**: Valor, en metros, del campo «Primer perfil» del cuadro de diálogo de la guitarra de los perfiles transversales. Valor predeterminado: 0.

Los campos siguientes, con prefijo **Presenta\_**, configuran la presentación gráfica de los perfiles longitudinales y de los transversales:

* **Presenta\_NumeroPerfiles**: Cantidad de perfiles por fila o por columna. Valor predeterminado: 4.
* **Presenta\_OrdenaFilas**: 0 (orden por filas) o 1 (orden por columnas). Valor predeterminado: 1.
* **Presenta\_SeparaPerfilX**: Separación en metros en el eje de abscisas entre perfiles. Valor predeterminado: 10.
* **Presenta\_SeparaPerfilY**: Separación en metros en el eje de ordenadas. Valor predeterminado: 10.

Los campos siguientes, con prefijo **Tipo\_**, configuran la proyección sobre el modelo digital de los perfiles longitudinales y de los transversales:

* **Tipo\_Cortes**: 0 (no usar cortes con triángulos), 1 (usar sólo los cortes con líneas de rupturas) o 2 (usar todos los cortes con triángulos). Valor predeterminado: 2.
* **Tipo\_Interpola**: 0 (interpolar la cota de los puntos con los cortes) o 1 (proyectar individualmente). Valor predeterminado: 1.

Los campos siguientes, con prefijo **Transversal\_**, configuran los perfiles transversales:

* **Transversal\_AnchoIzq**: Ancho en metros a la izquierda del eje del perfil transversal. Valor predeterminado: 5.
* **Transversal\_AnchoDer**: Ancho en metros a la derecha del eje del perfil transversal. Valor predeterminado: 5.
* **Transversal\_TipoPlataforma**: 0 (anchos a ambos lados del eje, definidos por **Transversal\_AnchoIzq** y **Transversal\_AnchoDer**) o 1 (plataforma definida en el archivo **Transversal\_FicPlataforma**). Valor predeterminado: 0.
* **Transversal\_FicPlataforma**: Nombre del archivo con la plataforma, si **Transversal\_TipoPlataforma** vale 1.
* **Transversal\_Distancia**: Distancia en metros entre perfiles transversales. Valor predeterminado: 10.
* **Transversal\_CalcularEnVertices**: 0 (no) o 1 (generar también perfiles transversales en los vértices de la traza). Valor predeterminado: 0.
* **Transversal\_PeralteDer**: Peralte en tanto por ciento a la derecha del eje del perfil transversal. Valor predeterminado: -2.
* **Transversal\_PeralteIzq**: Peralte en tanto por ciento a la izquierda del eje del perfil transversal. Valor predeterminado: -2.
* **Transversal\_TaludDesX**: Desplazamiento en metros en el eje de abscisas del talud de desmonte. Valor predeterminado: 1.
* **Transversal\_TaludDesY**: Desplazamiento en metros en el eje de ordenadas del talud de desmonte. Valor predeterminado: 1.
* **Transversal\_TaludTerX**: Desplazamiento en metros en el eje de abscisas del talud de terraplén. Valor predeterminado: 1.
* **Transversal\_TaludTerY**: Desplazamiento en metros en el eje de ordenadas del talud de terraplén. Valor predeterminado: 1.
* **Transversal\_CubicaTraza**: 0 (no cubicar) o 1 (cubicar). Valor predeterminado: 1.
* **Transversal\_HayAlzado**: 0 (sin fichero ASCII con los perfiles transversales) o 1 (con fichero ASCII). Valor predeterminado: 1.
* **Transversal\_FicAlzado**: Nombre del fichero ASCII generado. Valor predeterminado: Transver.asc.
* **Transversal\_TipoFicAlzado**: Formato del fichero ASCII de salida con los perfiles transversales: 0 (TopCal), 1 (Clip), 2 (Genius) o 3 (TCP MDT). Valor predeterminado: 0.
* **Transversal\_HayInforme**: 0 (sin informe) o 1 (con informe). Valor predeterminado: 1.
* **Transversal\_FicInforme**: Nombre del informe generado. Valor predeterminado: Informe.asc.
* **Transversal\_RotularPks**: 0 (sin textos de rotulación) o 1 (con textos de rotulación). Valor predeterminado: 1.
* **Transversal\_AlturaTextosPks**: Altura en metros de los textos de rotulación. Valor predeterminado: 1.
* **Transversal\_CodTextosPks**: Código de los textos de rotulación. Valor predeterminado: PERFIL.
* **Transversal\_CodigoRasante**: Código de las entidades que forman el perfil transversal de la rasante. Valor predeterminado: RASANT.
* **Transversal\_CodigoTerreno**: Código de las entidades que forman el perfil transversal del terreno. Valor predeterminado: TERREN.
* **Transversal\_CodigoCapaVegetal**: Código de las entidades que forman el perfil transversal de la capa vegetal. Valor predeterminado: CV.
* **Transversal\_EscalaHorizontal**: Denominador de la escala horizontal de los perfiles transversales. Valor predeterminado: 1000.
* **Transversal\_EscalaVertical**: Denominador de la escala vertical de los perfiles transversales. Valor predeterminado: 500.

MDTopX lee los campos de la guitarra, de la presentación y del tipo de proyección de los perfiles transversales de los campos **Guitarra\_**, **Presenta\_** y **Tipo\_**, los mismos que utilizan los perfiles longitudinales. MDTopX no lee los campos con prefijo **Transversal\_Guitarra\_**, **Transversal\_Presenta\_** ni **Transversal\_Tipo\_**.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
