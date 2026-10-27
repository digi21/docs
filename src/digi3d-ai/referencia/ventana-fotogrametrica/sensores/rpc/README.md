# Satélite RPC
<!-- id: rpc -->

El sensor Satélite RPC permite trabajar con imágenes de satélite que utilizan el modelo de coeficientes polinómicos racionales (RPC, *Rational Polynomial Coefficients*).

Puede obtener los coeficientes RPC de las imágenes de distintos formatos y proveedores. Consulta sus [extensiones](extensiones/README.md).

Con el sensor estereoscópico, la opción **Ventana fotogramétrica/Ajuste en bloque de RPCs** corrige los coeficientes RPC de las dos imágenes a partir de puntos de apoyo. Consulta [Ajuste en bloque de RPCs](ajuste-en-bloque-de-rpcs.md).

## Proyectos con varios pares

Un archivo de proyecto fotogramétrico (`.d3dprj`) puede reunir varios pares del sensor **Satélite RPC (estereoscópico)**, por ejemplo cuando las imágenes de un solo par no cubren toda la zona de trabajo. El panel [Proyecto fotogramétrico](../../../paneles/proyecto-fotogrametrico.md) carga cada par al seleccionarlo y puede cambiar de par automáticamente según la posición del cursor.

Para crear el proyecto:

1. Pulsa el botón **Nuevo** del panel Proyecto fotogramétrico. Se abre el cuadro de diálogo [Crear proyecto fotogramétrico](../../../cuadros-de-dialogo/crear-proyecto-fotogrametrico.md).
2. Selecciona el sensor **Satélite RPC (estereoscópico)**.
3. Crea una pasada y añade los pares: **Crear** crea el archivo `.d3d` de un par nuevo y **Cargar** añade un archivo `.d3d` existente.
4. Pulsa **Aceptar**. Digi3D.AI guarda el archivo de proyecto y lo carga en el panel.

Digi3D.AI abre el archivo como un proyecto de pares de este sensor si el primer archivo `.d3d` existente del proyecto es del sensor **Satélite RPC (estereoscópico)**. Un proyecto que mezcla pares del sensor **Satélite RPC (estereoscópico)** con modelos de otros sensores no se carga completo: Digi3D.AI determina el tipo de proyecto a partir del sensor del primer archivo `.d3d` existente, y los modelos de los demás sensores no se pueden cargar.

Al cargar el proyecto, Digi3D.AI lee los coeficientes RPC, la orientación absoluta y la corrección del [Ajuste en bloque de RPCs](ajuste-en-bloque-de-rpcs.md) de cada par, sin leer las imágenes. Si Digi3D.AI no puede leer un par, el panel Resultados muestra el mensaje «El par del archivo de modelo *ruta* queda excluido del cambio automático de modelo. Motivo: *motivo*». El par sigue en el panel Proyecto fotogramétrico: al pulsar sobre el par, Digi3D.AI intenta cargar el par de nuevo y, si vuelve a fallar, muestra el motivo. El cambio automático de modelo y los botones **Ir al modelo anterior**, **Ir al siguiente modelo**, **Ir al modelo de la pasada anterior** e **Ir al modelo de la pasada siguiente** no cargan los pares que Digi3D.AI no ha podido leer al cargar el proyecto.

El desplegable **Punto de vista** del panel Proyecto fotogramétrico muestra un único punto de vista: **Pares estereoscópicos**.

Si el sistema de referencia de coordenadas de los coeficientes RPC de un par no tiene componente vertical y la opción [Solicitar sistema vertical para sensores](../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) está en **Sí**, el cuadro de selección del sistema vertical aparece al cargar el proyecto, una vez por cada sistema horizontal distinto. Cuando Digi3D.AI carga un par, usa el sistema vertical que el usuario eligió durante la carga del proyecto para el sistema horizontal de ese par, sin solicitar de nuevo esa selección.

### Cambio automático de par

Con el botón **Cambio automático de modelo** del panel Proyecto fotogramétrico activado, cuando el cursor se detiene Digi3D.AI elige el par así:

1. Para cada imagen, calcula L = (longitud del cursor − `LONG_OFF`) / `LONG_SCALE` y P = (latitud del cursor − `LAT_OFF`) / `LAT_SCALE`, con los desplazamientos y las escalas de los coeficientes RPC de la imagen. La longitud y la latitud del cursor, los desplazamientos `LONG_OFF` y `LAT_OFF` y las escalas `LONG_SCALE` y `LAT_SCALE` se expresan en grados. `LONG_OFF` y `LAT_OFF` suelen aproximarse a la longitud y la latitud del centro de la imagen, respectivamente; `LONG_SCALE` y `LAT_SCALE`, a la mitad de la extensión de la imagen en longitud y en latitud, respectivamente.
2. Para cada par, calcula el máximo de los valores absolutos de las coordenadas normalizadas del cursor, |L| y |P|, en las dos imágenes del par. Un máximo no mayor que 1 indica que el cursor está dentro de los rectángulos |L| ≤ 1 y |P| ≤ 1 de las dos imágenes, que aproximan la zona cubierta por cada imagen.
3. Carga el par cuyo máximo de los valores absolutos de las coordenadas normalizadas del cursor, calculado sobre las dos imágenes, sea el menor entre los pares disponibles para el cambio automático de modelo, aunque el cursor esté fuera de las zonas cubiertas por las imágenes de todos los pares.

Los botones **Ir al modelo de la pasada anterior** e **Ir al modelo de la pasada siguiente** seleccionan, respectivamente, la pasada anterior o la siguiente y cargan, entre los pares de esa pasada, aquel cuyo máximo de los valores absolutos de las coordenadas normalizadas del cursor, calculado sobre las dos imágenes, sea el menor entre los pares de la pasada seleccionada.
