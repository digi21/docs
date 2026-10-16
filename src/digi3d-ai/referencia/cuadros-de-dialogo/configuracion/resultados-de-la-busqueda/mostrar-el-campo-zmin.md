# Mostrar el campo Zmin
<!-- id: mostrar-el-campo-zmin -->

Indica si los paneles Resultados de la búsqueda mostrarán el campo **Zmin**.

> Este cambio requiere reiniciar Digi3D.AI.

## Valores posibles

* **Sí**. El campo Zmin se muestra en el panel.
* **No**. El campo Zmin no se muestra en el panel.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Valor | `MostrarZmin` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
