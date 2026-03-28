class HelloWorld
{
    static void Main(string[] args)
    {
        int i= 0;
        while (i < 2) {
            i++;
            Console.Write(i + " ");
        }
        string s = "Hello World!";
        Console.WriteLine(s);
        float f = 1.5f;
        Console.WriteLine(f);
        double d = 1.5;
        Console.WriteLine(d);
        dynamic d2= 3;
        d2 = "prueba";
        Console.WriteLine(d2);
        var numero = 1;
        Console.WriteLine(numero.GetType());
        Console.WriteLine($"{numero} {s} {f} {d} {d2}");
        const string s2 = "constante";

    }
}
