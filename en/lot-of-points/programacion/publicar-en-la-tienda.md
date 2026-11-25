# Publish in the extension store
<!-- id: lot-of-points-publicar-en-la-tienda -->
<!-- origen: 82bffd80238d610419ad88bfc4853239abb7b539 -->

The lotofpoints.xyz extension store distributes Lot Of Points commands written in C, C++, Python or .NET. Users install extensions from **Settings** > **Store** (see the [extension manager](../gestor-de-extensiones.md)). Digi21 approves each developer and reviews each version before publishing, because extension code runs on the user's computer with the same permissions as Lot Of Points.

## Register as a developer

1. Sign in to lotofpoints.xyz and open `https://lotofpoints.xyz/DesarrolladoresExtensiones` (in the page footer, **Developers** > **Publish an extension**).
2. Enter the public name used for your extensions in the store and a prefix: lowercase letters, digits and hyphens between words, for example `mi-empresa`. This prefix begins your extension and module identifiers and cannot be changed. Digi21 prefixes (`lop`, `digi21`, `digi3d`, `mdtopx` and others) are reserved.
3. Wait for Digi21 to approve the request.

## Create an extension

Create the extension in the developer portal with:

- An identifier consisting of your prefix, a dot and a name, for example `mi-empresa.viales`, at most 100 characters.
- The program loading the extension (currently Lot Of Points); this cannot be changed after creating the extension.
- The name, summary and support months included in a purchase.
- Description and instructions in Markdown, a text format with marks for headings, lists and links. The public listing displays embedded HTML (Hypertext Markup Language) as text and only shows images uploaded through the extension page.
- An icon: a square image of at least 96 × 96 pixels and up to 5 mebibytes (MiB), in PNG (Portable Network Graphics), JPEG (Joint Photographic Experts Group), GIF (Graphics Interchange Format) or WebP. 256 × 256 pixels is recommended: Lot Of Points **Store** shows the icon at 48 × 48 and the lotofpoints.xyz listing at 96 × 96.

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

1. On the extension page, enter the version (`mayor.menor.revisión`, higher than every version already created), minimum Lot Of Points version and release notes in Markdown. If it is a beta version, select the beta checkbox (see the "Beta versions" section).
2. Choose the ZIP and click **Upload and submit for review**. The page uploads the ZIP to lotofpoints.xyz and the server checks the contents of the ZIP.
3. Wait for Digi21's review. If rejected, the page shows the reason and you can upload another ZIP.

On publication, lotofpoints.xyz assigns the publication date and signs a manifest containing each file's cryptographic hash. At each startup, Lot Of Points checks the manifest signature and file hashes of each installed version. A purchase permits use of extension versions published up to the end date of its included support. If Digi21 withdraws a published version, the store stops delivering it and Lot Of Points stops loading it.

## Hide an extension

A hidden extension does not appear in the store catalog or in its public listing on lotofpoints.xyz (`/Extensiones/{id}`). Users find the hidden extension in Lot Of Points with an access code that you give them (see the "Access codes" section). A hidden extension goes through the same approval and the same Digi21 review as a catalog extension, and Digi21 also signs the manifests of its versions. If the extension is paid, the user still needs the license: the access code lets the user find and download the extension, but it does not replace the license.

To hide an extension or show it in the catalog again:

1. Open the extension page in the developer portal and go to the **Catalog visibility** section.
2. Click **Hide**. To show it again, click **Show in the catalog**.
3. If the extension already has published versions, confirm the portal warning: "Users who installed the extension from the catalog will stop receiving new versions until they enter an access code in Lot Of Points." These users keep the installed versions; to receive new versions, they enter an access code.

A store entry for buying a feature built into the program must appear in the catalog, so the portal does not allow hiding it.

## Access codes

An access code lets a user find a hidden extension in Lot Of Points and download it. Each code belongs to one extension. Create one code per recipient so that you can revoke the codes separately.

To create an access code:

1. On the extension page, go to the **Access codes** section.
2. Optionally, enter a description in **Recipient description (optional)**. The table of codes shows that description.
3. Optionally, choose a date in **Expires on (optional; at 00:00 Coordinated Universal Time, UTC)**. If you choose no date, the code does not expire (**No expiry**).
4. Click **Create an access code**.
5. Copy the code and the link with the **Copy** buttons and send them to the recipient.

