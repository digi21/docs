# Coordenadas Z en proyecto son ortométricas haciéndose pasar por elipsoidales
<!-- id: coordenadas-z-en-proyecto-son-ortometricas-haciendose-pasar-por-elipsoidales -->

Indica cómo se introdujeron las coordenadas Z en el proyecto de PhotoScan.

## Valores posibles

* **Sí, PhotoScan piensa que son elipsoidales pero son ortométricas**.
* **No, las coordenadas se introdujeron en PhotoScan correctamente**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\PhotoScan` |
| :--- | :--- |
| Valor | `CoordenadasElipsoidalesRealmenteSonOrtometricas` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
