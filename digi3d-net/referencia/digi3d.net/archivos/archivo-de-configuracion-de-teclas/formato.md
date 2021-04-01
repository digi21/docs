# Formato

El archivo de configuración de teclas tiene un nodo principal Keyboard que tiene a su vez nodos hijos de tipo Key.

Los nodos Key tienen los siguientes atributos:

* **Name** para indicar el nombre de la tecla. Este nombre lo asigna automáticamente Windows en función del idioma.
* **Description** para indicar una descripción de la función que realiza la secuencia de comandos asignada a la tecla.
* **Control** que tendrá el valor **true** en caso de que sea necesario tener pulsada la tecla _Control_ para identificar esta tecla.
* **Shift** que tendrá el valor **true** en caso de que sea necesario tener pulsada la tecla _Shift_ para identificar esta tecla.

Y la secuencia de órdenes a ejecutar se indican en un nodo CDATA hijo del nodo Key.

```markup
<?xml version="1.0" encoding="utf-8"?>
<teclasMnu:Keyboard xmlns:teclasMnu="http://schemas.digi21.net/Digi3D/keyboard/v1.0">
    <teclasMnu:Key Name="AV PAG" Description="Zoom de acercar (ventana fotogramétrica)"><![CDATA[rest_zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="RE PAG" Description="Zoom de alejar (ventana fotogramétrica)"><![CDATA[rest_zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="F3" Description="Zoom extendido (ventana fotogramétrica)"><![CDATA[rest_zoome]]></teclasMnu:Key>
    <teclasMnu:Key Name="F4" Description="Zoom 1x1 (ventana fotogramétrica)"><![CDATA[rest_zoom1x1]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE ADICION" Description="Aumenta la velocidad en XY del dispositivo de entrada"><![CDATA[velocidad_mas_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE SUSTRACCION" Description="Disminuye la velocidad en XY del dispositivo de entrada"><![CDATA[velocidad_menos_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE MULTIPLICACION" Description="Aumenta la velocidad en Z del dispositivo de entrada"><![CDATA[velocidad_mas_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE DIVISION" Description="Disminuye la velocidad en Z del dispositivo de entrada"><![CDATA[velocidad_menos_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="F2" Description="Itera por los distintos tipos de índice disponibles en la ventana fotogramétrica"><![CDATA[tipo_indice]]></teclasMnu:Key>
    <teclasMnu:Key Name="B" Description="Intenta posarse en Z en un modelo estereoscópico"><![CDATA[correlar]]></teclasMnu:Key>
    <teclasMnu:Key Name="TABULACION" Description="Cambia al siguiente archivo de asignación de teclas"><![CDATA[cambia_teclas_mnu]]></teclasMnu:Key>
    <teclasMnu:Key Name="P" Control="true" Description="Desplaza la ventana fotogramétrica a un punto de apoyo"><![CDATA[ir_a_punto_apoyo]]></teclasMnu:Key>
    <teclasMnu:Key Name="BARRA ESPACIADORA" Description="Captura/libera el ratón como dispositivo de entrada en la ventana fotogramétrica"><![CDATA[raton_digi3d]]></teclasMnu:Key>
    <teclasMnu:Key Name="A"><![CDATA[zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="A" Shift="true"><![CDATA[zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="RETROCESO" Control="true"><![CDATA[borra_ultimo]]></teclasMnu:Key>
    <teclasMnu:Key Name="C"><![CDATA[cierra_ent]]></teclasMnu:Key>
</teclasMnu:Keyboard>

```

No es habitual modificar este archivo manualmente, sino mediante la orden [TECLA](../../ventana-de-dibujo/ordenes/t/tecla.md).

