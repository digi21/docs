# My files
<!-- id: topcal21-web-mis-archivos -->
<!-- origen: f32bdfc0191818be1c7b53895145b7e6e085bbae -->

"My files" shows the content of the user's file space and lets you upload, download and delete files and create folders. Open it with the **My files** option of the account menu, which is in the top right corner of the workspace.

Instruments, reference systems and preferences are not managed in "My files": the website stores those files in the `.topcal21` configuration folder, which "My files" does not show, and they are edited from the [workspace](preferencias-instrumentos-y-sistemas-de-referencia.md).

## Organizing the files

The website recommends creating one folder per project and uploading to it the Topcal21 files (`.prt`, `.pts`, `.obs` and `.crq`) and the field files you want to import.

The list shows folders first and then files, each group sorted by name. Each file has the columns **Name**, **Size** and **Modified (UTC)**. The path of the current folder appears above the list; each level of the path is a link that opens that folder. The website shows up to 500 items per page and offers the **Previous page** and **Next page** buttons when the folder has more items.

## Uploading files

The website lets you upload files from the browser in three ways:

* Click **Upload files** and choose one or more files.
* Click **Upload a folder** and choose a folder on your computer. The website uploads the folder with its subfolders.
* Drag files or folders to the area labeled "Drag files or folders here to upload them to the current folder.".

Files are uploaded to the folder that is open in the list. A file uploaded with the same name as another file in the same folder replaces the previous file. A panel below the drag area shows the progress of the upload.

The website does not support uploading with AzCopy.

## Creating folders

Type the name in the **New folder name** box and click **Create folder**. The folder is created inside the open folder.

## Opening, downloading and deleting

Each file has these buttons on the right of its row:

* **Open in Topcal21**, only on `.prt`, `.pts` and `.obs` files: opens the file in the [workspace](espacio-de-trabajo.md).
* **Download**: downloads the file to your computer.
* **Delete**: asks for confirmation and deletes the file. This operation cannot be undone.

The **Delete** button of a folder shows the number of files and the size it contains, asks for confirmation and deletes the folder with all its content. This operation cannot be undone.

## Size limits

| Limit | Value |
|---|---|
| Maximum size of each file | 20 MiB (20,971,520 bytes) |
| Maximum space of each account | 200 MiB (209,715,200 bytes) |

Above the list, the website shows "Space used: X of Y." and a progress bar. The bar turns yellow when the space used reaches 75% of the maximum space and red when it reaches 90%. Before receiving the content of a file, the website checks both limits; if the upload exceeds either of them, the website rejects it and shows the reason. The status bar of the workspace shows the same count of space used and maximum space.

The file space is a private Azure Blob Storage container that only the user's account can view and modify. With a suspended account, the user can view and download the files, but cannot upload them, create folders or delete anything.
