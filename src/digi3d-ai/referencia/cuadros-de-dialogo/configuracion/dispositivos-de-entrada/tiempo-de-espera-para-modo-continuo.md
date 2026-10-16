# Tiempo de espera para modo contínuo
<!-- id: tiempo-de-espera-para-modo-continuo -->

Indica el tiempo que debe transcurrir con el botón/pedal de Dato pulsado para bloquearlo. Introduce **0** si no quieres bloquear el pedal de Dato.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO\TarjDigi3D` |
| :--- | :--- |
| Valor | `MilisegundosBloqueoData` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
