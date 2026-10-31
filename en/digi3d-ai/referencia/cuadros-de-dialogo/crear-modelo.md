# Create model
<!-- id: crear-modelo -->
<!-- origen: fb8805c9bad4c638e5f1e3270ab4a3d0ac018d07 -->

![Create model dialog](../../../images/crear-modelo.png)

This dialog creates a model file (`.d3d`) and adds it to the selected strip. It is opened by **Create** in the **Models** list of [Create photogrammetric project](crear-proyecto-fotogrametrico.md).

## Fields

* **Overall properties**
  * **Work directory**: folder where the model file is created. Default: project file folder.
* **Sensor properties**: parameters of the sensor selected under **Sensor** in Create photogrammetric project. Each sensor shows its own parameters. For example, Conical requests the aerial triangulation file and left and right images.
* **Description area**: the lower area describes the selected parameter.
* **Create**: creates the model file in the working directory, using the sensor's model name and the `.d3d` extension (for example, **107-108.d3d** with Conical). Adds the model to **Models** and closes the dialog.
* **Cancel**: closes without creating the model.

## Notes

* The dialog does not validate fields. **Create** accepts sensor parameters as they are.
* If the `.d3d` exists, **Create** updates its working directory, sensor and parameters, preserving the rest of its contents.
* If the file cannot be written, Digi3D.AI displays “Unable to create photogrammetric model”, with the file path and failure description. The model is still added to **Models**.
* **Create** does not check whether the model is already in **Models**. If it is, it appears twice.
