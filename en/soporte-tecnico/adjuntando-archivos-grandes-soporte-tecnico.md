# Attach files to a technical support ticket
<!-- id: adjuntando-archivos-grandes-soporte-tecnico -->
<!-- origen: 9c1c42825fbad5ae07d6ccf14aa145180d8d8af5 -->

Attach files within the ticket when creating it or replying. There is no size limit per file or message: attach flight images or complete _.las_ files.

## How files are uploaded

The browser sends each file directly to Digi21's Azure storage in 8 MB blocks. Files do not pass through the web server. If a block fails, the browser retries up to 3 attempts.

During upload:

* Each file shows a progress bar.
* **Do not close the page or browser** until finished. Closing interrupts upload without resuming; attach the files again.
* Upload must finish within 48 hours, after which write permission expires.

## Attach files when creating a ticket

1. In **Create support ticket**, drag files into **Attachments** or click to select them. Several files can be added.
2. Click **Create ticket**.

The website first creates the ticket, shows _Ticket #number created. Uploading attachments…_, then uploads files. After completion, it opens the ticket.

If upload fails, the ticket exists without files. The website shows _Ticket #number has been created, but the attachments have not been uploaded_ and a ticket link. Open it and attach the files in a reply.

## Attach files when replying

1. Open the ticket.
2. In **Reply**, drag files into the attachment area or click to select them.
3. Optionally write a message. A message can contain files alone.
4. Click **Send reply**.

The website shows _Uploading attachments…_ during upload and _Sending…_ while saving the message. It then reloads with the new message.

If upload fails, the message is not sent. The error appears and **Send reply** is enabled again. Click it to retry.

## Download ticket files

Each attachment appears under its message with name and size. Click the name to download it.

To download several files:

* **Download all _N_ attachments as a ZIP file** downloads all ticket files. For files in several messages, the ZIP contains a folder per message with its number, date and author.
* **Download all _N_ attachments as a ZIP file**, under a message, downloads that message's files only.

The server generates the ZIP during download. Therefore:

* The browser shows neither percentage nor total size.
* Interrupted downloads cannot resume: start again. For very large files, download individually; those downloads can resume.

Files are stored in the ZIP without compression. Windows Explorer opens it even above 4 GB.

## Send files without a ticket

For files unrelated to a ticket, use [Send files to Digi21](https://www.digi21.net/Soporte/EnviarArchivos). No account is needed: confirm your email with a code. Ticket-related files belong in the ticket.
