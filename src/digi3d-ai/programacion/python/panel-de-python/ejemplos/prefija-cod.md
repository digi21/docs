# Prefijar los códigos de la geometría seleccionada
<!-- id: prefija-cod -->

Archivo: `prefija_cod.py` · **orden interactiva** ([PythonCommand](../../referencia/digi3d/python-command.md)) con un parámetro.

La orden antepone un prefijo a los códigos de cada geometría que el usuario selecciona con un dato. Está
pensada para los proyectos de actualización cartográfica en los que cada elemento está en uno de estos
estados:

| Código | Estado |
|---|---|
| `ORO_01_LN` | Sin cambios respecto a la cartografía original. |
| `ACT_ORO_01_LN` | Nuevo o modificado tras la fotointerpretación. |
| `BAI_ORO_01_LN` | Desaparecido tras la fotointerpretación. |

Cambiar el código a mano en miles de geometrías es lento. Con esta orden basta con hacer clic en cada
geometría.

## Cómo se usa

1. Si tu versión de Digi3D.AI no instala las órdenes del repositorio ComandosDigi3DPython en la carpeta
   `OrdenesPython` de su carpeta de instalación, copia `prefija_cod.py` en el directorio de
   macroinstrucciones. La página
   [Órdenes en Python del repositorio ComandosDigi3DPython](../../ordenes-python.md) explica en qué
   carpetas busca Digi3D.AI el archivo y cómo se modifica una orden instalada.
2. Asigna la orden a dos teclas o a dos botones de una barra de herramientas, una con cada prefijo:

   ```
   PREFIJA_COD=ACT_
   PREFIJA_COD=BAI_
   ```

3. Pulsa la tecla o el botón del prefijo que quieras aplicar y haz clic en cada geometría. La orden sigue
   activa hasta que pulsas reset.

La orden no cambia los códigos que ya empiezan por `ACT_`, por `BAI_` o por el prefijo indicado. Si todos
los códigos de la geometría tienen ya un prefijo, la geometría no cambia y suena un pitido. Cada código
conserva su tabla y su registro de base de datos. Cada geometría modificada queda en una transacción
propia, así que cada UNDO deshace el cambio de una sola geometría.

Si no se indica exactamente un parámetro, la orden emite el sonido de error y muestra un cuadro con el
mensaje «Falta el prefijo.» y la forma de uso.

