# Installation
<!-- id: instalacion -->
<!-- origen: 28141c2baa60ab116d1e9f22a06fe4ba6987c2fc -->

Reproject is distributed through the Microsoft Store: [Reproject on the Microsoft Store](https://apps.microsoft.com/detail/9PFMLFNXDQLN).

## Requirements

* Windows 10 build 17763 (version 1809) or later.
* 64-bit processor (x64).

## Install the application

1. Open [Reproject on the Microsoft Store](https://apps.microsoft.com/detail/9PFMLFNXDQLN).
2. Click **Get** (or **Install**). The Microsoft Store downloads and installs it.
3. Start Reproject from Start.

The Microsoft Store also installs application updates.

The package includes the EPSG database. No additional installation is needed to transform coordinates. Some transformations require a geoid model not included in the package: the application downloads it when needed. See [Transformations and geoid models](/reproject/transformaciones-y-modelos-de-geoide.md).

## Stored data

Reproject stores data locally in the user's local application data folder:

* Last source and target systems, recent systems and the selected transformation.
* Systems saved with **Save to favorites**.
* Downloaded geoid models. **Settings** shows their folder and opens it in File Explorer.

## Internet connections

Reproject connects to the Internet only:

* At startup, to download a public geoid model source list hosted on GitHub. It saves a local copy for offline use.
* When the user accepts a geoid model download.

The application collects or sends no personal data. Its privacy policy is in the repository: [privacy-policy.html](https://github.com/digi21/reproject/blob/main/docs/privacy-policy.html).
