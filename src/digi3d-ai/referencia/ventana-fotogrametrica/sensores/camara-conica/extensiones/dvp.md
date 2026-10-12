# DVP
<!-- id: dvp -->

La extensión **DVP** lee la calibración de la cámara y la orientación exterior de los archivos de orientación de foto `.par` de DVP. Cada imagen tiene su propio archivo `.par`, con el mismo nombre que la imagen y en su misma carpeta (`107.par` para `107.tif`).

## Archivos .par

La extensión no usa el campo **Archivo de aerotriangulación** para las orientaciones: al cargar un modelo, busca el archivo `.par` de la imagen izquierda y el de la imagen derecha. Si existen los dos, lee de ellos las orientaciones exteriores, también cuando el modelo no tiene archivo de aerotriangulación. En el cuadro de selección de archivos, el tipo es **Archivos de orientación de foto de DVP** (`*.par`).

Digi3D.AI lee del archivo `.par` estas claves, cada una seguida de sus valores en la misma línea, sin distinguir mayúsculas de minúsculas:

| Clave | Valores |
|---|---|
| `$FOC00` | Focal. |
| `$XYZ00` | X, Y y Z del centro de proyección. |
| `$OPK00` | Giros omega, phi y kappa en grados sexagesimales. Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa. |
| `$PARAFFINE00` | Seis coeficientes de la transformación afín de píxel a coordenadas de placa. |

Las demás líneas no se leen. Ejemplo:

```
$FOC00 153.000
$XYZ00 445210.123 4485012.456 2345.678
$OPK00 0.1234 -0.5678 90.1234
$PARAFFINE00 0.021 0.000 -115.000 0.000 -0.021 115.000
```

La extensión no proporciona orientación absoluta.

## Cámara

El archivo `.par` contiene la calibración de la cámara: la focal de `$FOC00` y la transformación afín de `$PARAFFINE00`. El punto principal es (0, 0) y la cámara no tiene corrección de distorsión.

Digi3D.AI lee la cámara del archivo con extensión `.par` que corresponde, por este orden, al archivo de cámara del modelo, al archivo de aerotriangulación si el modelo no tiene archivo de cámara, o a la imagen si el modelo no tiene ninguno de los dos (consulta [Cámara](../README.md#cámara)).

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que la imagen izquierda, en su misma carpeta (`107.prj` para `107.tif`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal), que crea el `.prj` junto a la imagen izquierda. La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «Se ha localizado el siguiente error al abrir el archivo *archivo*: *error*»: Digi3D.AI no puede abrir un archivo `.par`.
* «No se ha localizado la variable: *clave* en el archivo: *archivo*»: falta `$FOC00`, `$XYZ00`, `$OPK00` o `$PARAFFINE00`.
