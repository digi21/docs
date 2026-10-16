# Aceptar tentativos al pulsar dato
<!-- id: aceptar-tentativos-al-pulsar-dato -->

Indica en qué momento se acepta un tentativo cuando no hay ninguna orden en ejecución o cuando la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

## Valores posibles

* **Sí**. El tentativo se acepta al pulsar el botón de Dato. Así puedes confirmar el tentativo y seguir registrando la línea sin levantar el pedal.
* **No** \(valor por defecto\). El tentativo se acepta al soltar el botón de Dato.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Linea` |
| :--- | :--- |
| Valor | `PermitirConfirmarTentativoAlPulsarPedal` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
