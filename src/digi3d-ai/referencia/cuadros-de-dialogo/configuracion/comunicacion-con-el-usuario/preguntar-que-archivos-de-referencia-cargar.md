# Preguntar qué archivos de referencia cargar
<!-- id: preguntar-que-archivos-de-referencia-cargar -->

Indica si, al abrir un archivo de dibujo que tiene archivos de referencia, un proyecto fotogramétrico o un modelo fotogramétrico asociados, Digi3D.AI muestra el cuadro de diálogo [Selección de archivos de referencia](../../seleccion-de-archivos-de-referencia.md) para elegir qué se carga.

## Valores posibles

* **Sí**. Se muestra el cuadro de diálogo. Al pulsar **Aceptar**, Digi3D.AI carga los archivos de referencia marcados y carga el proyecto o el modelo asociado si la casilla correspondiente está marcada.
* **No**. Se cargan todos los archivos de referencia y el proyecto o el modelo asociado sin preguntar. Es el valor por defecto.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `PreguntarArchivosReferenciaACargar` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
