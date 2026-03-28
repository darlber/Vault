using Microsoft.VisualBasic;

static class TestIrisData
{
    private static Random rand = new Random();
    internal static readonly IrisData Setosa = new IrisData
    {
        SepalLength = (float)(rand.NextDouble() * 7.0), // rango aproximado del dataset
        SepalWidth = (float)(rand.NextDouble() * 4.5),
        PetalLength = (float)(rand.NextDouble() * 6.0),
        PetalWidth = (float)(rand.NextDouble() * 2.5)
    };
}