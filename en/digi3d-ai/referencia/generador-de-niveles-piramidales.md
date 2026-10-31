# Pyramid Level Generator
<!-- id: generador-de-niveles-piramidales -->
<!-- origen: 68b96138d6bb2dfdfcd402ed1df0003064a600cd -->

![Pyramid Level Generator](../../images/generadordenivelespiramidales.png)

Batch-converts TIFF (Tagged Image File Format) images for Digi3D.AI compatibility and creates pyramid levels. The window is titled **Create tiles and pyramidal levels**.

## Notes

Digi3D.AI requires tiled TIFF images, composed of small image tiles.

It also requires pyramid levels: copies of the image at different resolutions. Levels may be embedded in the TIFF or stored externally, usually in `.pyr`, a TIFF renamed to .pyr containing levels 2, 4, 8…

Loading an untiled TIFF opens [Image not prepared for Digi3D.AI found](cuadros-de-dialogo/localizada-una-imagen-no-preparada-para-digi3d-ai.md), offering conversion.

A tiled TIFF without pyramid levels triggers **no conversion question**, since it is already compatible.

Use Pyramid Level Generator to batch:

* Convert incompatible untiled TIFFs to tiled, Digi3D.AI-compatible images and create pyramid levels.
* Create levels for already tiled images. These images remain unchanged: external levels are created beside the original, even with an **Output directory** specified.

Already tiled images with levels are skipped and reported in Results. A tiled TIFF containing more than one image is considered to have pyramid levels.

## Drag TIFF image files to be imported to this window

In File Explorer, select files and drag them into the list.

Only .tif, .tiff and .smti are accepted. Existing list entries are not added again.

Files dragged during processing are ignored.

Dragging folders prompts to include their TIFFs and subfolders. **Yes** adds .tif, .tiff and .smti recursively; **No** adds none from the folders. Asked once per drop, even for multiple folders.

### Delete button

Removes the selected file. Only one can be selected, so removing several requires repeated clicks. Disabled with no selection.

### Add button

Opens multiple selection for .tif, .tiff or .smti. Rejects .pyr because these are generated pyramid files.

## Output directory

Optional. **...** opens folder selection.

* With a directory, creates resulting images there using original names. Creates a missing directory's last path component only: its parent must exist. Supports [substitutions](cuadros-de-dialogo/sustituidores.md); a changed path is shown in Results.
* Empty, renames each original by appending `__0` after the extension (or `__1`, `__2`… if necessary), such as `foto.tif__0`, then writes the new image under the original name.

Output directory applies only to images being tiled. Their external levels are created beside the resulting image, from that image. Already tiled images get external levels beside the original.

## Tile size

Tile dimensions in pixels: 64, 128, 256, 512, 1024, 2048 or 4096. Default 1024.

## Maximum pyramidal level to be created

Select 1, 2, 4, 8… through 8192. Each level halves the previous image dimensions. Default 128. This becomes the maximum selectable level in the photogrammetric window's status bar.

## Compress in JPEG

Enable JPEG compression for generated images. Off by default. Applies to tiled images, .pyr level 2 and individual pyramid TIFFs. Embedded levels and .pyr levels 4 and above remain uncompressed.\
Usually unnecessary: Digi3D.AI generates and loads BigTIFF without a file size limit.

### Quality

Select 0–100 with the slider or text field. Default 75. Higher quality means less compression. Enabled only with **Compress in JPEG**.

## Transform color in transparency

Original images may lack transparency but use a special color for transparent areas.

Enabling adds an alpha channel, making the specified color transparent. Off by default.

Enables Red, Green and Blue fields for the transparent color; defaults to 255, 255, 255 (white).

Applies only to newly tiled images with 1 or 3 channels. One-channel images use Red only. Four-channel and already tiled images remain unchanged.

## Generate self-contained pyramidal levels in the original image if possible.

Enabled by default. Embeds levels in the resulting image, producing one TIFF with tiles and levels.

Possible only when creating an image from an untiled original. Already tiled originals remain unchanged and always receive external levels.

### If self-contained pyramid levels are not created:

Select the external level format:

* **Create a .pyr file** (default): one file named after the image with .pyr, such as `foto.pyr`.
* **Create a TIFF file for each pyramid level**: one per level, with `.tif_` followed by the level, such as `foto.tif_2`, `foto.tif_4`…

## Threads

Select thread count, from 1 to the computer's logical processor count; defaults to the maximum. Each thread processes a listed file.

Higher values speed up processing but slow other operating system tasks.

## Transform

Starts processing; enabled when the list is nonempty. All controls except **Exit** are disabled. Results shows the file and current pyramid level; the first progress bar tracks the current operation, the second the processed file count. Each processed file leaves the list even on failure, whose reason stays in Results. Completion displays “Work concluded satisfactorily” or the error count.

## Exit

Closes the application. Stops active processing first: deletes the file under construction (retaining completed pyramid files) and restores the original name if the image had been renamed.
