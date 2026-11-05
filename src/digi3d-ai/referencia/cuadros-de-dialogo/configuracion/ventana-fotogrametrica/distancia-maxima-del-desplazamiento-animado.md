# Distancia máxima del desplazamiento animado (anchos del área de dibujo)
<!-- id: distancia-maxima-del-desplazamiento-animado -->

Indica la distancia, en anchos del área de dibujo de la ventana fotogramétrica, por encima de la cual un desplazamiento se aplica sin animación. Un desplazamiento igual a esta distancia dura la duración máxima si la duración máxima supera la mínima, y la duración mínima en caso contrario. El cálculo completo está en [Duración mínima del desplazamiento animado](duracion-minima-del-desplazamiento-animado.md).

## Valores posibles

Un número mayor que 0 y de hasta 100. Al guardar la configuración, un valor menor o igual que 0 o no numérico se sustituye por 5. El valor por defecto es 5.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Configuration` |
| :--- | :--- |
| Valor | `DistanciaMaximaDesplazamientoAnimadoEnAnchosAreaDibujo` |
| Tipo | `REG_BINARY` (número de 8 bytes en coma flotante de doble precisión) |
| Valor por defecto | 5 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican. Digi3D.AI lee el valor en cada desplazamiento, así que un cambio guardado se aplica en el desplazamiento siguiente, sin reiniciar Digi3D.AI.

</details>