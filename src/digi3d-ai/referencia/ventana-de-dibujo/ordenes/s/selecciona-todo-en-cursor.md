# SELECCIONA\_TODO\_EN\_CURSOR

Selecciona con un solo clic todas las entidades que se cruzan con el cursor.

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple.

Pulsa el pulsador de datos o el de tentativo sobre las entidades. La orden selecciona todas las entidades que pasan a menos de 3 píxeles más el tamaño del cursor del punto pulsado. Si no encuentra ninguna, emite un sonido de error.

- Si la variable [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) está desactivada, la orden envía las entidades a la orden activa y termina.
- Si VER está activada, la orden marca las entidades y permite seguir añadiendo entidades con nuevas pulsaciones. Pulsa `Esc` para quitar la última entidad añadida y la barra espaciadora para enviar la selección a la orden activa.

## Características de la orden

| Tipo de orden | [Orden interactiva](selecciona-todo-en-cursor.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Selecciona todas las entidades que interseccionan con el cursor |
| Barra de herramientas en la que aparece la orden | Selecciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — verificación por parte del usuario de la selección del tentativo |
| Nombre interno | {2FA4CFE6-21C1-4497-B6FE-31559327539F} |
