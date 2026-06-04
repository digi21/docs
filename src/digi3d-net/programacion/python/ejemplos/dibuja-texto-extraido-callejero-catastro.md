# Texto del callejero del Catastro

Archivo: `dibuja_texto_extraido_callejero_catastro.py` · **orden interactiva** ([PythonCommand](../guiones/python-command.md)).

Es una orden que se queda **esperando datos del usuario**: cada vez que pulsas el botón de dato
dentro de un edificio, consulta al servicio web del Catastro de España el nombre/número de calle de
esas coordenadas e inserta un texto con esa información.

## El código

```python
import digi3d
import json
import urllib.request

# Una orden interactiva es una clase que hereda de PythonCommand.
class DibujaTextoExtraidoCallejeroCatastro(digi3d.PythonCommand):
    def __init__(self, codigo_epsg):
        digi3d.PythonCommand.__init__(self, 'dibuja_texto_extraido_callejero_catastro')
        self.codigo_epsg = codigo_epsg

    # Digi3D.NET llama a on_data_down cada vez que el usuario pulsa el botón (o pedal) de dato.
    def on_data_down(self, coordenadas):
        calle = self.obten_nombre_calle_servidor_catastro(coordenadas)
        if calle is None:
            return

        texto = digi3d.Text(calle, coordenadas)
        self.view.add(texto)
        self.view.redraw()

        # Cada texto debe deshacerse por separado: abrimos una transacción nueva.
        self.new_transaction()

        # Devolver True indica que el evento ya está procesado.
        return True

    def obten_nombre_calle_servidor_catastro(self, coordenadas):
        # El intérprete embebido solo tiene la stdlib (no "requests"): usamos urllib.request.
        try:
            url = ('http://ovc.catastro.meh.es/OVCServWeb/OVCWcfCallejero/COVCCoordenadas.svc/json/'
                   'Consulta_RCCOOR?CoorX={}&CoorY={}&SRS=EPSG:{}').format(
                       coordenadas[0], coordenadas[1], self.codigo_epsg)
            with urllib.request.urlopen(url) as respuesta:
                datos = json.load(respuesta)
            return datos["Consulta_RCCOORResult"]["coordenadas"]["coord"][0]["ldt"]
        except Exception as e:
            print('Mensaje del error: {}'.format(e))
            digi3d.music(digi3d.MusicType.Error)
            digi3d.show_info('El servidor ha respondido con un error.\\n\\nObtén más información en el panel de resultados')
            return None

# El servicio del Catastro solo admite ciertos códigos EPSG.
codigos_epsg_compatibles = (4230, 4326, 4258, 32627, 32628, 32629, 32630, 32631,
                            25829, 25830, 25831, 23029, 23030, 23031)

v = digi3d.current_view()
if v is None:
    print('No hay ninguna ventana de dibujo abierta')
elif v.epsg_codes[0] not in codigos_epsg_compatibles:
    print('El código EPSG de la ventana no es compatible con el servicio de Catastro')
else:
    v.add_command(DibujaTextoExtraidoCallejeroCatastro(v.epsg_codes[0]))
```

## Cómo funciona

- **Órdenes interactivas**: a diferencia de los guiones anteriores (que se ejecutan de principio a
  fin), una orden interactiva es una clase que hereda de
  [`digi3d.PythonCommand`](../guiones/python-command.md) y **reacciona a eventos** del usuario. Aquí
  implementamos `on_data_down(coordenadas)`, que Digi3D.NET llama en cada pulsación de dato.
  - Devolver `True` le dice a Digi3D.NET que el evento ya se ha procesado.
  - `self.view` es la ventana de dibujo (la proporciona la clase base).
  - `self.new_transaction()` abre una transacción nueva por cada texto, de modo que cada inserción se
    deshace con un UNDO independiente (sin esto, un solo UNDO borraría todos los textos a la vez).
- **Llamada al servicio web sin `requests`**: como el intérprete embebido solo tiene la biblioteca
  estándar, la petición HTTP se hace con `urllib.request.urlopen` y la respuesta JSON se interpreta
  con `json.load`.
- **Insertar el texto**: `digi3d.Text(texto, coordenadas)` crea un
  [Text](../referencia/digi21.base/text.md) en esas coordenadas.
- **Arranque**: al final se comprueba el sistema de coordenadas (`v.epsg_codes`) y, si es compatible,
  se lanza la orden con `v.add_command(...)`, que la deja activa esperando datos.

## Véase también

- [PythonCommand](../guiones/python-command.md) — `on_data_down`, `view`, `new_transaction`
- [Text](../referencia/digi21.base/text.md)
- [Texto del callejero de Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md) — variante con rotación
