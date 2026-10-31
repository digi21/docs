# Share projects
<!-- id: lot-of-points-studio-compartir-proyectos -->
<!-- origen: afd303a6b0f57b36b557b2aaee1fe419af56294b -->

Studio generates a link to open each published project in Lot Of Points. It points to the project catalog and incorporates the read-only Shared Access Signature (SAS) configured in **Settings**. The resource address is a uniform resource locator (URL).

## Get the link

Configure **Azure container (URL with read-only SAS, to share)** in [Settings](ajustes.md). It must address the container holding the published clouds. Return to **Projects** and select the project to share.

Above the cloud list is **URL to load the project in Lot Of Points:**. Click **Copy** to copy it to the clipboard. Without a read URL, Studio shows **Set up the read-only SAS** instead of a link. The write URL is not used to generate this sharing link.

The link retains the container SAS permissions and expiration. Opening the catalog in Lot Of Points needs only read permission; browsing the project list in Studio also requires list permission. [Settings](ajustes.md#read-only-url) explains the difference.

## Open the project in Lot Of Points

In Lot Of Points, click **Add remote point clouds (Azure)** in **Layers** and paste the copied link. The viewer reads the catalog and streams its clouds, requesting level-of-detail parts needed for the view without downloading the whole project first.

Published spherical images accompany the clouds. Thumbnails are downloaded when opening the catalog; originals when entering each photograph. Lot Of Points also supports remote-cloud editing on the user's computer when edit logs and original indices are available. Tile-based commands can choose remote clouds; read-only queries need neither edit logs nor original indices. Local edits do not update Azure files. See the [Lot Of Points introduction](../lot-of-points/introduccion.md) for viewer tools.

## Renew an expired link

If the SAS has expired, enter a valid read URL in **Settings**, return to **Projects** and copy the link again. The catalog stores cloud URLs without the SAS, so renewing access requires no republication.
