# Novedades de la versión

Este tema enlaza con la información referente a novedades en Digi3D.NET con respecto a versiones anteriores.

## Sistemas de referencia de coordenadas

| Título | Descripción |
| :--- | :--- |
| [Sistemas de coordenadas de referencia](SistemasDeReferenciaDeCoordenadas.html) | Digi3D.NET sabe en todo momento el sistema de referencia de coordenadas en el que están cada una de los componentes \(ventanas, archivos de dibujo, ...\) y es capaz de realizar transformaciones de coordenadas entre los distintos componentes. |

## Modelos Digitales del Terreno

| Título | Descripción |
| :--- | :--- |
| Creación de archivos [.mdt]() | Digi3D.NET ha perdido la capacidad de exportar a formato [.mdt]() las triangulaciones generadas con la orden [TRIANGULAR](e315681f-558a-47b0-9b39-0fd5c2e10061). A partir de esta versión es necesario crearlos con [MDTopX](http://www.digi21.net/MDTop). |
| Visualización de triangulaciones | Digi3D.NET ha perdido la capacidad de visualizar las triangulaciones como triángulos o como curvados virtuales. Únicamente se pueden visualizar como puntos. Esta limitación será eliminada con el tiempo. |

## Características eliminadas

<table>
  <thead>
    <tr>
      <th style="text-align:left">T&#xED;tulo</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Importador de aerotriangulaciones</td>
      <td style="text-align:left">Digi3D.NET carga de forma nativa los archivos generados por todos la mayor&#xED;a
        de programas de c&#xE1;lculo de aerotriangulaciones, de forma que ya no
        es necesario importar aerotriangulaciones.</td>
    </tr>
    <tr>
      <td style="text-align:left">&#xD3;rdenes <em>VBSCRIPT, JSCRIPT</em>
      </td>
      <td style="text-align:left">
        <p>Hemos eliminado la posibilidad de crear &#xF3;rdenes mediante guiones
          en Visual Basic Script y en Java Script.
          <br />Digi3D.NET ahora es extensible mediante ensamblados implementados en cualquier
          lenguaje de programaci&#xF3;n .NET.</p>
        <p>Puedes aprender a programar Digi3D.NET en nuestro <a href="http://www.screencast.com/users/Digi21/folders/Curso%20de%20programacion%20de%20Digi3D.NET">curso de programaci&#xF3;n de Digi3D.NET en v&#xED;deo</a>.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Orden <em>DIGI.TAB</em>
      </td>
      <td style="text-align:left">Esta orden ha sido sustituida por el programa externo <a href="IntroduccionAlEditorDeTablasDeCodigos.html">Editor de tablas de c&#xF3;digos</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Orden <em>PATRONS</em>
      </td>
      <td style="text-align:left">
        <p>Hemos eliminado la posibilidad de mostrar patrones en la ventana fotogram&#xE9;trica
          por varios motivos.</p>
        <p>Si la ventana fotogram&#xE9;trica est&#xE1; mostrando un modelo estereosc&#xF3;pico
          las simbolog&#xED;as de las lineas se proyectan con distintos tama&#xF1;os
          en cada imagen, generando un efecto de falso relieve.</p>
        <p>Digi3D.NET muestra vectores en tiempo real. Representar en tiempo real
          simbolog&#xED;as requiere tarjetas gr&#xE1;ficas de alta gama.</p>
      </td>
    </tr>
  </tbody>
</table>

## Cambios en el comportamiento de órdenes

| Título | Descripción |
| :--- | :--- |
| Orden [TRANSFORMA](5ca8c0c1-fad1-4b2b-b114-0b0f0d87be0d) | Han desaparecido la opciones _Cambio de huso_ y _Transformación con archivo de rejilla en formato NTV2._ A partir de esta versión las transformaciones de coordenadas se realizan [exportando a un nuevo archivo](CambiandoElSistemaDeReferenciaDeCoordenadasDeUnArchivoDeDibujo.html). |