Si se hace mediante la orden TECLA, ésta añadirá una hoja de estilos en cascada al archivo .XML para que se muestre como una tabla HTML que el usuario pueda imprimir:

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
    <teclasMnu:Key Name="AV PAG" Description="Zoom de acercar (ventana fotogramétrica)"><![CDATA[rest_zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="RE PAG" Description="Zoom de alejar (ventana fotogramétrica)"><![CDATA[rest_zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="F3" Description="Zoom extendido (ventana fotogramétrica)"><![CDATA[rest_zoome]]></teclasMnu:Key>
    <teclasMnu:Key Name="F4" Description="Zoom 1x1 (ventana fotogramétrica)"><![CDATA[rest_zoom1x1]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE ADICION" Description="Aumenta la velocidad en XY del dispositivo de entrada"><![CDATA[velocidad_mas_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE SUSTRACCION" Description="Disminuye la velocidad en XY del dispositivo de entrada"><![CDATA[velocidad_menos_xy]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE MULTIPLICACION" Description="Aumenta la velocidad en Z del dispositivo de entrada"><![CDATA[velocidad_mas_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="TECLA DE DIVISION" Description="Disminuye la velocidad en Z del dispositivo de entrada"><![CDATA[velocidad_menos_z]]></teclasMnu:Key>
    <teclasMnu:Key Name="F2" Description="Itera por los distintos tipos de índice disponibles en la ventana fotogramétrica"><![CDATA[tipo_indice]]></teclasMnu:Key>
    <teclasMnu:Key Name="B" Description="Intenta posarse en Z en un modelo estereoscópico"><![CDATA[correlar]]></teclasMnu:Key>
    <teclasMnu:Key Name="TABULACION" Description="Cambia al siguiente archivo de asignación de teclas"><![CDATA[cambia_teclas_mnu]]></teclasMnu:Key>
    <teclasMnu:Key Name="P" Control="true" Description="Desplaza la ventana fotogramétrica a un punto de apoyo"><![CDATA[ir_a_punto_apoyo]]></teclasMnu:Key>
    <teclasMnu:Key Name="BARRA ESPACIADORA" Description="Captura/libera el ratón como dispositivo de entrada en la ventana fotogramétrica"><![CDATA[raton_digi3d]]></teclasMnu:Key>
    <teclasMnu:Key Name="A"><![CDATA[zoomin]]></teclasMnu:Key>
    <teclasMnu:Key Name="A" Shift="true"><![CDATA[zoomout]]></teclasMnu:Key>
    <teclasMnu:Key Name="RETROCESO" Control="true"><![CDATA[borra_ultimo]]></teclasMnu:Key>
    <teclasMnu:Key Name="C"><![CDATA[cierra_ent]]></teclasMnu:Key>
</teclasMnu:Keyboard>
```

Al hacer doble clic sobre este archivo se mostrará de la siguiente manera:



#### Archivo de asignación de teclas

Este archivo especifica las órdenes asignadas a una pulsación de tecla

| Tecla | Mayúsculas | Control | Descripción |
| :--- | :--- | :--- | :--- |
| AV PAG |  |  | Zoom de acercar \(ventana fotogramétrica\) |
| RE PAG |  |  | Zoom de alejar \(ventana fotogramétrica\) |
| F3 |  |  | Zoom extendido \(ventana fotogramétrica\) |
| F4 |  |  | Zoom 1x1 \(ventana fotogramétrica\) |
| TECLA DE ADICION |  |  | Aumenta la velocidad en XY del dispositivo de entrada |
| TECLA DE SUSTRACCION |  |  | Disminuye la velocidad en XY del dispositivo de entrada |
| TECLA DE MULTIPLICACION |  |  | Aumenta la velocidad en Z del dispositivo de entrada |
| TECLA DE DIVISION |  |  | Disminuye la velocidad en Z del dispositivo de entrada |
| F2 |  |  | Itera por los distintos tipos de índice disponibles en la ventana fotogramétrica |
| B |  |  | Intenta posarse en Z en un modelo estereoscópico |
| TABULACION |  |  | Cambia al siguiente archivo de asignación de teclas |
| P |  | X | Desplaza la ventana fotogramétrica a un punto de apoyo |
| BARRA ESPACIADORA |  |  | Captura/libera el ratón como dispositivo de entrada en la ventana fotogramétrica |
| A |  |  |  |
| A | X |  |  |
| RETROCESO |  | X |  |
| C |  |  |  |

