# Sonidos
<!-- id: sonidos -->

Permite configurar el dispositivo que se utiliza para emitir los sonidos del programa.

Digi3D.AI ha emitido históricamente sonidos para que los operadores identifiquen lo que ocurre en el programa. El sonido más importante es el de error: si el operador lo escucha, sabe que algo no se ha realizado correctamente.

## Valores posibles

* **Altavoz del sistema (síncrono)**. Los sonidos se emiten por el altavoz del sistema de manera síncrona (puede bloquear el programa mientras suena).
* **Altavoz del sistema (asíncrono)**. Los sonidos se emiten por el altavoz del sistema de manera asíncrona.
* **Tarjeta de sonido**. Los sonidos se emiten por la tarjeta de sonido (requiere indicar la ruta de los archivos WAV de cada evento: Dato, Fin orden, etc.).

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SonidosAltavoz` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
