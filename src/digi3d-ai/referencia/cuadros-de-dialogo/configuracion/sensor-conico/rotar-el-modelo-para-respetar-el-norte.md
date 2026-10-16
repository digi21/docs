# Mantener el norte arriba
<!-- id: rotar-el-modelo-para-respetar-el-norte -->

Indica si Digi3D.AI gira el modelo para que el norte quede en la parte superior de la pantalla.

Se evalúa en cada modelo con su propia orientación: al abrirlo y al cambiar de modelo con el panel de proyecto fotogramétrico. Se aplica tanto si las imágenes se presentan proyectadas como si se presentan en ortogonal \(opción [Modo de presentación de imágenes](modo-de-presentacion-de-imagenes.md)\).

En un vuelo con pasadas en sentidos alternos, sin esta opción el norte queda arriba en las pasadas que vuelan en un sentido y abajo en las del sentido contrario.

## Valores posibles

* **Sí**. Si el norte quedaría a más de 100 grados sexagesimales de la parte superior de la pantalla, se giran las dos imágenes 180 grados y se intercambian las imágenes izquierda y derecha para que el relieve no se invierta. Entre 90 y 100 grados no se gira, para que en una pasada norte-sur la orientación no cambie de un modelo al siguiente. Cuando las imágenes se presentan proyectadas, un par oblicuo se gira según la opción [Oblicuas con el horizonte arriba](oblicuas-con-el-horizonte-arriba.md) y no según esta.
* **No** \(valor por defecto\). Los modelos se muestran sin girar.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Valor | `RotarParaQueElNorteSeVeaArriba` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
