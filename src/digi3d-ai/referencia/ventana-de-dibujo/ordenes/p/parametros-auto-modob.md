# PARAMETROS\_AUTO\_MODOB
<!-- id: parametros-auto-modob -->

Carga el archivo XML con la configuración del modo de búsqueda automático.

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| Archivo | Opcional. Ruta del archivo XML de configuración. Si no lo indicas, la orden muestra un cuadro de diálogo para seleccionarlo. Si el archivo no existe, la orden emite un sonido de error y no carga nada. |

## Observaciones

Evita tener que conmutar entre los diferentes modos de búsqueda ya que cambiará automáticamente el modo de búsqueda para un determinado código.

La configuración solo se aplica cuando la variable [AUTOMODOB](../a/automodob.md) está activada.

Debes crear un archivo \(por ahora manual\) que asigna por cada código, qué modos de búsqueda se aplicarán cuando se tentative con otro determinado código.

Este archivo se podrá crear con el Bloc de Notas, podrá tener un nombre a elección del usuario pero deberá tener como extensión .XML.

Cada elemento `subcode` admite estos atributos:

* `name`: código de las entidades sobre las que se tentativa.
* `smode`: modo o modos de búsqueda, separados por espacios o comas.
* `divide`, `insert` y `finalize`: opcionales. Si el atributo está presente, con cualquier valor, el tentativo activa las variables [TENTATIVO\_CORTA](../../variables/t/tentativo-corta.md), [TENTATIVO\_INSERTA](../../variables/t/tentativo-inserta.md) y [TENTATIVO\_FIN](../../variables/t/tentativo-fin.md) respectivamente.

### Ejemplo:

```xml
<automodob xmlns="http://schemas.digi21.net/DigiNG/AutoSearch/v1.0">
    <code name="020123">
        <subcode name="060140" smode="12"/>
        <subcode name="040124" smode="12"/>
        <subcode name="060126" smode="12"/>
        <subcode name="060142" smode="12"/>
        <subcode name="060522" smode="12"/>
        <subcode name="030225" smode="12"/>
        <subcode name="020123" smode="6"/>
        <subcode name="020124" smode="6"/>
        <subcode name="020126" smode="6"/>
        <subcode name="020127" smode="6"/>
        <subcode name="060151" smode="1"/>
        <subcode name="040523" smode="1"/>
        <subcode name="050146" smode="1"/>
        <subcode name="050151" smode="1"/>
    </code>
    <code name="020124">       
        <subcode name="060140" smode="12"/>
        <subcode name="040124" smode="12"/>
        <subcode name="060126" smode="12"/>
        <subcode name="060142" smode="12"/>
        <subcode name="060522" smode="12"/>
        <subcode name="030225" smode="12"/>
        <subcode name="020123" smode="6"/>
        <subcode name="020124" smode="6"/>
        <subcode name="020126" smode="6"/>
        <subcode name="020127" smode="6"/>
        <subcode name="060151" smode="1"/>
        <subcode name="040523" smode="1"/>
        <subcode name="050146" smode="1"/>
        <subcode name="050151" smode="1"/>
    </code>
</automodob>
```

En este ejemplo se comprueba que si estamos dibujando líneas con códigos 020123 ó 020124, el programa tentativará automáticamente con el modo de búsqueda 12 sobre entidades de código 060140, 040124, 060126, 060142, 060522 y 030225. Además, se tentativará con el modo de búsqueda 6 sobre los códigos 020123, 020124, 020126 y 020127.

### Llamada a la orden:

`PARAMETROS_AUTO_MODOB=C:\Work\automodob.xml`

## Características de la orden

| Tipo de orden | [Orden inmediata](parametros-auto-modob.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md)<br>[AUTOMODOB\_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[CAMB\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md) |
| Nombre interno | {5DC544A9-2700-40d2-9840-2E7923BCCAA4} |

