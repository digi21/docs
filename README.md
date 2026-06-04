# Ayuda de Digi21

Bienvenido al repositorio de la ayuda de **[www.digi21.net](https://www.digi21.net)**.

Aquí encontrarás, en formato _markdown_, **todas las páginas de la ayuda** de los productos de Digi21
(Digi3D.NET, MDTopX, Topcal21…). Este repositorio es la **fuente de la verdad** de la documentación:
la web de Digi21 se alimenta directamente de su contenido.

## ✍️ ¿Quieres colaborar?

¡Nos encantaría! Si encuentras una errata, un enlace roto, una explicación confusa, o quieres
documentar algo que falta, tu ayuda es muy bienvenida.

- **¿Has visto un fallo pequeño** (errata, dato incorrecto, captura desactualizada)? Abre una
  [_issue_](https://github.com/digi21/docsdigi21/issues) describiéndolo, o directamente un _pull request_ con la corrección.
- **¿Quieres escribir o ampliar una página?** Haz un _fork_, crea una rama, edita el _markdown_ y
  abre un **_pull request_** contra `main`. Lo revisaremos y, una vez integrado, aparecerá en la ayuda de la web.

No necesitas saber nada especial: son archivos de texto en _markdown_. Si tienes dudas sobre dónde
colocar algo, ábrenos una _issue_ y te orientamos.

## 📁 Cómo está organizado

- Todo el contenido vive en el directorio **`src/`**.
- **`src/SUMMARY.md`** define el **índice y la jerarquía** del menú (qué páginas hay y cómo se anidan).
  Si añades una página nueva, recuerda enlazarla aquí para que aparezca en el árbol de la ayuda.
- Cada página es un archivo **`.md`** dentro de `src/` (puede empezar por un encabezado `# Título`).
- Las **imágenes** van en **`src/images/`**, y se enlazan desde el _markdown_ con rutas relativas
  (por ejemplo `![Descripción](../images/mi-captura.png)`).

> La estructura es compatible con [mdBook](https://github.com/rust-lang/mdBook), pero la ayuda ya
> **no se compila ni se publica con mdBook**: la sirve directamente la web de Digi21.

## 🌐 Cómo llega a la web

La página [www.digi21.net](https://www.digi21.net) **importa** el contenido de este repositorio
(rama `main`) y lo indexa para servirlo y permitir la búsqueda. Cuando se acepta un _pull request_,
la ayuda de la web se actualiza a partir de él. Por eso el repositorio es la referencia: editar aquí
es editar la ayuda real.

> Nota histórica: antes la ayuda se compilaba con mdBook y se publicaba en la rama `gh-pages`
> (`ayuda.digi21.net`). Ese sistema ya no se usa; ahora la gestiona y sirve www.digi21.net.

¡Gracias por ayudarnos a mejorar la documentación de Digi21! 🙌
