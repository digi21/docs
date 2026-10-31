# Text from Azure Maps
<!-- id: dibuja-texto-extraido-servicio-mapas-azure -->
<!-- origen: d4ed330dc9dd27ba3a52ce147aeab1d8ae22c031 -->

File: `dibuja_texto_extraido_servicio_mapas_azure.py` · command `DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE`, an **interactive command** ([PythonCommand](../../referencia/digi3d/python-command.md)) taking the Azure Maps key.

This [Cadastre example](dibuja-texto-extraido-callejero-catastro.md) variant uses **Azure Maps** and inserts **rotated** text. Each text needs two inputs: insertion point (also queries street name), then a point defining rotation direction.

## Usage

1. Obtain your Azure Maps *subscription key*.
2. Enter the command and key:

   ```
   DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE=clave
   ```

3. Press the data button at the insertion point.
4. Press it at a second point defining text direction.

Without exactly one parameter, plays the error sound and displays the reason and usage. A failed Azure Maps query prints the error to Results, plays the error sound and requests the insertion point again.

## Code

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
        # The embedded interpreter has only the standard library (no "requests"); use urllib.request.
        try:
            self.origen = coordenadas
            geograficas = self.view.to_geo(coordenadas)
            url = 'https://atlas.microsoft.com/search/address/reverse/json?&api-version=1.0&subscription-key={}&language=es-ES&query={},{}'.format(self.clave, geograficas[0], geograficas[1])
            with urllib.request.urlopen(url) as r:
                respuesta = json.load(r)
            self.calle = respuesta['addresses'][0]['address']['streetName']
        except Exception as e:
            # Without a street there is no text to orient: the next input is an origin again.
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

## How it works

- **Parameter**: key arrives in `argv[0]`. If `argv` lacks exactly one element, `error` plays the error sound and shows “Missing Azure Maps key.” and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md). Stores the key in `self.clave`, including it in each query URL.
- **State between presses**: stores the first point in `self.origen`. While `self.origen` is `None`, the next input sets origin and queries the street. When `self.origen` has a value, the next input calculates rotation, inserts text and resets `self.origen` to `None`. Interactive commands can thus request **multiple inputs**.
- **Query failure**: conversion, request or response exceptions make `asigna_origen_y_nombre_calle` print the error to Results, reset `self.origen` to `None` and play the error sound. The next input is an insertion point again.
- **Geographic coordinates**: Azure uses longitude and latitude, so [`self.view.to_geo(coordenadas)`](../../referencia/digi3d/drawing-view.md) converts the point, returning `(longitud, latitud)`.
- **Two-point rotation**: `self.view.geographic_calculator.calculate_trigonometric_angle(origen, destino)` returns the angle, passed to the text.
- **Rotated text**: uses `digi3d.Text(texto, coordenadas, rotation=rotacion)`. Pass rotation **by name** (`rotation=...`): the third positional `Text` argument is `codes`.
- `self.new_transaction()` gives each text its own transaction and UNDO step.
- Like the Cadastre example, web requests use `urllib.request` and `json`.

## See also

- [Text from the Cadastre street directory](dibuja-texto-extraido-callejero-catastro.md)
- [PythonCommand](../../referencia/digi3d/python-command.md) · [Text](../../referencia/digi21.base/text.md)
- [GeographicCalculator](../../referencia/digi3d/geographic-calculator.md): `calculate_trigonometric_angle`
- [DrawingView](../../referencia/digi3d/drawing-view.md): `to_geo`
