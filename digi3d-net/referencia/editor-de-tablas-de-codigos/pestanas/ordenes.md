# Órdenes

Esta pestaña permite configurar órdenes que se [ejecutarán automáticamente](../../digi3d.net/ordenes/formas-de-ejecutar-una-orden/al-seleccionar-un-codigo.md) por parte de Digi3D.NET al trabajar en la ventana de dibujo con esta tabla de códigos cargada.

## Órdenes de inicio

Estas son las órdenes que se ejecutarán abrir una ventana de dibujo con esta tabla de códigos activa.

El valor por defecto para este campo es el siguiente que hace que por el mero hecho de abrir una ventana de dibujo con esta tabla se realice un zoom extendido del modelo:

```text
zoome
```

## Órdenes a ejecutar al seleccionar cualquier código

Son órdenes que se ejecutarán cada vez que se cambie de código.

El valor por defecto para este campo es un conjunto de órdenes que deshabilitan ciertas variables:

```text
C=0
S=0
IR_PRINCIPIO=0
ORTO=0
ORTO_AA=0
FIJAZ=0
MAXPUNTOS=0
FORMATO_AUTONUM=%d
TIPO_DE_Z=2
BLOQUEA_Z=0
```



