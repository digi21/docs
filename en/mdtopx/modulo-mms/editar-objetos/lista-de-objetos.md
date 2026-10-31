# Object list
<!-- id: lista-de-objetos -->
<!-- origen: 101ff29756ba31e6eaed0f03755010f43b15b7f6 -->

[MMS Edit objects tab](./)

Lists objects in the active window's point cloud. Select objects in the view, navigate to them, change classification or delete them from this list.

Create objects with [**Generate**](generar-objetos.md) or [**New**](objeto-nuevo.md). **List** is disabled if the cloud has no objects.

The dialog does not block the cloud window. Continue working in the view while it stays open. The list refreshes whenever the dialog is activated, reflecting objects created, deleted or changed meanwhile. It closes with the cloud window.

## Columns

| Column | Meaning |
|---|---|
| No. | Object number in the cloud. |
| Points | Object point count. |
| Classification | Object LiDAR class code and name, from its first point. |
| X, Y, Z | Center of the object's bounding box. |
| Height diff. | Difference between highest and lowest object point Z. |

Click a column header to sort; click it again to reverse the order.

## Select objects

Use **Ctrl** to add or remove individual selections and **Shift** for a range. The two buttons below the list on the right deselect or select all objects.

List selections also select object points in the view. Total and selected object counts appear below the list.

## Buttons

* **Change classification...**: opens the LiDAR class list and assigns the chosen class to every point of selected objects.
* **Delete...**: deletes selected objects, first asking whether to delete their points:
  * **Yes**: deletes objects and points.
  * **No**: deletes only objects; points remain in the cloud without an object.
  * **Cancel**: deletes nothing.
* **Go to**: fits the view to selected objects. Double-clicking an object does the same for it.
* **Help**: opens this page.
* **Close**: closes the dialog.

Classification changes and deletions support **Undo**.
