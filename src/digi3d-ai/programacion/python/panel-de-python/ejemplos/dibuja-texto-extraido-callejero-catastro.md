# Texto del callejero del Catastro
<!-- id: dibuja-texto-extraido-callejero-catastro -->

Archivo: `dibuja_texto_extraido_callejero_catastro.py` · orden `DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO`,
**orden interactiva** ([PythonCommand](../../referencia/digi3d/python-command.md)) sin parámetros.

La orden queda activa **esperando datos del usuario**: cada vez que se pulsa el botón de dato dentro de un
edificio, consulta al servicio web del Catastro de España el nombre y el número de calle de esas
coordenadas e inserta un texto con esa información.

## Cómo se usa

1. Abre un archivo de dibujo cuyo sistema de coordenadas horizontal tenga uno de los códigos EPSG que
   admite el Catastro (la lista está en la variable `codigos_epsg_compatibles` del código).
2. Escribe en la línea de comandos:

   ```
   DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO
   ```

3. Pulsa el botón de dato dentro de cada edificio. Cada pulsación inserta un texto.

## El código

```python
import digi3d
import json
import urllib.request

# Las órdenes en Python son clases que heredan de PythonCommand
class DibujaTextoExtraidoCallejeroCatastro(digi3d.PythonCommand):
    '''
    Implementa una orden que espera a que el usuario pulse un dato, consulta al servidor de catastro de España
    el nombre/número de calle que corresponde al edificio dentro del cual se ha digitalizado el punto e inserta
    un texto con la información devuelta por el servidor de catastro.
    '''

    # Si queremos que Digi3D.AI muestre un nombre de orden en el panel de resultados, tenemos que comunicar
    # el nombre a mostrar en el constructor de la clase base PythonCommand.
    def __init__(self, codigo_epsg):
        digi3d.PythonCommand.__init__(self, 'dibuja_texto_extraido_callejero_catastro')
        self.codigo_epsg = codigo_epsg

    # Digi3D.AI llamará a on_data_down cada vez que el usuario pulsa el botón (o pedal) de dato
    def on_data_down(self, coordenadas):
        calle = self.obten_nombre_calle_servidor_catastro(coordenadas)

        if calle is None:
            return

        # Creamos un texto de digi instanciando un objeto de tipo Text.
        texto = digi3d.Text(calle, coordenadas)

        # La clase base PythonCommand proporciona en la propiedad "view" la ventana de dibujo activa
        self.view.add(texto)
        self.view.redraw()

        # La orden sigue ejecutándose, de manera que el usuario puede introducir muchos textos.
        # Si una vez finalizada la orden el usuario ejecuta la orden UNDO, se eliminarían todos los textos
        # de golpe. No queremos este comportamiento, queremos que si el usuario ha introducido 3 textos, tenga
        # que ejecutar la orden UNDO 3 veces para deshacer todo. Para ello, llamamos al método new_transaction
        # proporcionado por la clase base PythonCommand
        self.new_transaction()

        # Las funciones de eventos como on_data_down tienen que devolver True para que Digi3D.AI sepa que el evento
        # ha sido procesado y que no tiene que seguir buscando otra orden que lo procese
        return True

    def obten_nombre_calle_servidor_catastro(self, coordenadas):
        '''
        Obtiene el nombre de la calle para las coordenadas pasadas por parámetro del servidor de catastro utilizando la API REST de consulta de coordenadas.
        '''

        # Información de las API REST proporcionadas por catastro: https://www.catastro.meh.es/ws/Webservices_Libres.pdf
        # Información de la API REST que utiliza esta orden: http://ovc.catastro.meh.es/OVCServWeb/OVCWcfCallejero/COVCCoordenadas.svc/json/help
        #
        # Nota: el intérprete de Python embebido en Digi3D.AI solo dispone de la librería estándar (no hay paquetes
        # de terceros como "requests"), así que la llamada HTTP se hace con urllib.request, que sí forma parte de la stdlib.

        try:
            url = 'http://ovc.catastro.meh.es/OVCServWeb/OVCWcfCallejero/COVCCoordenadas.svc/json/Consulta_RCCOOR?CoorX={}&CoorY={}&SRS=EPSG:{}'.format(coordenadas[0], coordenadas[1], self.codigo_epsg)
            with urllib.request.urlopen(url) as respuesta:
                datos = json.load(respuesta)
            return datos["Consulta_RCCOORResult"]["coordenadas"]["coord"][0]["ldt"]
        except Exception as e:
            # Si se captura un error, imprimimos la información en el panel de resultados y avisamos al usuario.
            print('Mensaje del error: {}'.format(e))
            digi3d.music(digi3d.MusicType.Error)
            digi3d.show_info('El servidor ha respondido con un error.\n\nObtén más información en el panel de resultados')
            return None

# El servidor de catastro sólo admite coordenadas en los siguientes códigos EPSG.
# La ventana de dibujo proporciona la propiedad "epsg_codes" que devuelve una tupla de dos dimensiones con
# la siguiente información (código_epsg_horizontal, código_epsg_vertical)
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

## Cómo funciona

- **Órdenes interactivas**: un guion como [borra_atr](borra-atr.md) se ejecuta de principio a fin. Una
  orden interactiva, en cambio, es una clase que hereda de
  [`digi3d.PythonCommand`](../../referencia/digi3d/python-command.md) y **reacciona a eventos** del usuario.
  Esta orden implementa `on_data_down(coordenadas)`, que Digi3D.AI llama en cada pulsación de dato.
  - Devolver `True` indica a Digi3D.AI que el evento ya se ha procesado.
  - `self.view` es la ventana de dibujo; la proporciona la clase base.
  - `self.new_transaction()` abre una transacción nueva por cada texto, de modo que cada inserción se
    deshace con un UNDO independiente. Sin esta llamada, un solo UNDO borraría todos los textos a la vez.
- **Llamada al servicio web sin `requests`**: el intérprete embebido solo tiene la biblioteca estándar,
  así que la petición HTTP se hace con `urllib.request.urlopen` y la respuesta JSON se interpreta con
  `json.load`. La orden toma el campo `ldt` de la respuesta, que contiene la calle y el número del
  inmueble.
- **Errores del servicio**: si la petición o la lectura de la respuesta lanza una excepción, la orden
  escribe el error en el panel de resultados, emite el sonido de error y muestra con
  [`digi3d.show_info`](../../referencia/digi3d/functions.md) un cuadro con el mensaje «El servidor ha
  respondido con un error.» y, dos líneas más abajo, «Obtén más información en el panel de resultados».
  En ese caso no inserta ningún texto.
- **Insertar el texto**: `digi3d.Text(texto, coordenadas)` crea un
  [Text](../../referencia/digi21.base/text.md) en esas coordenadas.
- **Arranque**: al final, el guion comprueba que hay una ventana de dibujo abierta y que su código EPSG
  horizontal (`v.epsg_codes[0]`) está en `codigos_epsg_compatibles`. Si las dos condiciones se cumplen,
  lanza la orden con `v.add_command(...)`, que la deja activa esperando datos. Si alguna no se cumple, el
  guion escribe el motivo en el panel de resultados y no lanza la orden.

## Véase también

- [PythonCommand](../../referencia/digi3d/python-command.md) — `on_data_down`, `view`, `new_transaction`
- [Text](../../referencia/digi21.base/text.md)
- [Texto del callejero de Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md) — variante con rotación
