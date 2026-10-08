# Archivo de propiedades de la carpeta
<!-- id: archivo-de-propiedades-de-la-carpeta -->

Digi3D.AI guarda en la carpeta de cada archivo de dibujo un archivo llamado `Digi3D.properties.json` con los valores de las propiedades. Lo comparten todos los archivos de dibujo de esa carpeta: al abrir cualquiera de ellos se recuperan los valores con los que se trabajó por última vez en la carpeta, sin tener que volver a ejecutar las órdenes.

## Qué guarda

* Las propiedades del panel [Propiedades](../paneles/propiedades.md), es decir, las órdenes de tipo variable de Digi3D.AI y de las extensiones.
* El color de fondo de la ventana de dibujo, que se cambia con la orden [COLOR\_FONDO](../ventana-de-dibujo/variables/c/color-fondo.md).

No se guardan las propiedades que dependen del momento o del dispositivo: la coordenada Z activa, la escala de dibujo, IR\_PRINCIPIO, GIRAR, las velocidades del SpaceMouse y las de desplazamiento del modelo digital del terreno.

## Cuándo se lee y cuándo se escribe

* **Al abrir un archivo de dibujo**, se ejecutan primero las órdenes de inicio de la tabla de códigos y después se aplican los valores del archivo de su carpeta, que prevalecen.
* **Al cambiar de ventana de dibujo**, se aplican los valores del archivo de la carpeta del archivo de dibujo de esa ventana. Si la carpeta no tiene archivo, se mantienen los valores vigentes y el color de fondo pasa a ser el de la tabla de códigos de ese archivo de dibujo.
* **Al terminar cada orden**, si alguna propiedad ha cambiado, se escribe el archivo de la carpeta del archivo de dibujo activo. El archivo no se crea hasta que se cambia alguna propiedad.

La carpeta se fija al abrir el archivo de dibujo: si después se cambia de archivo de dibujo en esa ventana, se sigue utilizando el archivo de la carpeta original.

Si el archivo está dañado, se trata como vacío. Si no se puede escribir, por ejemplo en una carpeta de solo lectura, no se muestra ningún mensaje y se anota un aviso en el Visor de eventos de Windows.

## Formato

Es un archivo JSON con un único elemento `propiedades`. Cada propiedad se identifica por el nombre interno de su orden, que no depende del idioma. El color de fondo se guarda como sus componentes rojo, verde y azul:

```json
{
  "propiedades": {
    "{A9B0F9A1-04E7-45ce-943B-7D17EF6C3F72}": false,
    "{D8D7E7B7-322C-4bbb-9BCD-43B0E71DD457}": 2,
    "{CC84B0E0-EFB8-48bc-97A2-DEF9AB885021}": [0, 0, 0]
  }
}
```

Las propiedades que el archivo no contiene conservan su valor, y las que el programa no reconoce se ignoran y se conservan al reescribirlo.
