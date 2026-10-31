# Format
<!-- id: formato -->
<!-- origen: 3053796c5432a335d8a6190490c9e766e1c65346 -->

The key configuration file has a Keyboard root node containing Key child nodes.

Key nodes have these attributes:

* **Name**: key name, assigned automatically by Windows according to language.
* **Description**: description of the assigned command sequence's function.
* **Control**: **true** if _Control_ must be held to identify this key.
* **Shift**: **true** if _Shift_ must be held to identify this key.

The command sequence is specified in a CDATA child of Key.

```markup
<?xml version="1.0" encoding="utf-8"?>
<teclasMnu:Keyboard xmlns:teclasMnu="http://schemas.digi21.net/Digi3D/keyboard/v1.0">
    <teclasMnu:Key Name="AV PAG" Description="Zoom de acercar (ventana fotogramétrica)"><![CDATA[plot_zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="RE PAG" Description="Zoom de alejar (ventana fotogramétrica)"><![CDATA[plot_zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="F3" Description="Zoom extendido (ventana fotogramétrica)"><![CDATA[plot_zoome]]></teclasMnu:Key>
    <teclasMnu:Key Name="F4" Description="Zoom 1x1 (ventana fotogramétrica)"><![CDATA[rest_zoom1x1]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE ADICION" Description="Aumenta la velocidad en XY del dispositivo de entrada"><![CDATA[speed_incr_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE SUSTRACCION" Description="Disminuye la velocidad en XY del dispositivo de entrada"><![CDATA[speed_decr_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE MULTIPLICACION" Description="Aumenta la velocidad en Z del dispositivo de entrada"><![CDATA[speed_incr_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE DIVISION" Description="Disminuye la velocidad en Z del dispositivo de entrada"><![CDATA[speed_decr_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="F2" Description="Itera por los distintos tipos de índice disponibles en la ventana fotogramétrica"><![CDATA[pointer_type]]></teclasMnu:Key>
    <teclasMnu:Key Name="B" Description="Intenta posarse en Z en un modelo estereoscópico"><![CDATA[correlate]]></teclasMnu:Key>
    <teclasMnu:Key Name="TABULACION" Description="Cambia al siguiente archivo de asignación de teclas"><![CDATA[change_keys_mnu]]></teclasMnu:Key>
    <teclasMnu:Key Name="P" Control="true" Description="Desplaza la ventana fotogramétrica a un punto de apoyo"><![CDATA[go_to_control_point]]></teclasMnu:Key>
    <teclasMnu:Key Name="BARRA ESPACIADORA" Description="Captura/libera el ratón como dispositivo de entrada en la ventana fotogramétrica"><![CDATA[raton_digi3d]]></teclasMnu:Key>
    <teclasMnu:Key Name="A"><![CDATA[zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="A" Shift="true"><![CDATA[zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="RETROCESO" Control="true"><![CDATA[delete_last]]></teclasMnu:Key>
    <teclasMnu:Key Name="C"><![CDATA[close_ent]]></teclasMnu:Key>
</teclasMnu:Keyboard>
```

Normally edit this file with [KEY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tecla.md), rather than manually.

Editing with KEY adds a stylesheet to the .XML so it can be displayed as a printable HTML table:

