# Copia de seguridad con API CopyFile
<!-- id: copia-de-seguridad-con-api-copyfile -->

Indica si la copia de seguridad se realizará copiando el archivo mediante la API CopyFile de Windows, o generando un archivo nuevo y clonando las entidades una por una.

## Valores posibles

* **Sí**. La copia de seguridad se realiza con la API CopyFile de Windows.
* **No**. La copia de seguridad se genera clonando las entidades una por una.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\IO\Digi21.Io.Bin` |
| :--- | :--- |
| Valor | `CopiaSeguridadCopyFile` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
