---
description: Cuadro de diálogo Tipo de proyección
---

# Tipo de proyección

![Cuadro de di&#xE1;logo Tipo de proyecci&#xF3;n sobre MDT](../../../.gitbook/assets/image%20%28107%29.png)

En este cuadro de diálogo aparecen los siguientes campos a rellenar:

* **Interpolación de puntos**: Podrá ser por interpolación con los cortes o proyección individual . Si se interpola con los cortes, los puntos de las entidades no son proyectados directamente sobre el modelo digital, mientras que si se proyectan individualmente no se tendrá en cuenta ninguna interpolación con los cortes. Es útil para suavizar proyecciones de líneas sobre modelos digitales formados por curvas de nivel, de tal manera que utilizando la opción cortes con líneas de ruptura \(en este caso, las curvas de nivel\) el resto de vértices de la línea serán interpolados a partir de estos cortes, ajustándose perfectamente la entidad a las curvas de nivel.
* **Cortes al proyectar líneas**: Podrán ser con las líneas de ruptura, con todos los triángulos o sin utilizar cortes, es decir, sólo proyección de puntos. Allí donde encuentre cortes con las entidades indicadas se generará un nuevo vértice en la línea. Lógicamente, es más rápido no utilizar cortes pero no se ajusta perfectamente la línea sobre el modelo digital porque sólo estaría apoyada sobre el modelo en sus vértices.

