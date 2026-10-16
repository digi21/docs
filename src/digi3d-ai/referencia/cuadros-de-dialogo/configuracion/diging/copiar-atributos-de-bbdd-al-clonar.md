# Copiar atributos de BBDD al clonar
<!-- id: copiar-atributos-de-bbdd-al-clonar -->

Indica si, al clonar una entidad, se copian los atributos de la base de datos de la entidad original a la nueva.

## Valores posibles

* **Sí**. La entidad clonada conserva los atributos de base de datos de la original.
* **No**. La entidad clonada no copia los atributos de base de datos.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `CopiarAtributosBBDDClonar` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
