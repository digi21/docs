# Photogrammetric window
<!-- id: ventana-fotogrametrica -->
<!-- origen: c088dea2ec47955f453db7ba62a65a7d13738161 -->

## Overview of photogrammetric window operation

The photogrammetric window essentially performs these tasks:

1. Changes the _ground coordinate_.
2. Displays images at a given position.
3. Notifies the drawing window of user actions, for example: the user has moved, pressed the _data_ pedal, released the _snap_ pedal, ...
4. Waits for another user action and repeats this process.

### Step 1: Changing the ground coordinate

The photogrammetric window has a coordinate (the _ground coordinate_). This changes as the user moves the input device and is used to calculate where images should appear in the photogrammetric window.

The photogrammetric window follows these steps to transform the _ground coordinate_:

1. Waits for the user to interact with the input device (topomouse, handwheels, ...).
2. Changes the photogrammetric window's coordinates according to the user's action (moving the topomouse by the equivalent of one meter along X changes the window's ground coordinates by one meter along X).

### Step 2: Displaying images at a given position

The photogrammetric window does not perform the mathematical operations determining which pixel of each image should appear at the screen center for a ground coordinate.

The window displays images and delegates image position calculation to the loaded sensor. For a ground coordinate, it asks the sensor for the pixel coordinates on which to center each image. On receiving them, the photogrammetric window displays images at the position calculated by the sensor.

If you load a conic camera sensor, it performs the operations needed to transform the ground coordinate into left and right image pixel coordinates. If you load a satellite sensor, it performs the same transformation using different operations. Because each sensor handles the ground-to-pixel transformation, adding a new sensor does not require modifying the main application.

The photogrammetric window follows these steps to display images:

1. If the photogrammetric model has an assigned orientation (_absolute, affine_, ...), the window transforms the _ground coordinate_ through that orientation (_absolute_ or _affine_) to obtain the _coordinate to send to the sensor_. If no orientation is assigned, the _coordinate to send to the sensor_ is set to the _ground coordinate_.
2. The window uses the _coordinate to send to the sensor_ to ask the loaded sensor (orthophoto, stereo conic camera, satellite, ADS, ...) where to display images in the photogrammetric window.
3. The sensor returns pixel coordinates that should appear at the window center.
4. The photogrammetric window displays images, ensuring that the pixel coordinates returned by the sensor are at its center.

### Step 3: Notifying the drawing window of a user action

If a drawing window is open:

1. The photogrammetric window communicates the user's action to the drawing window.

## Components with coordinate reference systems

The process described above includes three components with their own coordinate reference systems:

1. The _ground coordinate_. Its coordinate reference system is called the _orientation coordinate system_.
2. The _sensor_. Its system is called the _sensor coordinate reference system_.
3. The _drawing window_. Its system is called the _drawing window coordinate reference system_.

Because the orientation, sensor and drawing window coordinate reference systems can differ, Digi3D.AI transforms coordinates between them. The following steps include those transformations:

![Transforming the ground coordinate to the sensor and drawing window reference systems](../../../../images/gráfico-transformación-terreno-a-scr-sensor-y-scr-ventana-de-dibujo.png)

**Displaying images at a position:**

1. If the photogrammetric model has an assigned orientation (_absolute, affine_, ...), the window transforms the _ground coordinate_ through that orientation (_absolute_ or _affine_) to obtain the _coordinate to send to the sensor_. If no orientation is assigned, the _coordinate to send to the sensor_ is set to the _ground coordinate_.
2. **The coordinate obtained in the previous step is transformed from the orientation's coordinate reference system to the sensor's coordinate reference system.**
3. The photogrammetric window uses the _coordinate to send to the sensor_ to ask the loaded sensor (orthophoto, stereo conic camera, satellite, ADS, ...) where to display images in the photogrammetric window.
4. The sensor returns pixel coordinates that should appear at the window center.
5. The photogrammetric window displays images, ensuring that the pixel coordinates returned by the sensor are at its center.

**Notifying the drawing window of a user action:**

If a drawing window is open:

1. **The photogrammetric window transforms the ground coordinate from the orientation's coordinate reference system to the drawing window's coordinate reference system.**
2. The photogrammetric window communicates the user's action to the drawing window and sends the coordinates obtained in step 1.
