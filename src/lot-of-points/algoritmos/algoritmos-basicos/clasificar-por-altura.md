# Clasificar por altura
<!-- id: lot-of-points-clasificar-por-altura -->

**Clasificar por altura**, en **Algoritmos básicos** de **Clasificación de puntos**, asigna clases según
la altura de cada punto sobre el punto más bajo de su celda.
El botón requiere alguna nube con registro de ediciones e índices del archivo original.

El comando procesa las nubes abiertas que cumplen esas dos condiciones, incluidas las ocultas y las remotas.
El comando escribe en **Salida** el motivo de las nubes omitidas.

El cálculo divide la tesela en celdas cuadradas en planta y busca la cota mínima de cada celda.
Un punto cuya altura sobre ese mínimo sea menor o igual que
**Altura máxima sobre el punto más bajo de la celda** recibe **Clase de suelo**.
Un punto por encima del umbral recibe **Clase del resto**.

Con los valores predeterminados, cada celda tiene 2 unidades de la nube de lado y el umbral es de 0,5 unidades.
El cálculo asigna la clase 2 hasta ese umbral, incluido el límite, y la clase 1 por encima.
Las longitudes usan las unidades de las coordenadas de la nube.

## Parámetros

Abre **Configuración** y selecciona **Algoritmos básicos**, grupo **Clasificar por altura**.

| Parámetro | Unidad | Predeterminado | Rango, con ambos extremos incluidos |
|---|---|---|---|
| Lado de la celda | Unidades de la nube | 2 | 0,1–100 |
| Altura máxima sobre el punto más bajo de la celda | Unidades de la nube | 0,5 | 0–100 |
| Clase de suelo | Número de clase | 2 | 0–255 |
| Clase del resto | Número de clase | 1 | 0–255 |

## Procesamiento y resultado

Las celdas comienzan en la esquina del núcleo de cada tesela.
El cálculo utiliza también los puntos del solape, pero el programa guarda únicamente los resultados
de los puntos del núcleo.

| Característica | Valor |
|---|---|
| Lado del núcleo | 50 unidades de la nube. |
| Ancho del solape | 10 unidades de la nube. |
| Teselas simultáneas | Sí. |
| Atributos adicionales requeridos | Ninguno. |

El comando escribe «Clasificar por altura: *n* puntos cambian de clase en *k* nubes.».
Una llamada que cambia puntos añade un evento al historial.
Pulsa **Deshacer** en la barra de título para revertir el evento confirmado.

El identificador es `lop.example.height_classifier`.
El código está en `Sdk/example/height_classifier.c`; la selección de nubes está en
`Sdk/example/editable_clouds.c`.
