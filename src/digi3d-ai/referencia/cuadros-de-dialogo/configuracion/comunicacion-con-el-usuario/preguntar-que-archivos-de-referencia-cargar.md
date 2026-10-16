# Preguntar qué archivos de referencia cargar
<!-- id: preguntar-que-archivos-de-referencia-cargar -->

Indica si, al abrir un archivo de dibujo que tiene archivos de referencia asociados, Digi3D.AI muestra el cuadro de diálogo [Selección de archivos de referencia](../../seleccion-de-archivos-de-referencia.md) para elegir cuáles se cargan.

## Valores posibles

* **Sí**. Se muestra el cuadro de diálogo y se cargan solo los archivos de referencia marcados.
* **No**. Se cargan todos los archivos de referencia sin preguntar. Es el valor por defecto.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `PreguntarArchivosReferenciaACargar` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
