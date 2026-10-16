# Directorio relativo
<!-- id: directorio-relativo -->

Indica el subdirectorio en el que se almacenarán las instantáneas cuando alguna orden genere una instantánea.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `DirectorioInstantaneas` |
| Tipo | `REG_SZ` |
| Valor por defecto | `Instantáneas` (el texto depende del idioma de Digi3D.AI) |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
