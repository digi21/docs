# Acción a realizar con la geometría que se inserta en INSERTAR\_HUECO
<!-- id: accion-a-realizar-con-la-geometria-que-se-inserta -->

Indica qué se hace con la geometría que seleccionas como hueco en la orden [INSERTAR\_HUECO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md) después de insertarla en el polígono.

## Valores posibles

* **No eliminar la geometría** \(valor por defecto\). La geometría seleccionada se conserva en el archivo de dibujo.
* **Eliminar la geometría**. La geometría seleccionada se elimina del archivo de dibujo.
* **Preguntar**. La orden pregunta si quieres eliminar la geometría.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Valor | `EliminarEntidadQueFormaHueco` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
