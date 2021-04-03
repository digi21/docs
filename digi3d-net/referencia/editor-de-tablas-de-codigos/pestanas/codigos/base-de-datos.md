# Base de datos

Esta categoría permite configurar la relación de este código con base de datos.

## Tabla

Este desplegable permite configurar la tabla a mostrar en las ventanas que muestran atributos de base de datos, como el panel [Campos de la base de datos](../../../digi3d.net/paneles/campos-de-la-base-de-datos.md) al seleccionar este código.

Muestra un desplegable que permite seleccionar alguna de las tablas añadidas en la pestaña [Base de datos](../base-de-datos/).

## Condiciones

Especifica las condiciones que debe tener un registro en la base de datos para considerar que éste es el código.

Este campo opcional tiene significado únicamente en archivos SIG como por ejemplo Shapefiles.

Supongamos que tenemos un Shapefile con una tabla _Edificaciones_. Supongamos que uno de los campos de base de datos de la tabla Edificaciones es _Tipo_, que puede tener uno de los siguientes valores:

| Valor | Significado |
| :--- | :--- |
| 0 | Edificio en construcción |
| 1 | Edificio privado |
| 2 | Edificio público |

Ahora supongamos que en la tabla de códigos tenemos tres códigos:

| Código | Descripción |
| :--- | :--- |
| 010101 | Edificio en construcción |
| 010102 | Edificio privado |
| 010103 | Edificio público |
| 010104 | Resto de edificaciones |

En la tabla de códigos tendríamos que seleccionar en el campo [Tabla](base-de-datos.md#tabla) de cada uno de los tres códigos la tabla _Edificaciones,_ pero eso haría que el importador de Shapefiles no supiera qué código asignar a cada una de las geometrías almacenadas en la tabla _Edificaciones_, porque hay tres códigos posibles: 010101, 010102, 010103 y 010104.

El campo **Condiciones** soluciona este problema.

Para el código 010101 introduciríamos el siguiente valor en **Condiciones**:

```text
Tipo=0
```

Para el código 010102:

```text
Tipo=1
```

Para el código 010103:

```text
Tipo=2
```

Y por último para el código 010104 dejaríamos en blanco el campo **Condiciones**.

De esta manera, el importador de Shapefiles si se encuentra una geometría que tenga asignado en el campo Tipo el valor 1, asignará a la geometría el código 010102.

