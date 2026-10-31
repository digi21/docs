# Text from the Cadastre street directory
<!-- id: dibuja-texto-extraido-callejero-catastro -->
<!-- origen: aa22168e790bf9148852d063496683f308447d94 -->

File: `dibuja_texto_extraido_callejero_catastro.py` · command `DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO`, an **interactive command** ([PythonCommand](../../referencia/digi3d/python-command.md)) without parameters.

Remains active **awaiting user input**. Each press of the data button inside a building queries Spain's Cadastre web service for the street name and number at those coordinates and inserts that information as text.

## Usage

1. Open a drawing whose horizontal coordinate system uses an EPSG code supported by the Cadastre (listed in `codigos_epsg_compatibles` in the code).
2. Enter on the command line:

   ```
   DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO
   ```

3. Press the data button inside each building. Each press inserts text.

## Code

```python
import digi3d
import json
import urllib.request

# Python commands are classes derived from PythonCommand
class DibujaTextoExtraidoCallejeroCatastro(digi3d.PythonCommand):
    '''
    Implementa una orden que espera a que el usuario pulse un dato, consulta al servidor de catastro de España
    el nombre/número de calle que corresponde al edificio dentro del cual se ha digitalizado el punto e inserta
    un texto con la información devuelta por el servidor de catastro.
    '''

    # To display a command name in the Results pane, pass
    # the display name to the PythonCommand base class constructor.
    def __init__(self, codigo_epsg):
        digi3d.PythonCommand.__init__(self, 'dibuja_texto_extraido_callejero_catastro')
        self.codigo_epsg = codigo_epsg

    # Digi3D.AI calls on_data_down whenever the user presses the data button or pedal
    def on_data_down(self, coordenadas):
        calle = self.obten_nombre_calle_servidor_catastro(coordenadas)

        if calle is None:
            return

        # Create drawing text by instantiating Text.
        texto = digi3d.Text(calle, coordenadas)

        # PythonCommand provides the active drawing window through "view"
        self.view.add(texto)
        self.view.redraw()

        # The command remains active so the user can insert multiple texts.
        # After the command ends, UNDO would delete all texts
        # together. Instead, inserting 3 texts should require
        # 3 UNDO commands to undo everything. Call new_transaction
        # provided by the PythonCommand base class
        self.new_transaction()

        # Event functions such as on_data_down must return True to indicate
        # the event was handled, without searching for another command to handle it
        return True

    def obten_nombre_calle_servidor_catastro(self, coordenadas):
        '''
        Obtiene el nombre de la calle para las coordenadas pasadas por parámetro del servidor de catastro utilizando la API REST de consulta de coordenadas.
        '''

        # Cadastre REST API information: https://www.catastro.meh.es/ws/Webservices_Libres.pdf
        # Information on the REST API used by this command: http://ovc.catastro.meh.es/OVCServWeb/OVCWcfCallejero/COVCCoordenadas.svc/json/help
        #
        # Note: the embedded interpreter has only the standard library (no third-party packages
        # such as "requests"), so HTTP uses urllib.request from the standard library.

        try:
            url = 'http://ovc.catastro.meh.es/OVCServWeb/OVCWcfCallejero/COVCCoordenadas.svc/json/Consulta_RCCOOR?CoorX={}&CoorY={}&SRS=EPSG:{}'.format(coordenadas[0], coordenadas[1], self.codigo_epsg)
            with urllib.request.urlopen(url) as respuesta:
                datos = json.load(respuesta)
            return datos["Consulta_RCCOORResult"]["coordenadas"]["coord"][0]["ldt"]
        except Exception as e:
            # Print caught errors to Results and notify the user.
            print('Mensaje del error: {}'.format(e))
            digi3d.music(digi3d.MusicType.Error)
            digi3d.show_info('El servidor ha respondido con un error.\n\nObtén más información en el panel de resultados')
            return None

# The Cadastre server accepts only the following EPSG codes.
# The drawing window property "epsg_codes" returns a two-element tuple:
# (horizontal_epsg_code, vertical_epsg_code)
codigos_epsg_compatibles = (4230, 4326, 4258, 32627, 32628, 32629, 32630, 32631, 25829, 25830, 25831, 23029, 23030, 23031)

v = digi3d.current_view()
if v is None:
    print('No hay ninguna ventana de dibujo abierta')
elif v.epsg_codes[0] not in codigos_epsg_compatibles:
    print('El código EPSG del sistema de referencia de coordenadas de la ventana de dibujo no es compatible con el servicio de Catastro')
else:
    orden = DibujaTextoExtraidoCallejeroCatastro(v.epsg_codes[0])
    v.add_command(orden)
```

## How it works

- **Interactive commands**: [borra_atr](borra-atr.md) runs from start to finish. An interactive command derives from [`digi3d.PythonCommand`](../../referencia/digi3d/python-command.md) and **responds to user events**. Implements `on_data_down(coordenadas)`, called on each data press.
  - Returning `True` indicates the event was handled.
  - The base class supplies the drawing window in `self.view`.
  - `self.new_transaction()` starts a transaction for each text, allowing separate UNDO steps. Otherwise one UNDO would remove all texts together.
- **Web request without `requests`**: the embedded interpreter has only the standard library, so uses `urllib.request.urlopen` for HTTP and `json.load` for the JSON response. Reads `ldt`, containing street and building number.
- **Service errors**: request or response exceptions are printed to Results, play the error sound and display [`digi3d.show_info`](../../referencia/digi3d/functions.md) with “The server returned an error.” and, two lines below, “Find more information in the results pane”. No text is inserted.
- **Inserting text**: `digi3d.Text(texto, coordenadas)` creates a [Text](../../referencia/digi21.base/text.md) there.
- **Startup**: checks for an open drawing window and a supported horizontal EPSG code (`v.epsg_codes[0]`) in `codigos_epsg_compatibles`. If both hold, `v.add_command(...)` starts the command awaiting input. Otherwise prints the reason to Results without starting.

## See also

- [PythonCommand](../../referencia/digi3d/python-command.md): `on_data_down`, `view`, `new_transaction`
- [Text](../../referencia/digi21.base/text.md)
- [Text from Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md): rotation variant
