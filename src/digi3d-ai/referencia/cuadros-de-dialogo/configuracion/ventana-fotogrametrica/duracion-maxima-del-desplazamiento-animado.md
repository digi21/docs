# Duración máxima del desplazamiento animado (s)
<!-- id: duracion-maxima-del-desplazamiento-animado -->

Indica la duración, en segundos, de la animación de un desplazamiento igual a la distancia máxima. Si la duración máxima supera la mínima, un desplazamiento animado más corto que la distancia máxima dura entre la duración mínima y este valor. Si no la supera, cada animación dura la duración mínima. El cálculo completo está en [Duración mínima del desplazamiento animado](duracion-minima-del-desplazamiento-animado.md).

## Valores posibles

Un número de segundos de 0 a 10, ambos incluidos. Al guardar la configuración, un valor no numérico se sustituye por 1,0. Si el valor no supera la duración mínima, cada animación dura la duración mínima. El valor por defecto es 1,0.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration` |
| :--- | :--- |
| Valor | `DuracionMaximaDesplazamientoAnimadoSegundos` |
| Tipo | `REG_BINARY` (número de 8 bytes en coma flotante de doble precisión) |
| Valor por defecto | 1,0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican. Digi3D.AI lee el valor en cada desplazamiento, así que un cambio guardado se aplica en el desplazamiento siguiente, sin reiniciar Digi3D.AI.

</details>