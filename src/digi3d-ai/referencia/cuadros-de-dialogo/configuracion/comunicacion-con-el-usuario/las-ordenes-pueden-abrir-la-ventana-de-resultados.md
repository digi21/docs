# Las órdenes pueden abrir la ventana de resultados
<!-- id: las-ordenes-pueden-abrir-la-ventana-de-resultados -->

Indica si las órdenes, los guiones de Python y los complementos .NET abren la [ventana de resultados](../../../paneles/resultados.md) cuando escriben en ella.

## Valores posibles

* **Sí** \(valor por defecto\). Las órdenes, los guiones y los complementos abren la ventana de resultados al escribir en ella.
* **No**. Las órdenes, los guiones y los complementos escriben en la ventana de resultados sin abrirla. La ventana solo se abre desde **Ventana > Resultados > Resultados**, con **Alt+Mayús+R** o haciendo clic en su pestaña cuando está oculta automáticamente.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `OrdenesAbrenPanelResultados` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
