# Triangulación y curvado
<!-- id: linea-de-comando-triangulacion-y-curvado -->

[Triangulación](/mdtopx/como/como-triangulacion.md) y [Curvado](/mdtopx/como/como-curvado.md)

Esta orden ejecuta en una sola llamada la herramienta de triangulación y, a continuación, la herramienta de curvado sobre la triangulación calculada. MDTopX no guarda la triangulación intermedia en ningún archivo: solo guarda el curvado. Para ejecutar la orden, escribe:

```bash
MDTopX [archivo de entrada] /TRICUR [archivo de salida]
```

El archivo de entrada es un archivo de dibujo con información topográfica o cartográfica, igual que en la herramienta [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md). Con un archivo de otro tipo, la orden no tiene efecto.

El archivo de salida es obligatorio y es el nombre con el que MDTopX guarda el curvado. MDTopX guarda el curvado en el formato que indica la extensión, igual que en la herramienta [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md): DXF (AutoCad), DGN (MicroStation) o BIN (DIGI) para cualquier otra extensión.

Licencia: la herramienta requiere la licencia de MDTopX; sin ella, MDTopX termina sin ejecutar la orden.

Para configurar la orden, añade al archivo MDTopX.ini las dos secciones siguientes. Las claves de cada sección son las mismas que las de las herramientas individuales:

* **\[Triangulacion]**: configura la triangulación. Las claves están descritas en [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Curvado]**: configura el curvado. Las claves están descritas en [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md).

Si una clave no existe, MDTopX usa el valor guardado en la configuración del usuario (el último que se usó en el cuadro de diálogo de la interfaz de MDTopX) o, si no hay ninguno guardado, el valor predeterminado.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Curvado]
Escala = 500
Suavizado = 2
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
```

MDTopX no distingue entre mayúsculas y minúsculas en los nombres de sección y de clave.

Vea también:

* [Introducción a la línea de comandos](./)
* [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
