# Tentativo inserta un vértice en la línea seleccionada
<!-- id: tentativo-inserta-un-vertice-en-la-linea-seleccionada -->

Indica cuándo un tentativo inserta un vértice en la línea seleccionada. Solo tiene efecto si la variable [TENTATIVO\_INSERTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) está activada.

## Valores posibles

* **Siempre que se confirme una selección**. El vértice se inserta al confirmar el tentativo, con independencia de la orden en ejecución.
* **Sólo al registrar líneas** \(valor por defecto\). El vértice solo se inserta si no hay ninguna orden en ejecución o si la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Valor | `TentativoInsertaInsertaSiempre` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
