# Esquema de aerotriangulación
<!-- id: esquema-aerotriangulacion -->

Al medir una aerotriangulación, puedes dar a los puntos los nombres que quieras y ubicarlos donde te interese. Antes de medir los puntos, puedes configurar cuántos puntos debe aportar cada foto del proyecto, con qué nombres y en qué posiciones aproximadas.

Un esquema de aerotriangulación permite indicar al programa los siguientes datos:

1. Cada foto debe aportar tres puntos.
2. El primer punto se mide aproximadamente en el centro de la foto y el nombre del primer punto es la concatenación del nombre de la foto + 0.
3. El segundo punto se mide aproximadamente en el centro de la foto y el nombre del segundo punto es la concatenación del nombre de la foto + 1.
4. El tercer punto se mide aproximadamente en el centro de la foto y el nombre del tercer punto es la concatenación del nombre de la foto + 2.

De esta manera, si seleccionas este esquema para realizar la medida, el programa desplazará automáticamente la ventana fotogramétrica a los puntos que aporte cada foto y solo tendrás que medir cada punto en la zona indicada, donde más te interese. De esta manera no existirá la posibilidad de equivocarte con el nombre del punto ni con su ubicación aproximada.

Los esquemas de aerotriangulación se extraen del archivo indicado en **Herramientas/Configuración...** en la sección **Medida de aerotriangulación** en el valor **Esquemas.**

El instalador de Digi3D.AI crea un archivo de esquemas en la carpeta _%ProgramData%\Digi3D.NET\Esquemas Orientaciones_ con el nombre _Esquemas de medida de aerotriangulación.aerotrischeme.xml_.

Este archivo proporciona los siguientes esquemas de aerotriangulación:

| Nombre del esquema | Número de puntos por foto | Válido para | Descripción |
| :--- | :--- | :--- | :--- |
| Sin esquema | 0 | Cualquier foto | Este esquema no proporciona ningún punto; debes añadir los puntos en la posición y con el nombre que te interese. |
| Varias pasadas con porcentajes | 3 | Cualquier foto | Esquema genérico que se adapta al tamaño de las fotos y que mide tres puntos por cada foto. |
| Una pasada con porcentajes | 5 | Cualquier foto | Esquema genérico que se adapta al tamaño de las fotos y que mide cinco puntos por cada foto. |

