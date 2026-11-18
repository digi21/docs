# Triangulación y rejilla
<!-- id: linea-de-comando-triangulacion-y-rejilla -->

[Triangulación](/mdtopx/como/como-triangulacion.md) y [Rejilla](/mdtopx/como/como-rejilla.md)

Esta orden ejecuta en una sola llamada la herramienta de triangulación y, a continuación, la herramienta de rejilla sobre la triangulación calculada. MDTopX no guarda la triangulación intermedia en ningún archivo: solo guarda la rejilla. Para ejecutar la orden, escribe:

```bash
MDTopX [archivo de entrada] /TRIREJ [archivo de salida]
```

El archivo de entrada es un archivo de dibujo con información topográfica o cartográfica, igual que en la herramienta [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md). Con un archivo de otro tipo, la orden no tiene efecto.

El archivo de salida es obligatorio y es el nombre con el que MDTopX guarda la rejilla. MDTopX guarda la rejilla en el formato que indica la extensión, igual que en la herramienta [Rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md): DXF (AutoCad), DGN (MicroStation), Shape (ARC-GIS) o BIN (DIGI).

Licencia: la herramienta requiere la licencia de MDTopX; sin ella, MDTopX termina sin ejecutar la orden.

Para configurar la orden, añade al archivo MDTopX.ini las dos secciones siguientes. Las claves de cada sección son las mismas que las de las herramientas individuales:

* **\[Triangulacion]**: configura la triangulación. Las claves están descritas en [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Rejilla]**: configura la rejilla. Las claves están descritas en [Rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md).

Si una clave no existe, MDTopX usa el valor guardado en la configuración del usuario (el último que se usó en el cuadro de diálogo de la interfaz de MDTopX) o, si no hay ninguno guardado, el valor predeterminado.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
SoloPuntos = 1
Codigo = N1
```

MDTopX no distingue entre mayúsculas y minúsculas en los nombres de sección y de clave.

Vea también:

* [Introducción a la línea de comandos](./)
* [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)
