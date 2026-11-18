# Straight line and circle intersection
<!-- id: interseccion-de-recta-y-circulo -->
<!-- origen: 0d827ab564f9c34259b2c5f6bae946f91e4ddc95 -->

This tool is used to compute the intersection between a straight line and a circle. The straight line can be defined by two points or by a point and an azimuth. The circle can be defined in any of the following ways:

![Straight line and circle intersection](../../images/calculo-de-interseccion-de-recta-y-circulo.jpg)

* **Three points**: Circle that passes through three points
* **Two points**: Circle whose diameter is defined by two points
* **Centre and radius**
* **Centre and one point of the circle**: Circle with its center at one point that passes through another point

Depending on which type of definition is selected, the fields corresponding to those definitions are enabled or disabled. The fields shown are the following:

* **Point list**: List of points of the current file
* **Data of the straight line**. Depending on the selected option, it can show
  * *Point 1, Point 2*
  * *Point 1, Azimuth*
* **Data of the circle**
  * *Definition*: Type of definition. The possibilities and fields to fill in are the following:
    * *3 points*: Point 3, Point 4, Point 5
    * *2 points*: Point 3, Point 4
    * *Centre and Radius*: Centre, Radius in meters
    * *Centre and Point*: Centre, Point of Circle
  * *Centre*: Computed center
  * *Radius*: Computed radius in meters
* **Results**
  * *Solution 1*
  * *Solution 2*
  * *Point number*

Once the intersection has been computed, you can click the **Save** button to save the selected solution in the point file, with the point number indicated in the **Point number** field.

