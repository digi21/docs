# Mostrar el campo Cerrado
<!-- id: mostrar-el-campo-cerrado -->

Indica si los paneles Resultados de la búsqueda mostrarán el campo **Cerrado**.

> Este cambio requiere reiniciar Digi3D.AI.

## Valores posibles

* **Sí**. El campo Cerrado se muestra en el panel.
* **No**. El campo Cerrado no se muestra en el panel.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Valor | `MostrarCerrado` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
