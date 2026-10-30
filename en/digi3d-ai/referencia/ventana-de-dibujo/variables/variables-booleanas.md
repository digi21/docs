# Boolean variables
<!-- origen: 7426f5773107acf3bfc6f67089167728df493070 -->

These variables can have two values: true or false.

### Parameters

#### Without parameters

You can run a Boolean variable command in two ways: without parameters or with parameters.

If you run a Boolean variable command without parameters, the variable toggles its current value.

For example, the Boolean variable command [BEEPS](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) makes the application play a sound when data is entered with the input device or when an error is detected.

Run the following command if _PITA_ is _True_:

```text
BEEPS
```

The value of _PITA_ changes to _False_. Run the command again to change _PITA_ to _True_:

```text
BEEPS
```

The value of _PITA_ changes back to _True_.

#### With parameters

Boolean variable commands accept the following parameters:


| Parameter number | Description | Accepted values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


### Examples

Run the following command to force the Boolean variable _PITA_ to _True_:

```text
BEEPS=1
```

Run the following command to force the Boolean variable _PITA_ to _False_:

```text
BEEPS=0
```

Run the following command to display the value of the Boolean variable BEEPS in a balloon:

```text
BEEPS=?
```

##
