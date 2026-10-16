# Calcular recubrimiento por correlación
<!-- id: calcular-recubrimiento-por-correlacion -->

Indica si la primera acción de la orden de orientación relativa será calcular el recubrimiento horizontal/vertical por correlación. Desactiva esta opción únicamente si el programa se equivoca porque en el fotocentro de la cámara izquierda no hay información.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| :--- | :--- |
| Valor | `CalcularRecubrimientoPorCorrelacion` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