La orden necesita una versión de Digi3D.AI con
[`PythonCommand.select_geometry`](../../referencia/digi3d/python-command.md#seleccionar-una-geometría).

## El código

```python
import digi3d

USO = 'PREFIJA_COD=[prefijo]'

# Prefijos de los códigos que ya están tratados. El prefijo que recibe la orden se añade a esta lista.
PREFIJOS = ('ACT_', 'BAI_')


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


class PrefijaCod(digi3d.PythonCommand):
    def __init__(self, prefijo):
        digi3d.PythonCommand.__init__(self, 'prefija_cod')
        self.prefijo = prefijo
        self.prefijos = PREFIJOS + (prefijo,)

    def on_set_focus(self):
        digi3d.print_statusbar('Selecciona la geometría a la que añadir el prefijo {}'.format(self.prefijo))

    # Con cada dato pedimos la geometría más próxima, como hace el pedal de tentativo. Digi3D.AI la entrega en
    # on_geometry_selected. El filtro descarta las geometrías de los archivos de referencia, que no se pueden modificar.
    def on_data_up(self, coordenadas):
        ruta = self.view.drawing_file.path
        self.select_geometry(coordenadas, lambda geometria: geometria.file is not None and geometria.file.path == ruta)
        return True

    def on_geometry_selected(self, geometria, coordenadas, primer_vertice, segundo_vertice):
        if all(codigo.code.startswith(self.prefijos) for codigo in geometria.codes):
            digi3d.music(digi3d.MusicType.Beep)
            return

        # Las geometrías del dibujo son de solo lectura: se borra la original y se añade un clon con los códigos nuevos.
        clon = geometria.clone()
        clon.codes = tuple(self.prefija(codigo) for codigo in geometria.codes)
        self.view.delete(geometria)
        self.view.add(clon)
        self.view.redraw()

        # Una transacción por geometría: cada UNDO deshace el cambio de una sola geometría.
        self.new_transaction()

    def prefija(self, codigo):
        if codigo.code.startswith(self.prefijos):
            return codigo

        nuevo = digi3d.FeatureCode(self.prefijo + codigo.code)
        nuevo.table = codigo.table
        nuevo.id = codigo.id
        return nuevo


v = digi3d.current_view()
if len(argv) != 1:
    error('Falta el prefijo.')
elif v is None:
    print('No hay ninguna ventana de dibujo abierta')
else:
    # Variable global: el objeto de Python sigue existiendo después de terminar el guion.
    orden = PrefijaCod(argv[0])
    v.add_command(orden)
```

## Cómo funciona

- **El parámetro**: Digi3D.AI deja los parámetros de la orden en la variable global `argv`. Con
  `PREFIJA_COD=BAI_`, `argv` vale `('BAI_',)`. Digi3D.AI separa los parámetros por espacios, tabuladores y
  signos `=`, así que el prefijo no puede contener ninguno de esos caracteres. Si `argv` no tiene
  exactamente un elemento, la función `error` emite el sonido de error y muestra el motivo y la forma de
  uso con [`digi3d.show_info`](../../referencia/digi3d/functions.md), y el guion no crea la orden.
- **La selección**: en `on_data_up` la orden llama a
  [`select_geometry`](../../referencia/digi3d/python-command.md#seleccionar-una-geometría), que busca la
  geometría más próxima al dato igual que el pedal de tentativo. Digi3D.AI entrega la geometría encontrada
  en el evento `on_geometry_selected`.
- **El filtro**: el segundo argumento de `select_geometry` es una función que decide qué geometrías se
  pueden seleccionar. La propiedad [`file`](../../referencia/digi21.base/geometry.md#propiedades) de cada
  geometría devuelve el archivo que la contiene. La orden solo acepta las geometrías cuyo archivo es el
  archivo de dibujo activo (`self.view.drawing_file`), porque las de los archivos de referencia no se
  pueden modificar.
- **Los prefijos**: `str.startswith` admite una tupla y devuelve `True` si la cadena empieza por
  cualquiera de sus elementos. La tupla `self.prefijos` contiene `ACT_`, `BAI_` y el prefijo recibido.
- **El cambio de códigos**: las geometrías del dibujo son de solo lectura. La orden crea un clon con
  `clone()`, le asigna los códigos nuevos, borra la geometría original con `view.delete` y añade el clon
  con `view.add`. Cada código nuevo es un
  [FeatureCode](../../referencia/digi21.base/featurecode.md) con la tabla y el identificador del código
  original, como en el ejemplo [Renombrar un código manteniendo sus atributos](renomcod-manteniendo-atributos.md).
- **Deshacer**: `self.new_transaction()` cierra la transacción de deshacer de la geometría y abre otra
  para la siguiente.
- **La variable `orden`**: Digi3D.AI ejecuta los guiones en el espacio de nombres de `__main__`, que se
  conserva entre ejecuciones. El guion guarda la orden en una variable global para que el objeto de Python
  siga existiendo mientras la orden está activa, igual que el ejemplo
  [Texto del callejero del Catastro](dibuja-texto-extraido-callejero-catastro.md).

## Véase también

- [PythonCommand](../../referencia/digi3d/python-command.md) — `select_geometry`, `on_geometry_selected`, `new_transaction`
- [FeatureCode](../../referencia/digi21.base/featurecode.md)
- [Renombrar un código manteniendo sus atributos](renomcod-manteniendo-atributos.md)
