# Proyectar la Z de los vectores
<!-- id: proyectar-la-z-de-los-vectores -->

Indica si se proyecta siempre la coordenada Z de los vectores en la ventana fotogramétrica. Esto permite trabajar estereoscópicamente con modelos 2D.

## Valores posibles

* **Sí**. Los vectores se proyectan con su coordenada Z.
* **No** \(valor por defecto\). Los vectores no se proyectan siempre con su coordenada Z.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Tabla | `Ints` |
| Valor | `ProyectarZVectores` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'ProyectarZVectores' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarZVectores', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```
