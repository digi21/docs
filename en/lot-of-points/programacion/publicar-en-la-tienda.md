# Publish in the extension store
<!-- id: lot-of-points-publicar-en-la-tienda -->
<!-- origen: 21464df213bfa113c242a1e337d7d12cca46288d -->

The digi21.net extension store distributes Lot Of Points commands written in C, C++, Python or .NET. Users install extensions from **Settings** > **Store** (see the [extension manager](../gestor-de-extensiones.md)). Digi21 approves each developer and reviews each version before publishing, because extension code runs on the user's computer with the same permissions as Lot Of Points.

## Register as a developer

1. Sign in to digi21.net and open **Licenses** > **Publish Lot Of Points extensions**.
2. Enter the public name used for your extensions in the store and a prefix: lowercase letters, digits and hyphens between words, for example `mi-empresa`. This prefix begins your extension and module identifiers and cannot be changed. Digi21 prefixes (`lop`, `digi21`, `digi3d`, `mdtopx` and others) are reserved.
3. Wait for Digi21 to approve the request.

## Create an extension

Create the extension in the developer portal with:

- An identifier consisting of your prefix, a dot and a name, for example `mi-empresa.viales`, at most 100 characters.
- The program loading the extension (currently Lot Of Points); this cannot be changed after creating the extension.
- The name, summary and support months included in a purchase.
- Description and instructions in Markdown, a text format with marks for headings, lists and links. The public listing displays embedded HTML (Hypertext Markup Language) as text and only shows images uploaded through the extension page.
- An icon: a square image of at least 96 × 96 pixels and up to 5 MiB, in PNG (Portable Network Graphics), JPEG (Joint Photographic Experts Group), GIF (Graphics Interchange Format) or WebP. 256 × 256 pixels is recommended: Lot Of Points **Store** shows it at 48 × 48 and the digi21.net listing at 96 × 96.

To show an image in the description, instructions or release notes, upload it through the extension page and paste the Markdown line displayed after upload into the field being edited, in the form `![texto alternativo](dirección de la imagen)`. Each field's **Preview** tab shows the text as it will appear in the public listing.

## Offers and modules

Each offer specifies how the user obtains the extension:

| Offer | Data |
|---|---|
| Free | No module or price. Any registered computer can download the extension. |
| Purchase for one computer | Module and price. License activates on one computer only. |
| Floating license purchase | Module and price. The user chooses each activation's end date and can change computers. |
| Rental | Module, price and rental months. |
| Trial | Module and trial days, no price. Each account and computer can have one trial of the module. |

A module is a `prefijo.nombre` name, for example `mi-empresa.viales`. The form proposes the extension identifier as the module and offers modules from your other offers; choose **Other module…** to enter another name. Until the store supports payments, users can request trials of paid extensions offering one. After publishing the first version, you cannot delete an offer with a module, because users holding that module's license need the offer to download the extension.

## Declare the module in code

Declare the offer's module in each paid command. Lot Of Points only shows and runs it if a license activated on the computer includes that module, even when someone copies the library or script outside the extension folder.

| Language | Declaration |
|---|---|
| C | `module` field of `lop_command` (see the [lop_sdk.h reference](c-cpp/referencia.md#lop_command)). |
| C++ | `module` field of `lop::Declaration`. |
| Python | `module` argument of `@lop.command` (see the [lop module reference](python/referencia.md#python-commands)). |
| .NET | `Module` property of the `[Command]` attribute. |

Commands without a module need no license.

## Prepare a version ZIP

Each version is a ZIP containing the files Lot Of Points installs in that version's folder:

- Native `.dll` libraries exporting `lop_register_commands` and .NET assemblies go at the ZIP root. Native library dependencies can also go at the root.
- Each root `.py` file is a command script. Put Python helper modules in a subfolder named specifically for your extension, because all extensions share `sys.path` and module names.
- The ZIP cannot contain `__pycache__` folders or a root `manifiesto.jws`, paths with `..`, `\`, `:`, names ending in a dot or space, or Windows device names such as `CON` or `NUL`.
- ZIP size can be up to 200 mebibytes (MiB), with up to 5,000 total items, counting files and folders. Uncompressed contents can be up to 1 gibibyte (GiB). It must contain at least one `.dll` or `.py` file.

## Publish a version

1. On the extension page, enter the version (`mayor.menor.revisión`, higher than every version already created), minimum Lot Of Points version and release notes in Markdown.
2. Choose the ZIP and click **Upload and submit for review**. The page uploads it to digi21.net and the server checks its contents.
3. Wait for Digi21's review. If rejected, the page shows the reason and you can upload another ZIP.

On publication, digi21.net assigns the publication date and signs a manifest containing each file's cryptographic hash. At each startup, Lot Of Points checks the manifest signature and file hashes of each installed version. A purchase permits use of extension versions published up to the end date of its included support. If Digi21 withdraws a published version, the store stops delivering it and Lot Of Points stops loading it.
