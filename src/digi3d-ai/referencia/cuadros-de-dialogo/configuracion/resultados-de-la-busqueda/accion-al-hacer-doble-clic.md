# Acción al hacer doble clic
<!-- id: accion-al-hacer-doble-clic-2 -->

Indica cómo se comportará la ventana de dibujo al hacer doble clic sobre una entidad seleccionada en el panel Resultados de la búsqueda.

## Valores posibles

* **Zoom extendido a la entidad**. La ventana hace un zoom que ajusta la entidad a la vista.
* **Desplazar la cámara al centro de la entidad**. La ventana desplaza la cámara hasta el centro de la entidad, sin cambiar el nivel de zoom.
* **Mantenerse en el sitio**. La ventana no cambia la vista.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration\FindResults` |
| :--- | :--- |
| Valor | `AcciónAlHacerDobleClic` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