```markup
<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xml" href="#style1"?>
<!DOCTYPE Keyboard [
    <!ATTLIST xsl:stylesheet
    id ID #REQUIRED>
]>
<teclasMnu:Keyboard xmlns:teclasMnu="http://schemas.digi21.net/Digi3D/keyboard/v1.0">
    <xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                id="style1">
        <xsl:template match="/">
            <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <title>Archivo de asignación de teclas</title>
                    <style type="text/css">
                        tr:nth-child(even) { background: #cccccc; }
                        body { font-family:Verdana; font-size:small}
                    </style>
                </head>
                <body>
                    <h3>Archivo de asignación de teclas</h3>
                    <p>Este archivo especifica las órdenes asignadas a una pulsación de tecla</p>

                    <table>
                        <tr>
                            <th>Tecla</th>
                            <th>Mayúsculas</th>
                            <th>Control</th>
                            <th>Descripción</th>
                        </tr>

                        <xsl:for-each select="/teclasMnu:Keyboard/teclasMnu:Key">
                            <tr>
                                <td>
                                    <xsl:value-of select="@Name"/>
                                </td>
                                <td>
                                    <xsl:if test="@Shift">X</xsl:if>
                                </td>
                                <td>
                                    <xsl:if test="@Control">X</xsl:if>
                                </td>
                                <td>
                                    <xsl:value-of select="@Description"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>
    <teclasMnu:Key Name="AV PAG" Description="Zoom de acercar (ventana fotogramétrica)"><![CDATA[plot_zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="RE PAG" Description="Zoom de alejar (ventana fotogramétrica)"><![CDATA[plot_zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="F3" Description="Zoom extendido (ventana fotogramétrica)"><![CDATA[plot_zoome]]></teclasMnu:Key>
    <teclasMnu:Key Name="F4" Description="Zoom 1x1 (ventana fotogramétrica)"><![CDATA[rest_zoom1x1]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE ADICION" Description="Aumenta la velocidad en XY del dispositivo de entrada"><![CDATA[speed_incr_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE SUSTRACCION" Description="Disminuye la velocidad en XY del dispositivo de entrada"><![CDATA[speed_decr_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE MULTIPLICACION" Description="Aumenta la velocidad en Z del dispositivo de entrada"><![CDATA[speed_incr_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE DIVISION" Description="Disminuye la velocidad en Z del dispositivo de entrada"><![CDATA[speed_decr_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="F2" Description="Itera por los distintos tipos de índice disponibles en la ventana fotogramétrica"><![CDATA[pointer_type]]></teclasMnu:Key>
    <teclasMnu:Key Name="B" Description="Intenta posarse en Z en un modelo estereoscópico"><![CDATA[correlate]]></teclasMnu:Key>
    <teclasMnu:Key Name="TABULACION" Description="Cambia al siguiente archivo de asignación de teclas"><![CDATA[change_keys_mnu]]></teclasMnu:Key>
    <teclasMnu:Key Name="P" Control="true" Description="Desplaza la ventana fotogramétrica a un punto de apoyo"><![CDATA[go_to_control_point]]></teclasMnu:Key>
    <teclasMnu:Key Name="BARRA ESPACIADORA" Description="Captura/libera el ratón como dispositivo de entrada en la ventana fotogramétrica"><![CDATA[raton_digi3d]]></teclasMnu:Key>
    <teclasMnu:Key Name="A"><![CDATA[zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="A" Shift="true"><![CDATA[zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="RETROCESO" Control="true"><![CDATA[delete_last]]></teclasMnu:Key>
    <teclasMnu:Key Name="C"><![CDATA[close_ent]]></teclasMnu:Key>
</teclasMnu:Keyboard>
```

Double-clicking the file displays it as follows:

## Key assignment file

The key assignment file specifies commands assigned to a keystroke.

| Key | Shift | Control | Description |
| :--- | :--- | :--- | :--- |
| Page Up |  |  | Zoom in \(photogrammetric window\) |
| Page Down |  |  | Zoom out \(photogrammetric window\) |
| F3 |  |  | Zoom extents \(photogrammetric window\) |
| F4 |  |  | Zoom 1x1 \(photogrammetric window\) |
| Add |  |  | Increase input device XY speed |
| Subtract |  |  | Decrease input device XY speed |
| Multiply |  |  | Increase input device Z speed |
| Divide |  |  | Decrease input device Z speed |
| F2 |  |  | Cycle through photogrammetric window cursor types |
| B |  |  | Try to set Z on a stereomodel |
| Tab |  |  | Switch to the next key assignment file |
| P |  | X | Move the photogrammetric window to a control point |
| Spacebar |  |  | Capture/release the mouse as a photogrammetric window input device |
| A |  |  |  |
| A | X |  |  |
| Backspace |  | X |  |
| C |  |  |  |
