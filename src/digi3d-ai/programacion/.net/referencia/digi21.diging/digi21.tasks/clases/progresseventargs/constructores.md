# Constructores
<!-- id: constructores-12 -->

Espacio de nombres: `Digi21.Tasks`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Crea un [ProgressEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/) con un porcentaje de progreso.

```csharp
public ProgressEventArgs(int progress)
```

| Parámetro | Descripción |
| :--- | :--- |
| `progress` | Porcentaje de progreso, normalmente entre el 0 % y el 100 %, ambos incluidos. El constructor guarda `Math.Max(0, progress)`: un valor negativo se guarda como 0 %. El constructor no impone un límite superior al porcentaje. |
