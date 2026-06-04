# Referencia

Descripción formal de la API de Python de Digi3D.AI, organizada por módulos.

## Módulos

| Módulo | Descripción |
|---|---|
| [digi21.base](digi21.base/README.md) | Tipos del núcleo: códigos, geometrías, tablas de códigos y cámara. |
| [digi21.io](digi21.io/README.md) | Lectura de archivos de dibujo (un módulo por formato). |
| [digi3d](digi3d/README.md) | El módulo disponible **dentro de Digi3D.AI**: ventana de dibujo, órdenes, tareas… (reexporta `digi21.base`). |

## Convención de nombres

Toda la API está en inglés: clases en `PascalCase`; métodos, propiedades y argumentos en
`snake_case`. Las coordenadas se representan como tuplas `(x, y, z)`.
