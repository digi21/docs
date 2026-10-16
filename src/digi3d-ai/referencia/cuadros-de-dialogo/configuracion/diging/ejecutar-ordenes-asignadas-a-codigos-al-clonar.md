# Ejecutar órdenes asignadas a códigos al clonar
<!-- id: ejecutar-ordenes-asignadas-a-codigos-al-clonar -->

Si se activa, al clonar una entidad se ejecutan las órdenes asignadas en la tabla de códigos a los códigos que tenga la entidad.

## Valores posibles

* **Sí**. Al clonar se ejecutan las órdenes asignadas a los códigos.
* **No**. Al clonar no se ejecutan las órdenes asignadas a los códigos.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `EjecutarOrdenesAsignadasACodigoAlClonar` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
