using Microsoft.ML;

class Program
{
    static void Main(string[] args)
    {
        var mlContext = new MLContext(seed: 0);
        string _dataPath = "dataset.csv";
        string _modelPath = "IrisModel.zip";

        ITransformer model;

        if (File.Exists(_modelPath))
        {
            // 1. Cargar modelo existente
            model = mlContext.Model.Load(_modelPath, out var _);
            Console.WriteLine("Modelo cargado desde disco.");
        }
        else
        {
            // 2. Entrenar modelo
            IDataView dataView = mlContext.Data.LoadFromTextFile<IrisData>(
                _dataPath, hasHeader: true, separatorChar: ',');

            var split = mlContext.Data.TrainTestSplit(dataView, testFraction: 0.2);
            var trainData = split.TrainSet;
            var testData = split.TestSet;

            string featuresColumnName = "Features";
            var pipeline = mlContext.Transforms
                .Concatenate(featuresColumnName, "SepalLength", "SepalWidth", "PetalLength", "PetalWidth")
                .Append(mlContext.Clustering.Trainers.KMeans(featuresColumnName, numberOfClusters: 3));

            // Entrenar
            model = pipeline.Fit(trainData);

            // Evaluar
            var predictions = model.Transform(testData);
            var metrics = mlContext.Clustering.Evaluate(
                predictions,
                scoreColumnName: "Score",
                featureColumnName: "Features");
            Console.WriteLine($"Average Distance: {metrics.AverageDistance}");

            // Guardar modelo
            using (var fileStream = new FileStream(_modelPath, FileMode.Create, FileAccess.Write, FileShare.Write))
            {
                mlContext.Model.Save(model, dataView.Schema, fileStream);
            }
            Console.WriteLine("Modelo entrenado y guardado como IrisModel.zip");
        }

        // 3. Predicción rápida
        var predictor = mlContext.Model.CreatePredictionEngine<IrisData, IrisPrediction>(model);

        var prediction = predictor.Predict(TestIrisData.Setosa);
        Console.WriteLine($"Cluster: {prediction.PredictedClusterId}");
        Console.WriteLine($"Distances: {string.Join(" ", prediction.Score ?? Array.Empty<float>())}");
    }
}