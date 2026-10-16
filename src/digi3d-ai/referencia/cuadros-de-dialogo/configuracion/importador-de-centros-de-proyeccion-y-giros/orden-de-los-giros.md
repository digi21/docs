# Orden de los giros
<!-- id: orden-de-los-giros -->

Indica el orden de los giros con el que se construirá la matriz de Euler.

## Valores posibles

* **Omega-Phi-Kappa**.
* **Phi-Omega-Kappa**.
* **Omega-Kappa-Phi**.
* **Kappa-Omega-Phi**.
* **Kappa-Phi-Omega**.
* **Phi-Kappa-Omega**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros` |
| Tabla | `Ints` |
| Valor | `OrdenGiros` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
DELETE FROM Ints WHERE Value = 'OrdenGiros' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OrdenGiros', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros';
```
