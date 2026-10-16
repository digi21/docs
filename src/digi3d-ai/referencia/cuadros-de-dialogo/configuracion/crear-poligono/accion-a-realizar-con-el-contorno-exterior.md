# Acción a realizar con el contorno exterior
<!-- id: accion-a-realizar-con-el-contorno-exterior -->

Indica qué se hace con la línea que forma el contorno exterior al crear un polígono con la orden [CREAR\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md).

## Valores posibles

* **No eliminar la geometría**. La línea del contorno exterior se conserva en el archivo de dibujo.
* **Eliminar la geometría** \(valor por defecto\). La línea del contorno exterior se elimina del archivo de dibujo.
* **Preguntar**. La orden pregunta si quieres eliminar la línea.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\InsertarHueco` |
| :--- | :--- |
| Valor | `AccionContornoExteriorCrearPoligono` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
