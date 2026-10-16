# Desplazar automático
<!-- id: desplazar-automatico -->

Indica si el cursor se desplaza automáticamente al vértice siguiente \(o al anterior\) al pulsar el botón de Dato durante la edición de vértices.

## Valores posibles

* **Sí** \(valor por defecto\). Al pulsar Dato, el cursor se desplaza al vértice siguiente o al anterior.
* **No**. El cursor no se desplaza automáticamente.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Editar` |
| :--- | :--- |
| Valor | `DesplazarAuto` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
