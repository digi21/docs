# Zoom extendido
<!-- id: zoom-extendido -->

Indica la acción que realiza la orden Zoom extendido (REST_ZOOME).

## Valores posibles

* **Cambia el factor de zoom y desplaza el equipo al centro del modelo.**
* **Cambia el factor de zoom sin desplazar el equipo al centro del modelo.**

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.STDOrdRest\Zoom` |
| :--- | :--- |
| Valor | `ZoomExtendidoCentraEnModelo` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
