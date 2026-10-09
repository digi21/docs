# Web Map Tile Service
<!-- id: sensor-wmts -->

El sensor Web Map Tile Service muestra en la ventana fotogramétrica una capa de un servidor WMTS (*Web Map Tile Service*), que sirve la imagen en teselas precalculadas por niveles de zoom. El modelo tiene una sola imagen y no admite estereoscopía. Digi3D.AI pide al servidor las teselas de la zona visible a medida que te desplazas por el modelo, y usa cada nivel de la matriz de teselas del servidor como un nivel piramidal.

## Crear el modelo

En el cuadro de diálogo [Crear modelo](../../cuadros-de-dialogo/crear-modelo.md), con el sensor **Web Map Tile Service** seleccionado, **Propiedades del sensor** muestra la propiedad **Cadena de conexión**. El botón **...** de la propiedad abre el cuadro de diálogo **Parámetros de conexión a Web Map Tile Service**, que rellena la cadena de conexión con este formato:

```
Server=<URL>;Layer=<capa>;Style=<estilo>;ImageFormat=<formato>;TileMatrixSet=<matriz de teselas>
```

También puedes escribir la cadena directamente en la propiedad.

## Parámetros de conexión a Web Map Tile Service

1. En **URL de la conexión**, escribe la URL **GetCapabilities** del servidor WMTS y pulsa **Conectar**. Digi3D.AI se conecta al servidor y lee sus capacidades. Si la conexión falla, muestra el error y vacía los demás campos.
2. Si la conexión funciona, el cuadro muestra, sin permitir editarlos, el nombre del servicio en **Servicio**, su **Descripción** y sus **Restricciones de acceso**.
3. Elige la capa en el desplegable **Capa**, que lista en orden alfabético los títulos de las capas que publica el servidor. Por defecto, la primera. **Descripción de la capa** muestra la descripción que publica el servidor para la capa elegida.
4. Elige el **Formato de imagen** de las teselas. El desplegable solo ofrece `image/jpeg` e `image/png`, de entre los formatos que el servidor admite para la capa.
5. Elige el **Estilo** de la capa.
6. Elige la **Matriz de teselas**, de entre las que el servidor publica para la capa. **Sistema de referencia de coordenadas** muestra el nombre del sistema de referencia de la matriz elegida, que es también el del modelo.
7. Pulsa **Aceptar**. El cuadro se cierra y la propiedad **Cadena de conexión** recibe los valores elegidos; la capa se guarda con su identificador, no con su título.

**Aceptar** no hace nada mientras no se haya conectado con el servidor. **Cancelar** cierra el cuadro sin cambiar la propiedad.

## Abrir el modelo

Al abrir el modelo, Digi3D.AI se conecta al servidor de la cadena de conexión. Si el archivo de proyecto no contiene la cadena de conexión, muestra el mensaje **El archivo de proyecto no contiene el nodo \<connectionString\> del sensor WMTS**.

## Teselas y caché

Digi3D.AI guarda las teselas que recibe en la carpeta temporal de Windows, en la subcarpeta **Caché WMTS**, por servidor, capa, estilo y matriz de teselas. Una tesela que ya está en la caché no se vuelve a pedir.

Si el servidor no devuelve una imagen, el panel [Resultados](../../paneles/resultados.md) muestra el motivo.
