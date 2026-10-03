# EXTRAER\_CENTROIDES\_COD

Genera un centroide dentro de los polígonos o líneas cerradas que tengan alguno de los códigos seleccionados

## Parámetros

No admite parámetros.

## Observaciones

La orden muestra un cuadro de diálogo para seleccionar los códigos. Las casillas **Polígonos** y **Polilíneas** del cuadro indican si se procesan los polígonos, las líneas cerradas o ambos; las dos están marcadas al abrirlo. Después la orden recorre el archivo de referencia activo y crea un centroide en cada entidad de esos tipos que tenga alguno de esos códigos y que no esté borrada, oculta ni fuera de la zona de interés.

El centroide es un texto situado en un punto interior de la entidad, con los códigos de la entidad y con el nombre de su primer código como contenido. Su ángulo, su altura y su justificación son los valores de las variables AA, AT y JT.

## Características de la orden

| Tipo de orden | [Orden inmediata](extraer-centroides-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Centroides/Por código.. |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Órdenes relacionadas | [EXTRAER\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroide.md) |
| Nombre interno | {356024A0-F29F-44DC-B9F4-82F46594836A} |
