# Cómo ejecutar guiones de Python

Digi3D.NET puede ejecutar guiones de Python de **tres** maneras: desde el panel, como una
orden (por su nombre, desde la consola de órdenes) y como control de calidad.

## 1. Desde el panel de Guiones Python

Un panel acoplable (menú **Ver**) donde puedes **teclear o pegar** un guion y ejecutarlo al
momento. Es lo más cómodo para probar y para tareas puntuales.

```python
import digi3d

view = digi3d.current_view()
digi3d.show_results(True)
digi3d.add_result(f"El dibujo tiene {len(view)} geometrías")
```

## 2. Como una orden (desde la consola de órdenes)

Puedes ejecutar un guion **por su nombre**, como si fuera una orden nativa de Digi3D.NET:

1. Guarda el archivo `.py` en el **directorio de macroinstrucciones**, que se configura en
   **Herramientas → Configuración → DigiNG → Directorio de macroinstrucciones**.
2. Con una ventana de dibujo abierta, pulsa **Enter**: en la **barra de estado** aparece un
   campo de texto para escribir un **nombre de orden** y sus parámetros.
3. Escribe el nombre y, si la orden recibe parámetros, un `=` seguido de los parámetros
   separados por espacios.

Cuando el nombre **no** corresponde a ninguna orden nativa, Digi3D.NET busca en el directorio
de macroinstrucciones un archivo `.py` que se llame igual; si lo encuentra, lo carga en el
intérprete y lo ejecuta pasándole los parámetros. Para el usuario es como una orden más.

Por ejemplo, con `FILTRAR.py` en el directorio de macroinstrucciones, al escribir:

```
FILTRAR=020124 020123 1
```

como `FILTRAR` no es una orden nativa, se carga `FILTRAR.py` y se ejecuta con esos tres
parámetros.

### Recibir los parámetros: `argv`

Dentro del guion, los parámetros llegan en la lista global **`argv`**, como **cadenas** y en
el orden en que se escribieron:

```python
import digi3d

if len(argv) < 1:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception("Falta el código")

codigo = argv[0]
distancia = float(argv[1]) if len(argv) > 1 else 1.0
# ... usa codigo y distancia
```

> Si quieres una orden **interactiva** (que espera pulsaciones del usuario sobre el dibujo),
> en lugar de un guion lineal crea una clase que herede de
> [PythonCommand](python-command.md). Tienes ejemplos en
> [Texto del callejero del Catastro](../ejemplos/dibuja-texto-extraido-callejero-catastro.md)
> y [de Azure Maps](../ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md).

## 3. Como control de calidad

Una función de Python puede actuar como **control de calidad** de un código: Digi3D.NET la
ejecuta sobre las geometrías que tienen ese código para comprobar que cumplen ciertas reglas,
ya sea bajo demanda o en tiempo real mientras se digitaliza. Se explican en
[Controles de calidad](controles-de-calidad.md).

## Véase también

- [Ejemplos de programación](../ejemplos/README.md) — guiones y órdenes listos para usar.
- [Controles de calidad](controles-de-calidad.md)
- [El módulo `digi3d`](README.md)
