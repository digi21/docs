# Dibujando puntos, patrón y escala de dibujo

1. Pulsa los prismáticos en la [Barra de herramientas Código](BarraDeHerramientasCodigo.html). Aparece el cuadro de diálogo **Seleccione códigos**, aquí podemos ver los distintos códigos que tiene la tabla de códigos que seleccionamos cuando creamos el archivo de dibujo:

<table>
  <thead>
    <tr>
      <th style="text-align:left">Columna</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">C&#xF3;digo</td>
      <td style="text-align:left">Nombre del c&#xF3;digo</td>
    </tr>
    <tr>
      <td style="text-align:left">Color</td>
      <td style="text-align:left">Color de visualizaci&#xF3;n del c&#xF3;digo en la ventana de dibujo</td>
    </tr>
    <tr>
      <td style="text-align:left">Tipo</td>
      <td style="text-align:left">
        <p>Lineal</p>
        <p>Puntual</p>
        <p>Virtual</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Descripci&#xF3;n</td>
      <td style="text-align:left">Descripci&#xF3;n del c&#xF3;digo</td>
    </tr>
  </tbody>
</table>

* Si Digi3D.NET está en [modo preparado]() y el código activo es un [código lineal](), al pusar el [botón de dato]() sobre la ventana de dibujo, Digi3D.NET ejecutará de manera automática la orden [**LINEA**](LINEA.html) y dibujará una polilínea.
* Si Digi3D.NET está en **modo preparado** y el código activo es un [código puntual](), al pulsar el **botón de dato** sobre la ventana de dibujo, Digi3D.NET ejecutará la orden [**PUNTO**](PUNTO.html).

Sigue los siguientes pasos para digitalizar un punto:

1. Asegúrate de que Digi3D.NET esta en **modo preparado**. Si no es así, pulsa la tecla **Esc** del teclado o el [botón de cancelar]() hasta que Digi3D.NET esté en **modo preparado**. 
2. Selecciona un **código puntual**.
3. Pulsa con el **botón de dato** sobre la ventana de dibujo. Digi3D.NET insertará un punto en las coordenadas en las que has pulsado el botón de dato.

Sigue los siguientes pasos para activar la representación gráfica \(patrón\) del punto que acabas de dibujar:

1. Ejecuta la orden [**PATRON**](PATRON.html), para poder visualizar la representación de ese código puntual, para ello, selecciona el botón correspondiente a esta orden en la [Barra de herramientas Parámetros de visualización](BarraDeHerramientasParametrosDeVisualizacion.html).

La escala de representación de los patrones varía en función de la **Escala activa** en la pestaña **Archivo de dibujo**, del cuadro de diálogo [Nuevo Proyecto](CuadroDeDialogoNuevoProyecto.html).

Sigue los siguientes pasos para modificar la escala de representación del punto que acabas de digitalizar:

1. **Cierra** la ventana de dibujo.
2. Selecciona la opción de menú **Archivo/Nuevo/Abrir modelo fotogramétrico o archivo de dibujo...** Aparecerá el cuadro de diálogo **Nuevo Proyecto**.
3. Selecciona la pestaña **Archivo de dibujo**.
4. En **Parámetros de configuración/Registro/Escala** modifica el valor que tiene en ese momento por otro para modificar la escala.
5. Pulsa el botón **Aceptar**.
6. Activa la visualización de patrones pulsando el botón correspondiente a la orden Patron en la **Barra de herramientas Parámetros de visualización**.
7. Repite el proceso varias veces con distintos valores de escala para que veas la diferencia de utilizar una escala u otra.

El valor de la **Escala**, afecta únicamente a la representación, no afecta al registro de entidades.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Dibujando%20puntos%20y%20activacion%20de%20patron%20y%20funcion%20del%20parametro%20escala.mp4" %}



