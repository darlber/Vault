using Microsoft.ML.Data;

public class IrisPrediction
{
    [ColumnName("PredictedClusterId")]
    public uint PredictedClusterId { get; set; }

    [ColumnName("Score")]
    public float[]? Score { get; set; }
}