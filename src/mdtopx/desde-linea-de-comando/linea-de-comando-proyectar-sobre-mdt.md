# Proyectar sobre MDT
<!-- id: linea-de-comando-proyectar-sobre-mdt -->

[Proyectar sobre MDT](/mdtopx/como/como-proyeccion-sobre-mdt.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /PRO [archivo de salida] [archivo a proyectar]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará el archivo.

El archivo de salida será el nombre con el que se salve la proyección. El programa salvará en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation). Si **DocResultados** vale 0, MDTopX no genera el archivo de salida.

El archivo a proyectar es opcional. Si se escribe, MDTopX lo proyecta en lugar del archivo indicado en el campo **Entrada** de MDTopX.ini.

Además de esta secuencia y para configurar el modo de proyección, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Proyecta]** y a continuación los campos siguientes:

* **Entrada**: Nombre del archivo de dibujo que se proyectará sobre el modelo digital
* **CodError**: Código de las marcas de error. Valor predeterminado: ERROR.
* **ComprobarCota**: 0 (no comprobar) o 1 (comprobar la diferencia entre la cota original y la proyectada). Valor predeterminado: 0.
* **ComprobarFuera**: 0 (no comprobar) o 1 (comprobar si se sale alguna entidad de los límites del modelo digital). Valor predeterminado: 0.
* **SizeErrores**: Tamaño en metros de las marcas de error. Valor predeterminado: 1.
* **Errores**: Nombre del archivo con las marcas de error. El programa lo salva en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad) o DGN (MicroStation). Valor predeterminado: ERR.BIN.
* **Tolerancia**: Tolerancia en metros para marcar un error. Valor predeterminado: 1.
* **DocResultados**: 0 (no generar el archivo de salida) o 1 (generar el archivo de salida con las entidades proyectadas). Valor predeterminado: 1.
* **CotaResultados**: 0 (la cota de las entidades proyectadas es la del modelo digital) o 1 (la cota de las entidades proyectadas es la diferencia entre la cota original y la del modelo digital). Valor predeterminado: 0.
* **CodigoResultados**: 0 (las entidades proyectadas conservan el código original) o 1 (MDTopX asigna a las entidades proyectadas un código según su cota resultante, con los campos **Intervalo\[n]**). Valor predeterminado: 0.
* **Intervalo\[n]**: Secuencia de pares formados por un valor de cota en metros y un código, separados por una coma, siendo n un número correlativo empezando por 1. MDTopX ordena los pares por valor de cota y asigna a cada entidad el código del primer par cuyo valor es mayor que la cota resultante de la entidad; si ningún valor es mayor, asigna el código del último par. MDTopX deja de leer la secuencia en el primer valor de n que no existe en el archivo. Se utiliza cuando **CodigoResultados** vale 1.
* **Tipo\_Cortes**: 0 (no usar cortes con triángulos), 1 (usar sólo los cortes con líneas de rupturas) o 2 (usar todos los cortes con triángulos). Valor predeterminado: 2.
* **Tipo\_Interpola**: 0 (interpolar la cota de los puntos con los cortes) o 1 (proyectar individualmente). Valor predeterminado: 1.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Proyecta]
Entrada = linea.bin
CodError = ERR
ComprobarCota = 1
ComprobarFuera = 1
SizeErrores = 2.5
Errores = ERR.bin
Tolerancia = 1
Tipo_Cortes = 2
Tipo_Interpola = 1
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
