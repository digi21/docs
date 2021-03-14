# Dibujando las primeras líneas

Conoce los botones del ratón:

| Botón | Descripción |
| :--- | :--- |
| Botón derecho | Introduce coordenadas |
| Botón central | Desencadena la búsqueda de una coordenada \(snap o tentativo\) |
| Botón derecho | Finaliza o cancela |

Para dibujar tu primera línea sigue los siguientes pasos:

1. Selecciona un código lineal en la [Barra de herramientas Código](BarraDeHerramientasCodigo.html), pulsando sobre la flecha que está al lado de los prismáticos, por ejemplo el _010123 LIMITE PROVINCIAL_
2. Si al mover el cursor sobre la ventana de dibujo de Digi3D.NET no muestra una cruz y además no ves coordenadas en la [Barra de herramientas de coordenadas](BarraDeHerramientasCoordenadas.html), tienes que capturar el ratón en la ventana de dibujo. Haz **clic** en pantalla para capturar el cursor.
3. Pulsa sobre la ventana de dibujo con el [botón de dato]() del ratón, si el código que está activo en ese momento es un código lineal, Digi3D.NET ejecuta automáticamente la orden [**LINEA**](LINEA.html).

   La Barra de Mensajes ocupa la parte inferior de Digi3D.NET. Esta barra dispone de dos ventanas:

   * En la ventana de la izquierda, Digi3D.NET muestra el nombre de la orden que se está ejecutando. Si no se está ejecutando ninguna orden, mostrará la palabra **Preparado**.
   * En la ventana derecha, se muestran los mensajes de la orden que se está ejecutando.

4. Comprueba que tras introducir el primer punto de la línea, Digi3D.NET está mostrando en la venta izquierda la palabra LINEA y en la parte derecha, la orden LINEA está solicitando que digitalices el siguiente punto.
5. Pulsa con [botón de dato]() del ratón sobre la ventana de dibujo para digitalizar el siguiente punto. Puedes digitalizar tantos vértices como quieras puesto que aunque la orden se llame LINEA, lo que se están dibujando son [polilíneas]().
6. Pulsa sobre la ventana de dibujo con el [botón de cancelar]() del ratón para **finalizar** la orden LINEA.

Si introduces un único vértice y pulsas el [botón de cancelar]() antes de introducir el segundo vértice, no se almacenará ninguna entidad.

## Video

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Dibujando%20nuestras%20primeras%20lineas.mp4" %}



