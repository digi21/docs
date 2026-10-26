# Sonidos
<!-- id: sonidos -->

Permite configurar el dispositivo que se utiliza para emitir los sonidos del programa.

Digi3D.AI emite sonidos para indicar lo que ocurre en el programa. El sonido de error indica que alguna operación no se ha realizado correctamente.

## Valores posibles

* **Altavoz del sistema (síncrono)**. Los sonidos se emiten por el altavoz del sistema de manera síncrona (el programa puede quedar bloqueado mientras suena un sonido).
* **Altavoz del sistema (asíncrono)**. Los sonidos se emiten por el altavoz del sistema de manera asíncrona.
* **Tarjeta de sonido**. Los sonidos se emiten por la tarjeta de sonido (requiere indicar la ruta de los archivos WAV de cada evento: Dato, Fin orden, etc.).

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SonidosAltavoz` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
