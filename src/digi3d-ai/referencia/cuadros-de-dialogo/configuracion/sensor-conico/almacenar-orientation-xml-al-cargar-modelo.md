# Almacenar Orientation.xml al cargar modelo
<!-- id: almacenar-orientation-xml-al-cargar-modelo -->

Indica si se almacenará un archivo _.orientation.xml_ por cada foto al cargar el modelo.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor` |
| :--- | :--- |
| Valor | `AlmacenarOrientationXmlAlCargarModelo` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
