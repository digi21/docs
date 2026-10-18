# PhotogrammetricView
<!-- id: photogrammetric-view -->

Módulo: `digi3d`

Representa la **ventana fotogramétrica**. Permite mover el cursor, cambiar el zoom, cambiar de modelo
y, en los modelos de nube de puntos y de ortofoto estereoscópica, situar la cámara 3D.

Se obtiene con [`photogrammetric_view()`](functions.md#photogrammetric_view), que devuelve `None` si
no hay ninguna ventana fotogramétrica abierta:

```python
import digi3d

p = digi3d.photogrammetric_view()
if p is not None:
    print(p.model_name, p.ground_coordinates)
```

El objeto no queda ligado a una ventana concreta: cada propiedad y cada método actúan sobre la ventana
fotogramétrica activa en el momento de la llamada. Si el usuario cierra todas las ventanas
fotogramétricas, la llamada lanza `RuntimeError`.

## Posición del cursor y zoom

| Propiedad | Tipo | Descripción |
|---|---|---|
| `ground_coordinates` | `(x, y, z)` | Lee o asigna la posición del cursor en coordenadas terreno, en el sistema de coordenadas del sensor. |
| `model_coordinates` | `(x, y, z)` | Lee o asigna la posición del cursor en coordenadas modelo. |
| `zoom` | `float` | Lee o asigna el factor de zoom: `1` muestra un píxel de la imagen por cada píxel de la pantalla, `2` acerca y `0.5` aleja. |

El sensor y el modelo digital del terreno pueden ajustar la posición que se asigna, y Digi3D.AI
redondea los factores de zoom menores que 1 al nivel piramidal más cercano, con un máximo de 128.
Después de asignar una posición o un zoom, vuelve a leer la propiedad para conocer el valor aplicado.

| Método | Descripción |
|---|---|
| `go_to_origin()` | Mueve el cursor al punto de origen del modelo. |

```python
p = digi3d.photogrammetric_view()
p.ground_coordinates = (448210.0, 4479360.0, 650.0)
p.zoom = 2
print(p.ground_coordinates, p.zoom)
```

## Modelo cargado

| Propiedad | Tipo | Descripción |
|---|---|---|
| `model_name` | `str` | Nombre del modelo cargado. |
| `sensor_name` | `str` | Nombre del sensor del modelo cargado. |
| `loading_model` | `bool` | `True` mientras se carga en segundo plano un modelo pedido con [`load_model`](functions.md#load_model) o con los métodos de esta tabla. |

| Método | Devuelve | Descripción |
|---|---|---|
| `next_model()` | `bool` | Carga el modelo siguiente del proyecto. |
| `previous_model()` | `bool` | Carga el modelo anterior del proyecto. |
| `next_strip()` | `bool` | Carga el modelo de la pasada siguiente. |
| `previous_strip()` | `bool` | Carga el modelo de la pasada anterior. |

Estos métodos devuelven `False` si está activado el cambio automático de modelos o si ya se está
cargando un modelo. Digi3D.AI carga el modelo **después de que termine el guion**: dentro del mismo
guion, `model_name` sigue devolviendo el modelo anterior. Comprueba `model_name` o `loading_model` en
un guion posterior.

## Cámara 3D

Los modelos de nube de puntos y de ortofoto estereoscópica tienen una cámara 3D con posición y
orientación propias. Los demás sensores no tienen cámara.

| Miembro | Descripción |
|---|---|
| `camera` | Devuelve un diccionario con `position` `(x, y, z)` en coordenadas terreno, `omega` (inclinación) y `kappa` (rumbo) en grados sexagesimales y `fov` (campo de visión) en grados. Devuelve `None` si el sensor no tiene cámara. |
| `set_camera(position, omega, kappa)` | Sitúa la cámara en `position` `(x, y, z)` y la orienta con `omega` y `kappa`, en grados sexagesimales. Lanza `RuntimeError` si el sensor no tiene cámara. |

```python
p = digi3d.photogrammetric_view()
if p.camera is not None:
    x, y, z = p.camera["position"]
    p.set_camera((x, y, z + 50), omega=-30, kappa=p.camera["kappa"])
```

## Órdenes

| Método | Devuelve | Descripción |
|---|---|---|
| `run_command(command)` | `bool` | Ejecuta una orden de la ventana fotogramétrica, con parámetros opcionales detrás de `=`, por ejemplo `run_command("PLOT_ZOOMIN")`. Busca el nombre en el idioma configurado y, si no lo encuentra, en todos los idiomas. Devuelve `False` si no se ha podido crear la orden y lanza `ValueError` si la orden no existe. |

## Véase también

- [Funciones del módulo](functions.md) — `photogrammetric_view`, `open_project`, `project`, `load_model`.
- [DrawingView](drawing-view.md)
