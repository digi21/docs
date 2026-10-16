# Confidencia reconocimiento voz
<!-- id: confidencia-reconocimiento-voz -->

Permite configurar, mediante un valor entre 0 y 1, el factor de confidencia con el que se reconocen los comandos de voz cuando está activa la variable [RECONOCER_VOZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/reconocer-voz.md).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `ConfidenciaReconocimientoVoz` |
| Tipo | `REG_BINARY` (número real de 8 bytes, `double`) |
| Valor por defecto | 0.6 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
