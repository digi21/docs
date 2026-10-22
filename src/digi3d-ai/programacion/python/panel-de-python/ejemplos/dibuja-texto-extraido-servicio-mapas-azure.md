# Texto del callejero de Azure Maps
<!-- id: dibuja-texto-extraido-servicio-mapas-azure -->

Archivo: `dibuja_texto_extraido_servicio_mapas_azure.py` · orden `DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE`,
**orden interactiva** ([PythonCommand](../../referencia/digi3d/python-command.md)) con un parámetro: la
clave de Azure Maps.

Variante del [ejemplo del Catastro](dibuja-texto-extraido-callejero-catastro.md) que usa el servicio
**Azure Maps** e inserta el texto **rotado**. Cada texto necesita dos datos: el primero fija el punto de
inserción y consulta la calle; el segundo marca la dirección de la rotación.

## Cómo se usa

1. Obtén la clave (*subscription key*) de tu cuenta de Azure Maps.
2. Escribe en la línea de comandos el nombre de la orden y la clave:

   ```
   DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE=clave
   ```

3. Pulsa el botón de dato en el punto de inserción del texto.
4. Pulsa el botón de dato en un segundo punto para fijar la dirección del texto.

Si no se indica exactamente un parámetro, la orden emite el sonido de error y muestra un cuadro con el
motivo y la forma de uso. Si la consulta a Azure Maps falla, la orden escribe el error en el panel de
resultados, emite el sonido de error y espera de nuevo el punto de inserción.

## El código

```python
import digi3d
import json
import urllib.request

USO = 'DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE=[clave de Azure Maps]'


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


class DibujaTextoExtraidoServicioMapasAzure(digi3d.PythonCommand):
    def __init__(self, clave):
        digi3d.PythonCommand.__init__(self, 'dibuja_texto_extraido_servicio_mapas_azure')
        self.clave = clave
        self.origen = None

    def on_data_down(self, coordenadas):
        if self.origen is None:
            self.asigna_origen_y_nombre_calle(coordenadas)
        else:
            rotacion = self.view.geographic_calculator.calculate_trigonometric_angle(self.origen, coordenadas)
            texto = digi3d.Text(self.calle, self.origen, rotation=rotacion)
            self.view.add(texto)
            self.view.redraw()
            self.origen = None
            self.new_transaction()

    def asigna_origen_y_nombre_calle(self, coordenadas):
        # El intérprete embebido solo tiene la stdlib (no "requests"); usamos urllib.request.
        try:
            self.origen = coordenadas
            geograficas = self.view.to_geo(coordenadas)
            url = 'https://atlas.microsoft.com/search/address/reverse/json?&api-version=1.0&subscription-key={}&language=es-ES&query={},{}'.format(self.clave, geograficas[0], geograficas[1])
            with urllib.request.urlopen(url) as r:
                respuesta = json.load(r)
            self.calle = respuesta['addresses'][0]['address']['streetName']
        except Exception as e:
            # Sin calle no hay texto que orientar: el siguiente dato vuelve a ser un origen.
            print(e)
            self.origen = None
            digi3d.music(digi3d.MusicType.Error)
        return True


if len(argv) != 1:
    error('Falta la clave de Azure Maps.')
else:
    orden = DibujaTextoExtraidoServicioMapasAzure(argv[0])
    digi3d.current_view().add_command(orden)
```

## Cómo funciona

- **El parámetro**: la clave llega en `argv[0]`. Si `argv` no tiene exactamente un elemento, la función
  `error` emite el sonido de error y muestra con [`digi3d.show_info`](../../referencia/digi3d/functions.md)
  el mensaje «Falta la clave de Azure Maps.» y la forma de uso. La orden guarda la clave en `self.clave`
  y la incluye en la URL de cada consulta.
- **Estado entre pulsaciones**: la orden guarda el primer punto en `self.origen`. Mientras `self.origen`
  es `None`, el siguiente dato fija el origen y consulta la calle. Cuando `self.origen` tiene valor, el
  siguiente dato calcula la rotación, inserta el texto y vuelve a poner `self.origen` a `None`. Así una
  orden interactiva pide **varios datos**.
- **Fallo de la consulta**: si la conversión, la petición o la lectura de la respuesta lanza una
  excepción, `asigna_origen_y_nombre_calle` escribe el error en el panel de resultados, vuelve a poner
  `self.origen` a `None` y emite el sonido de error. El siguiente dato vuelve a ser un punto de inserción.
- **Coordenadas geográficas**: el servicio de Azure trabaja en longitud y latitud, así que la orden
  convierte el punto con [`self.view.to_geo(coordenadas)`](../../referencia/digi3d/drawing-view.md), que
  devuelve `(longitud, latitud)`.
- **Rotación a partir de dos puntos**:
  `self.view.geographic_calculator.calculate_trigonometric_angle(origen, destino)` devuelve el ángulo
  entre los dos puntos, y la orden lo pasa al texto.
- **Texto rotado**: `digi3d.Text(texto, coordenadas, rotation=rotacion)`. La rotación se pasa **por
  nombre** (`rotation=...`) porque el tercer argumento posicional de `Text` es `codes`, no la rotación.
- `self.new_transaction()` deja cada texto en una transacción propia, así que cada UNDO deshace un texto.
- La llamada web se hace, como en el ejemplo del Catastro, con `urllib.request` y `json`.

## Véase también

- [Texto del callejero del Catastro](dibuja-texto-extraido-callejero-catastro.md)
- [PythonCommand](../../referencia/digi3d/python-command.md) · [Text](../../referencia/digi21.base/text.md)
- [GeographicCalculator](../../referencia/digi3d/geographic-calculator.md) — `calculate_trigonometric_angle`
- [DrawingView](../../referencia/digi3d/drawing-view.md) — `to_geo`
