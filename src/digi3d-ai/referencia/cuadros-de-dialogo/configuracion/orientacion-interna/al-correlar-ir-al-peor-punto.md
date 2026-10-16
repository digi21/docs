# Al correlar ir al peor punto
<!-- id: al-correlar-ir-al-peor-punto -->

Indica si, al finalizar el proceso de correlación, la vista estereoscópica se desplaza al punto con peores residuos.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\InnerOrientation` |
| :--- | :--- |
| Valor | `IrAPeorAlCorrelar` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
