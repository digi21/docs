# Constructors
<!-- id: constructores-12 -->
<!-- origen: 49e3b316e3843c2b93bb9ed3b2db64ff324a0469 -->

Namespace: `Digi21.Tasks`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a [ProgressEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/clases/progresseventargs/) with a progress percentage.

```csharp
public ProgressEventArgs(int progress)
```

| Parameter | Description |
| :--- | :--- |
| `progress` | Progress percentage, normally between 0% and 100%, inclusive. The constructor stores `Math.Max(0, progress)`: a negative value is stored as 0%. The constructor imposes no upper limit on the percentage. |