The portal shows the code and the link only once: "Copy the code and the link now: the store keeps only the SHA-256 hash of the code and cannot show the code again." SHA-256 is a function that computes a cryptographic hash of a text; the code cannot be recovered from the hash. If you lose a code, revoke it and create another.

A code has 20 letters and digits. The portal shows it in four groups of five separated by hyphens. The link has the form `https://lotofpoints.xyz/Extensiones/Codigo#BCDFG-HJKLM-NPQRS-TVWXZ`. The code occupies the URL fragment, after the hash sign (`#`). The browser does not send the fragment to the server. The `/Extensiones/Codigo` page shows the code from the link with a **Copy** button and explains how to use it in Lot Of Points.

Each extension can have at most 100 unrevoked codes. If it already has 100, the portal shows "The extension already has 100 access codes that are not revoked. Revoke an access code before you create a new access code."

The table in the **Access codes** section shows, for each code, its first 5 characters, the description, the creation date (**Created (UTC)**), the expiry date (**Expires (UTC)**), the number of **Lookups**, the **Last lookup (UTC)** and the **Status**: **Valid**, **Expired** or **Revoked**. A lookup is a Lot Of Points request that finds the valid code.

To revoke a code, click **Revoke** in its table row. From then on, Lot Of Points does not find the extension with that code. Revoking a code does not uninstall the extension from computers that already installed it, and Lot Of Points keeps loading the installed versions. To stop Lot Of Points from loading an installed version, ask Digi21 to withdraw that version.

### What the user does in Lot Of Points

1. Open the **Store** panel and click **Find with an access code**.
2. Type the code or paste the link received. The dialog explains: "Type the access code or paste the link that the developer sent you. Hidden extensions do not appear in the store catalog." Lot Of Points accepts the code with or without hyphens.
3. Click **Find**. Lot Of Points shows the extension listing, and the user installs it in the same way as a catalog extension. The confirmation dialog warns that the extension does not appear in the catalog and that Lot Of Points found it with the code entered.

If no valid code matches the text, Lot Of Points shows "No valid access code matches the text you typed. Check the code or ask the developer of the extension for a new one."

Lot Of Points saves the code of each hidden extension that the user finds. When the user refreshes the catalog and the saved code has expired or you have revoked it, Lot Of Points shows: "The access code saved for {0} has expired or the developer has revoked it. Lot Of Points keeps the installed versions of {0}. Enter a valid code to look up the available versions of {0} in the store.", where {0} is the extension name.

## Beta versions

A beta version is a version that you publish so that users test it before you publish it as a stable version. Lot Of Points offers the beta versions of an extension only to users who choose to receive them.

To publish a beta version:

1. On the extension page, fill in the version form as explained in the "Publish a version" section.
2. Select the checkbox **Beta version: Lot Of Points offers it only to users who choose to receive the beta versions of this extension.**
3. Click **Upload and submit for review**.

A beta version uses the same number format as a stable version (`mayor.menor.revisión`, without suffixes such as `-beta.1`) and must be higher than every version already created, beta or stable. Digi21 reviews it in the same way as a stable version, and the signed manifest does not indicate that it is beta. The versions table on the extension page has a **Beta** column that marks beta versions. The public listing on lotofpoints.xyz does not show beta versions.

To have only specific recipients receive the beta, publish it in a separate hidden extension.

### What the user does in Lot Of Points

The extension listing shows the **Latest beta version**. The user clicks **Install beta version {0}**, where {0} is the version number, and confirms the installation. If the beta installs successfully, Lot Of Points offers from then on the newest version of the extension, beta or stable. To stop receiving beta versions, the user clicks **Return to stable version {0}**. If the latest stable version is not installed, Lot Of Points downloads it when the user clicks the button. At the next startup, Lot Of Points loads the latest stable version and deletes the installed beta versions.

### Publish a beta as a stable version

To publish an already published beta version as stable, click **Publish as stable version** in its row of the versions table. Digi21 does not repeat the review, because the files and the signed manifest are the ones it already reviewed. The version keeps its publication date and the **Beta** column no longer marks it. Users who do not receive beta versions start seeing that version as stable.

The portal rejects the change if the version is not a published beta or if the extension has a published stable version with a higher number: "Only a published beta version can be published as stable, and the extension must not have a published stable version with a version number higher than that of the beta version." For example, if you publish stable version 1.1.1, you cannot publish beta 1.1.0 as stable.
