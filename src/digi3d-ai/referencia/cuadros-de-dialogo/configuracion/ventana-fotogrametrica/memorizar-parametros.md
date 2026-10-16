# Memorizar parámetros
<!-- id: memorizar-parametros -->

Si se activa, se memorizan parámetros como las coordenadas, el nivel de zoom, etc., para recuperarlos la próxima vez que se cargue el modelo.

## Valores posibles

* **Sí**. Se memorizan los parámetros del modelo para la próxima vez.
* **No**. No se memorizan los parámetros del modelo.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration\Scroll` |
| :--- | :--- |
| Valor | `MemorizarParametros` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
