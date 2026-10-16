# Texto a voz en barra de estado
<!-- id: texto-a-voz-en-barra-de-estado -->

Indica si Digi3D.AI utilizará síntesis de voz para narrar los mensajes que las órdenes muestran en la barra de estado.

## Valores posibles

* **Sí**. Se narran por voz los mensajes de la barra de estado.
* **No**. No se narran por voz los mensajes de la barra de estado.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `TextoAVozEnBarraEstado` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
