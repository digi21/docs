# Python
<!-- id: lot-of-points-python -->

El módulo `lop` ofrece una interfaz de programación de aplicaciones (API) para controlar el visor desde
guiones y para añadir comandos al ribbon. Los comandos de Python disponen de las operaciones del kit de
desarrollo de software (SDK) de C y C++ mediante `lop.Host`.

## Escribir y ejecutar un guion

1. Selecciona el panel **Python** de la ventana.
2. Escribe el guion en el editor o carga un archivo `.py` con **Abrir guion**.
3. Pulsa **Ejecutar**.
4. Consulta los mensajes y errores en **Salida**.

El panel **Python** no tiene un botón de apertura en **Visualización**.
Un panel recogido se despliega al mantener el puntero sobre su pestaña durante 400 milisegundos; un clic
en la pestaña lo despliega sin esa espera.

```python
import lop

lop.viewer.PointSizeScale = 3
print(lop.viewer.Domain.Max.Z)
```

| Botón del panel | Función |
|---|---|
| **Abrir guion** | Carga un archivo `.py` en el editor. |
| **Guardar guion** | Guarda el texto en su archivo o pide una ubicación. |
| **Ejecutar** | Ejecuta el texto del editor. |
| **Detener** | Solicita la interrupción del guion en marcha. |

Al pulsar **Ejecutar**, el programa limpia **Salida**. Si el contenido del panel está oculto cuando recibe
una escritura, su pestaña parpadea hasta que el usuario muestra el panel **Salida**. El panel recibe la salida de `print`,
las escrituras en `sys.stdout` y `sys.stderr`, y los errores. Los errores del guion del editor muestran
su tipo y mensaje, sin la traza de llamadas.

El intérprete se inicia cuando el programa necesita ejecutar Python. El guion del editor trabaja en un hilo
de fondo; `lop.viewer` y `lop.run_command` trasladan sus llamadas al hilo de la interfaz.
El panel admite un guion en marcha y deshabilita **Ejecutar** durante esa ejecución.

## Detener un guion

Pulsa **Detener** para enviar `KeyboardInterrupt`. Si el guion no captura la excepción, la ejecución termina
y **Salida** muestra «Guion detenido».

Cada ejecución del editor comienza con un espacio de nombres vacío. El intérprete conserva los módulos
importados durante la sesión.

## Instalar comandos de Python

1. Crea `%AppData%\lop\commands` si la carpeta no existe.
2. Copia los archivos `.py` de comandos y sus iconos en esa carpeta.
3. Reinicia Lot Of Points.
4. Comprueba los botones en las pestañas que declara cada comando.

Los archivos usan `@lop.command` para declarar sus botones y reciben un `lop.Host` en cada ejecución.
El [gestor de extensiones](../../gestor-de-extensiones.md) permite habilitar o deshabilitar cada archivo
y sus comandos. La declaración `@lop.command` solo se admite durante la carga de archivos de comandos;
el editor del panel no registra botones.

La carpeta `Sdk/example/python` contiene **Datos del punto (Python)** y **Seleccionar objeto (Python)**,
con sus iconos en formato PNG (*Portable Network Graphics*). Los comandos usan **Esc** para cancelar; **Detener** corresponde al guion del editor.

## Entorno distribuido

Lot Of Points prepara CPython 3.13 de 64 bits y `numpy` 2.5.4 mediante
`Lop.Scripting/Obtener-Python.ps1`. El entorno no incluye `pip` ni un instalador de paquetes en el panel.
Si el programa no encuentra el intérprete, **Salida** muestra «No hay python3XX.dll en *carpeta*».

Los miembros de `lop.viewer` conservan los nombres de .NET, como `PointSizeScale`.
Los métodos de `lop.Host` usan los nombres del SDK, como `ask_point` y `process_tiles`.
Consulta los [ejemplos](ejemplos.md) y la [referencia del módulo](referencia.md) para los contratos y conversiones.
