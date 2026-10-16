# Sincronizar zooms con Digi3D
<!-- id: sincronizar-zooms-con-digi3d -->

Indica si, cada vez que se cambia el factor de zoom de una vista de Digi3D, se cambia también el zoom de la ventana de dibujo para mostrar aproximadamente la misma escala.

## Valores posibles

* **Sí**. El zoom de la ventana de dibujo se sincroniza con el de las vistas de Digi3D.
* **No**. El zoom de la ventana de dibujo es independiente del de las vistas de Digi3D.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `SinconizarZoomsDigi3D` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
