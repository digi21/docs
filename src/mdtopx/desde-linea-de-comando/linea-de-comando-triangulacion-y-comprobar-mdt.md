# Triangulación y comprobar MDT
<!-- id: linea-de-comando-triangulacion-y-comprobar-mdt -->

[Triangulación](/mdtopx/como/como-triangulacion.md) y [Comprobar MDT](/mdtopx/como/como-comprobar-mdt.md)

Esta orden ejecuta en una sola llamada la herramienta de triangulación y, a continuación, la herramienta de comprobación de la altimetría sobre la triangulación calculada. MDTopX no guarda la triangulación en ningún archivo: solo guarda el archivo de errores de la comprobación. Para ejecutar la orden, escribe:

```bash
MDTopX [archivo de entrada] /TRICOM
```

El archivo de entrada es un archivo de dibujo con información topográfica o cartográfica, igual que en la herramienta [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md). Con un archivo de otro tipo, la orden no tiene efecto.

Esta orden no usa archivo de salida. MDTopX acepta un segundo nombre de archivo en la línea de comando, pero lo ignora. El archivo de errores se llama como indica la clave **FicError** de la sección **\[Comprobar]**. MDTopX lo guarda en formato BIN (DIGI), con independencia de la extensión.

Licencia: la herramienta requiere la licencia de MDTopX; sin ella, MDTopX termina sin ejecutar la orden.

Para configurar la orden, añade al archivo MDTopX.ini las dos secciones siguientes. Las claves de cada sección son las mismas que las de las herramientas individuales:

* **\[Triangulacion]**: configura la triangulación. Las claves están descritas en [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Comprobar]**: configura la comprobación. Las claves están descritas en [Comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md).

Si una clave no existe, MDTopX usa el valor guardado en la configuración del usuario (el último que se usó en el cuadro de diálogo de la interfaz de MDTopX) o, si no hay ninguno guardado, el valor predeterminado.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Comprobar]
CodError = ERR
FicError = ERR.bin
Equidistancia = 0.5
Size = 2.5
```

MDTopX no distingue entre mayúsculas y minúsculas en los nombres de sección y de clave.

Vea también:

* [Introducción a la línea de comandos](./)
* [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md)
