# Información de objeto
<!-- id: informacion-objeto-nube -->

[Ficha de herramientas MMS Editar objetos](./)

Muestra el número de puntos y los datos geométricos de un objeto de la nube de puntos.

La herramienta solo está activa en las nubes de puntos que tienen objetos visibles. Los objetos se muestran con [**Mostrar**](encender-apagar-objetos.md).

## Elegir el objeto

Se elige igual que con las demás herramientas de selección:

1. **Clic** sobre el objeto, en uno de sus puntos o en su contorno. El objeto queda marcado y sus datos aparecen también en el panel de propiedades.
2. **Botón derecho**, si el objeto marcado no es el que se quería: busca el objeto que está detrás, en esas mismas coordenadas. Cada pulsación busca el siguiente. Si no hay más, suena un aviso y se quita la marca.
3. **Clic** otra vez: acepta el objeto marcado y abre el cuadro de diálogo con su información.

## Datos que se muestran

| Dato | Significado |
|---|---|
| Número de puntos | Puntos que forman el objeto. |
| Clasificación | Código y nombre de la clase LiDAR de los puntos del objeto. |
| Mínimo X, Y, Z | Esquina inferior de la caja que envuelve los puntos. |
| Máximo X, Y, Z | Esquina superior de la caja que envuelve los puntos. |
| Centro X, Y, Z | Media de las coordenadas de los puntos. |
| Largo en planta | Lado mayor del rectángulo de área mínima que contiene los puntos vistos en planta. |
| Ancho en planta | Lado menor de ese rectángulo. |
| Alto | Diferencia entre la Z más alta y la más baja. |
| Acimut del largo | Orientación del lado mayor del rectángulo, en grados sexagesimales, medida desde el norte en el sentido de las agujas del reloj, entre 0 y 180. |
| Área en planta | Área de la envolvente convexa de los puntos vistos en planta. |

El rectángulo de área mínima puede estar girado: por eso el largo y el ancho de un vehículo aparcado en diagonal son los del propio vehículo y no los de la caja alineada con los ejes.

Vea también:

* [Borrar objeto](borrar-objeto.md)
* [Lista de objetos](lista-de-objetos.md)
