# Acción a realizar con los huecos
<!-- id: accion-a-realizar-con-los-huecos -->

Indica qué se hace con las líneas que forman los huecos al crear un polígono con la orden [CREAR\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md).

## Valores posibles

* **No eliminar la geometría** \(valor por defecto\). Las líneas de los huecos se conservan en el archivo de dibujo.
* **Eliminar la geometría**. Las líneas de los huecos se eliminan del archivo de dibujo.
* **Preguntar**. La orden CREAR\_POLIGONO pregunta, para cada hueco, si quieres eliminar la línea que forma ese hueco.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Valor | `AccionHuecosCrearPoligono` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
