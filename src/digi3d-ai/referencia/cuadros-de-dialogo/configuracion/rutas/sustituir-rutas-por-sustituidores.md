# Sustituir rutas por sustituidores
<!-- id: sustituir-rutas-por-sustituidores -->

Si activas esta opción, el programa sustituye las rutas seleccionadas por variables que representan directorios (sustituidores) cuando es posible. La sustitución evita guardar las rutas absolutas correspondientes en los archivos de configuración.

## Valores posibles

* **Sí**. Las rutas se sustituyen por sustituidores cuando es posible.
* **No**. Las rutas se almacenan tal cual, como rutas absolutas.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SustituirRutasPorSustituidores` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
