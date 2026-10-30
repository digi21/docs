# Boolean variables
<!-- id: variables-booleanas -->
<!-- origen: a33cb153f71084f1e3662aefcc7df6fa92bdf257 -->

These variables can have two values: true or false.

## Parameters

You can run a Boolean variable command in two ways: without parameters or with parameters.

### Without parameters

If you run a Boolean variable command without parameters, the application toggles the value of the variable.

### With parameters

Boolean variable commands accept the following parameters:


| Parameter number | Description | Accepted values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether the command is enabled or disabled.| Yes |


## Examples

The Boolean variable command [BEEPS](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) controls whether the application plays a sound when you enter data with the input device or when it detects an error.

If _BEEPS_ is _True_ and you run the following command:

```text
BEEPS
```

The value of _BEEPS_ changes to _False_. If you run BEEPS again without parameters:

```text
BEEPS
```

The value of _BEEPS_ changes back to _True_.

Run the following command to set the Boolean variable _BEEPS_ to _True_:

```text
BEEPS=1
```

Run the following command to set the Boolean variable _BEEPS_ to _False_:

```text
BEEPS=0
```

Run the following command to display the value of the Boolean variable BEEPS in a balloon:

```text
BEEPS=?
```
