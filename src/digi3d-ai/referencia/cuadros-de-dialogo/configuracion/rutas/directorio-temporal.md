# Directorio temporal
<!-- id: directorio-temporal -->

Indica el directorio temporal de Digi3D.AI, donde se almacenan, entre otros, los archivos de errores que se generan si el programa finaliza inesperadamente.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `DirectorioTemporal` |
| Tipo | `REG_SZ` |
| Valor por defecto | carpeta temporal de _Windows_ |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
