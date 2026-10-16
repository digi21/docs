# Finalizar con doble clic
<!-- id: finalizar-con-doble-clic -->

Indica si la línea que se está registrando con la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) finaliza al hacer doble clic.

## Valores posibles

* **Sí**. El doble clic finaliza la línea, igual que el botón de RESET.
* **No** \(valor por defecto\). El doble clic se trata como una pulsación de Dato.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Valor | `FinalizarConDobleClic` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
