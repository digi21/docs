# Triangulación
<!-- id: linea-de-comando-triangulacion -->

[Triangulación](/mdtopx/como/como-triangulacion.md)

&#x20;Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /TRI [archivo de salida]
```

El archivo de entrada deberá ser un archivo con información topográfica o cartográfica, a partir del cual se calculará el modelo digital. Este archivo podrá ser un archivo de puntos de TopCal, de dibujo de DIGI, de dibujo de AutoCad DXF, de dibujo de MicroStation o un archivo ASCII con coordenadas X, Y, Z.

El archivo de salida será el nombre con el que se salve la triangulación, por lo que debería llevar extensión MDT.

Además de esta secuencia y para configurar el modo de triangular, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Triangulacion]** y a continuación los campos siguientes:

* **CodTri** : Indica el código en el que se almacenarán los triángulos. Valor predeterminado: TRIANG.
* **CotaMaxima** : Indica la cota máxima en metros que podrán tener las entidades para formar parte del modelo digital. Valor predeterminado: 5000.
* **CotaMinima** : Indica la cota mínima en metros que podrán tener las entidades para formar parte del modelo digital. Valor predeterminado: 0,01.
* **HayRupturas** : Indica si habrá rupturas (valor 1) o no habrá rupturas (valor 0). Valor predeterminado: 1.
* **Codigo\[n]** : Secuencia de los códigos que formarán parte del modelo digital, siendo n un número correlativo empezando por 1. MDTopX deja de leer la secuencia en el primer valor de n que no existe en el archivo. Si no existe **Codigo1**, el modelo digital utiliza todos los códigos (comodín `*`).
* **Ruptura\[m]** : Secuencia de los códigos que serán líneas de ruptura, siendo m un número correlativo empezando por 1. MDTopX deja de leer la secuencia en el primer valor de m que no existe en el archivo. Si no existe **Ruptura1**, todos los códigos (comodín `*`) pueden ser líneas de ruptura.
* **ExcluirCodigo\[p]**: Secuencia de los códigos que no se desea que formen parte del modelo digital, siendo p un número correlativo empezando por 1.
* **ExcluirRuptura\[q]**: Secuencia de los códigos que no se desea que sean líneas de ruptura, siendo q un número correlativo empezando por 1.
* **CotaInterseccion** : Indica la cota que se asigna al punto donde se cruzan dos líneas de ruptura: 0 (cota independiente, cada línea conserva la suya), 1 (cota media), 2 (cota más alta) o 3 (cota más baja). MDTopX solo aplica este campo si **HayRupturas** vale 1. Valor predeterminado: 1.
* **DistanciaMaxima** : Indica la distancia máxima en metros entre dos vértices de un triángulo. MDTopX no genera los triángulos que tienen algún lado más largo. El valor 0 desactiva el límite. Valor predeterminado: 0.
* **NoUnirCurvas** : Indica si se desea no unir curvas de nivel en la triangulación (valor 1) o no impedir la unión de curvas de nivel durante la triangulación (valor 0). Valor predeterminado: 0.
* **Equidistancia** : Indica la equidistancia del curvado original en metros, utilizado si se activa no unir curvas de nivel. Valor predeterminado: 1.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Triangulacion]
CodTri = TRIANGUL
CotaMaxima = 950.5
CotaMinima = 0.01
HayRupturas = 1
Codigo1 = 020123
Codigo2 = 020124
Codigo3 = 060140
Ruptura1 = 020124
Ruptura2 = 060140
CotaInterseccion = 1
DistanciaMaxima = 0
NoUnirCurvas = 0
Equidistancia = 1
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
