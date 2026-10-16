# Sustituir rutas por sustituidores
<!-- id: sustituir-rutas-por-sustituidores -->

Si está activo, el programa sustituirá las rutas seleccionadas por sustituidores cuando sea posible. De esta manera se evitan los directorios absolutos en los archivos de configuración.

## Valores posibles

* **Sí**. Las rutas se sustituyen por sustituidores cuando es posible.
* **No**. Las rutas se almacenan tal cual, con su directorio absoluto.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `SustituirRutasPorSustituidores` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
