# PARAMETROS\_AUTO\_MODOB

Permite activar el modo de búsqueda automático.

## Parámetros

No admite parámetros.

## Observaciones

Evita tener que conmutar entre los diferentes modos de búsqueda ya que cambiará automáticamente el modo de búsqueda para un determinado código.

Debes crear un archivo \(por ahora manual\) que asigna por cada código, qué modos de búsqueda se aplicarán cuando se tentative con otro determinado código.

Este archivo se podrá crear con el Bloc de Notas, podrá tener un nombre a elección del usuario pero deberá tener como extensión .XML.

### Ejemplo:

```markup
<automodob>
        <code name="020123"
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



En este ejemplo se comprueba que si estamos dibujando líneas con códigos 020123 ó 020124, el programa tentativará automáticamente con el modo de búsqueda 12 sobre entidades de código 060140, 040124, 060126, 060142, 060522 y 030255. Además, se tentativará con el modo de búsqueda 6 sobre los códigos 020123, 020124, 020126 y 020127.

### Llamada a la orden:

`PARAMETROS_AUTO_MODOB=C:\Work\automodob.xml`

## Características de la orden

| Tipo de orden | [Orden inmediata]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

