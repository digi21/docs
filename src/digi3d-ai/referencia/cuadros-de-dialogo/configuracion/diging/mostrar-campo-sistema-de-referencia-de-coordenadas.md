# Mostrar campo Sistema de referencia de coordenadas
<!-- id: mostrar-campo-sistema-de-referencia-de-coordenadas -->

Si se activa, muestra la opción **Sistema de referencia de coordenadas** en la pestaña **Archivo de dibujo** del cuadro de diálogo **Nuevo proyecto**.

## Valores posibles

* **Sí**. Se muestra el campo Sistema de referencia de coordenadas en Nuevo proyecto.
* **No**. No se muestra ese campo.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `MostrarOpcionSrc` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
