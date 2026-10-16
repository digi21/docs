# Tentativo corta la línea seleccionada
<!-- id: tentativo-corta-la-linea-seleccionada -->

Indica cuándo un tentativo corta la línea seleccionada. Solo tiene efecto si la variable [TENTATIVO\_CORTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-corta.md) está activada.

## Valores posibles

* **Siempre que se confirme una selección**. La línea seleccionada se corta al confirmar el tentativo, con independencia de la orden en ejecución.
* **Sólo al registrar líneas** \(valor por defecto\). La línea seleccionada solo se corta si no hay ninguna orden en ejecución o si la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Valor | `TentativoCortaCortaSiempre` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
