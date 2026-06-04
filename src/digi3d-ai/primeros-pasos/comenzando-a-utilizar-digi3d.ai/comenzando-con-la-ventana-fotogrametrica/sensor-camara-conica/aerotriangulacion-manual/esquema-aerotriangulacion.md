# Esquema de aerotriangulación

Al medir una aerotriangulación somos libres de nombrar los puntos como queramos y de ubicalos en la posición que nos interese, pero para incrementar la productividad, podemos pre-configurar el programa para indicarle cuántos puntos, con qué nombres y dónde queremos que estén ubicados aproximadamente queremos que aporte cada foto de nuestro proyecto.

Esto lo podemos hacer mediante un esquema de aerotriangulación, en el que básicamente se le indica al programa:

1. Cada foto quiero que aporte tres puntos.
2. El primer punto lo quiero medir aproximadamente en el centro de la foto y quiero que su nombre sea la concatenación del nombre de la foto + 0.
3. El segundopunto lo quiero medir aproximadamente en el centro de la foto y quiero que su nombre sea la concatenación del nombre de la foto + 1.
4. El tercer punto lo quiero medir aproximadamente en el centro de la foto y quiero que su nombre sea la concatenación del nombre de la foto + 2.

De esta manera, si indicamos que éste es el esquema que queremos seguir a la hora de realizar la medida, el programa nos llevará automáticamente a los puntos que aporte cada foto y tan solo tendremos que medir el punto por esa zona, donde más nos interese. De esta manera no existirá la posibilidad de equivocarnos con el nombre del punto ni con su ubicación aproximada.

Los esquemas de aerotriangulación se extraen del archivo indicado en **Herramientas/Configuración** en la sección **Medida de aerotriangulación** en el valor **Esquemas.**

El instalador de Digi3D.NET crea un archivo de esquemas en la carpeta _%ProgramData%\Digi3D.NET\Esquemas Orientaciones_ con el nombre _Esquemas de medida de aerotriangulación.aerotrischeme.xml_.

Este archivo proporciona los siguientes esquemas de aerotriangulación:

| Nombre del esquema | Número de puntos por foto | Válido para | Descripión |
| :--- | :--- | :--- | :--- |
| Sin esquema | 0 | Cualquier foto | Este esquema no proporciona ningún punto, por lo tanto es responsabilidad del usuario añadir puntos en la posición y con el nombre que le interese. |
| Varias pasadas con porcentajes | 3 | Cualquier foto | Esquema genérico que se adapta al tamaño de las fotos y que mide tres puntos por cada foto. |
| Una pasada con porcentajes | 5 | Cualquier foto | Esquema genérico que se adapta al tamaño de las fotos y que mide cinco puntos por cada foto. |

