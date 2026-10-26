# Avisar de órdenes desconocidas
<!-- id: avisar-de-ordenes-desconocidas -->

Indica si Digi3D.AI escribe un aviso en la [ventana de resultados](../../../paneles/resultados.md) cuando se ejecuta una orden que no existe.

El aviso no abre la ventana de resultados: solo ves el aviso si la ventana ya está abierta.

## Valores posibles

* **Sí** \(valor por defecto\). Al ejecutar una orden que no existe se escribe un mensaje en la ventana de resultados.
* **No**. Al ejecutar una orden que no existe no se escribe ningún mensaje.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Valor | `AvisarOrdenesDesconocidas` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
