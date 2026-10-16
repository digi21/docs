# Si las dos líneas tienen códigos distintos
<!-- id: si-las-dos-lineas-tienen-codigos-distintos -->

Indica qué hace la orden [UNIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md) cuando las dos líneas que se intentan unir tienen códigos distintos. En ambos casos suena el sonido de error.

## Valores posibles

* **Preguntar el código de la línea a generar**. La orden muestra un cuadro de diálogo para elegir el código de la línea resultante.
* **No unir las líneas** \(valor por defecto\). Las líneas no se unen.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Unir` |
| :--- | :--- |
| Valor | `PreguntarAlUnirGeometriasCodigosDistintos` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
