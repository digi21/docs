# OFF\_EXPRESION\_PYTHON

Desactiva la visualización de geometrías que devuelvan verdadero en la [expresión Python](../../../../editor-de-tablas-de-codigos/pestanas/selecciones.md) pasada por parámetros.

## Parámetros

<table>
  <thead>
    <tr>
      <th style="text-align:left">N&#xFA;mero de par&#xE1;metro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
      <th style="text-align:left">Opcional</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1</td>
      <td style="text-align:left">
        <p>Expresi&#xF3;n Python a analizar por cada una de las geometr&#xED;as de
          todos los archivos de dibujo cargados.
          <br />
        </p>
        <p>o
          <br />
        </p>
        <p>Conjunto de <a href="../../../../editor-de-tablas-de-codigos/pestanas/selecciones.md">selecciones</a> almacenadas
          en la tabla de c&#xF3;digos. Digi3D.NET entender&#xE1; que deber&#xE1;
          extraer la expresi&#xF3;n de una selecci&#xF3;n en la tabla de c&#xF3;digos
          si esta comienza por #.</p>
      </td>
      <td style="text-align:left">No.</td>
    </tr>
  </tbody>
</table>

### Ejemplos

Para apagar todas las geometrías que tengan exactamente 3 vértices:

```text
OFF_EXPRESION_PYTHON=digi3DGeometry.Points.Count == 3
```

Para apagar todas las geometrías que tengan asignado en la base de datos como propietario "Dylan" y que además en la base de datos tengan asignado un valor en el campo Plantas mayor que 3 y que además tengan como primer código el código '010101' y que además tengan exactamente 7 vértices:

```text
OFF_EXPRESION_PYTHON=Propietario == 'Dylan' and Plantas > 3 and digi3DGeometry.Codes[0].Name == '010101' and digi3DGeometry.Points.Count == 7
```

Para apagar todas las geometrías que satisfagan la [selección ](../../../../editor-de-tablas-de-codigos/pestanas/selecciones.md)"Edificios" almacenada en la tabla de códigos:

```text
OFF_EXPRESION_PYTHON=#Edificios
```

Para apagar todas las geometrías que satisfagan tanto la [selección ](../../../../editor-de-tablas-de-codigos/pestanas/selecciones.md)"Edificios" como la selección "Deportivo" almacenadas en la tabla de códigos:

```text
OFF_EXPRESION_PYTHON=#Edificios #Deportivo
```

## Características de la orden

| Tipo de orden | [Orden interactiva](off.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

