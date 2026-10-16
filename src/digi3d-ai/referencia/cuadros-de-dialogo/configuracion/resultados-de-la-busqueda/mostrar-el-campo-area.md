# Mostrar el campo Área
<!-- id: mostrar-el-campo-area -->

Indica si los paneles Resultados de la búsqueda mostrarán el campo **Área**.

> Este cambio requiere reiniciar Digi3D.AI.

## Valores posibles

* **Sí**. El campo Área se muestra en el panel.
* **No**. El campo Área no se muestra en el panel.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Valor | `MostrarÁrea` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
