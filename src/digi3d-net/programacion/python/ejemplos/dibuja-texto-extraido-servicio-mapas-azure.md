# Texto del callejero de Azure Maps

Archivo: `dibuja_texto_extraido_servicio_mapas_azure.py` · **orden interactiva** ([PythonCommand](../guiones/python-command.md)).

Variante del [ejemplo del Catastro](dibuja-texto-extraido-callejero-catastro.md) que usa el servicio
**Azure Maps** y, además, inserta el texto **rotado**: se pulsa dos veces, la primera fija el punto
(y consulta la calle) y la segunda marca la dirección de la rotación.

Necesita una *subscription key* de Azure Maps (sustituye el valor de `SUBSCRIPTION_KEY`).

## El código

```python
import digi3d
import json
import urllib.request

SUBSCRIPTION_KEY = 'Introduce aquí el subscription key de tu servicio de mapas de azure'

class DibujaTextoExtraidoServicioMapasAzure(digi3d.PythonCommand):
    def __init__(self):
        digi3d.PythonCommand.__init__(self, 'dibuja_texto_extraido_servicio_mapas_azure')
        self.origen = None

    def on_data_down(self, coordenadas):
        if self.origen is None:
            # Primera pulsación: fija el punto del texto y consulta el nombre de la calle.
            self.asigna_origen_y_nombre_calle(coordenadas)
        else:
            # Segunda pulsación: define la rotación (ángulo del origen a este punto) e inserta el texto.
            rotacion = self.view.geographic_calculator.calculate_trigonometric_angle(self.origen, coordenadas)
            texto = digi3d.Text(self.calle, self.origen, rotation=rotacion)
            self.view.add(texto)
            self.view.redraw()
            self.origen = None
            self.new_transaction()

    def asigna_origen_y_nombre_calle(self, coordenadas):
        # El intérprete embebido solo tiene la stdlib (no "requests"): usamos urllib.request.
        try:
            self.origen = coordenadas
            geograficas = self.view.to_geo(coordenadas)
            url = ('https://atlas.microsoft.com/search/address/reverse/json?&api-version=1.0'
                   '&subscription-key={}&language=es-ES&query={},{}').format(
                       SUBSCRIPTION_KEY, geograficas[0], geograficas[1])
            with urllib.request.urlopen(url) as r:
                respuesta = json.load(r)
            self.calle = respuesta['addresses'][0]['address']['streetName']
        except Exception as e:
            print(e)
        return True

orden = DibujaTextoExtraidoServicioMapasAzure()
digi3d.current_view().add_command(orden)
```

## Cómo funciona

- **Estado entre pulsaciones**: la orden guarda en `self.origen` el primer punto. Mientras es `None`,
  la siguiente pulsación lo fija (y consulta la calle); cuando ya tiene valor, la siguiente pulsación
  calcula la rotación e inserta el texto. Así una orden interactiva puede pedir **varios datos**.
- **Coordenadas geográficas**: el servicio de Azure trabaja en longitud/latitud, así que convertimos
  con [`self.view.to_geo(coordenadas)`](../guiones/drawing-view.md), que devuelve `(longitud, latitud)`.
- **Rotación a partir de dos puntos**:
  `self.view.geographic_calculator.calculate_trigonometric_angle(origen, destino)` da el ángulo entre
  ambos, que pasamos al texto.
- **Texto rotado**: `digi3d.Text(texto, coordenadas, rotation=rotacion)`. Fíjate en que la rotación
  se pasa **por nombre** (`rotation=...`): el tercer argumento posicional de `Text` es `codes`, no la
  rotación, así que hay que nombrarlo.
- La llamada web se hace, como en el ejemplo del Catastro, con `urllib.request` + `json`.

## Véase también

- [Texto del callejero del Catastro](dibuja-texto-extraido-callejero-catastro.md)
- [PythonCommand](../guiones/python-command.md) · [Text](../referencia/digi21.base/text.md)
- [GeographicCalculator](../guiones/geographic-calculator.md) — `calculate_trigonometric_angle`
- [DrawingView](../guiones/drawing-view.md) — `to_geo`
