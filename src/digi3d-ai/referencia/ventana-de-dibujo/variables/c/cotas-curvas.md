# COTAS\_CURVAS

Asigna cota a las curvas de nivel de manera global.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1...n | Códigos de las curvas de nivel | Lista de códigos | Si |

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos de las curvas de nivel. Si se cancela el cuadro de diálogo, la orden finaliza.

## Funcionamiento

1. Digitaliza un primer punto con la Z que corresponde a la primera curva que va a cortar el segmento.
2. Digitaliza un segundo punto. El segmento entre los dos puntos tiene que cortar todas las curvas a acotar.

La orden localiza las líneas con alguno de los códigos indicados que corta el segmento y las ordena por su distancia al primer punto. La curva más próxima al primer punto recibe la Z del primer punto, y cada una de las siguientes la Z de la anterior más el valor de [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md). Todos los vértices de cada curva reciben esa Z.

El número de curvas cortadas tiene que ser igual a la diferencia de Z entre los dos puntos dividida por la equidistancia, más uno. Si no coincide, la orden muestra un globo de error con el número de curvas esperado y el encontrado, y no modifica ninguna curva.

Tras cada par de puntos, la orden queda a la espera de un nuevo primer punto.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) |
| Nombre interno | {B43899C2-51BB-4f8c-AD99-A04A5591BC2C} |

