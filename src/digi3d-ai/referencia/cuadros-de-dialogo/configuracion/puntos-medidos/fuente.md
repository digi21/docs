# Fuente
<!-- id: fuente -->

Indica la fuente con la que se rotulan los puntos medidos.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `Fuente` |
| Tipo | `REG_BINARY` (estructura `LOGFONT` de _Windows_) |
| Valor por defecto | Verdana, negrita, 12 píxeles de alto |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
