public class Fibo
{
    public static void Main(String[] args)
    {
        int len = 20;
        int[] arr = new int[len];
        arr[0] = 0;
        arr[1] = 1;
        for (int i = 2; i < len; i++)
        {
            arr[i] = arr[i - 1] + arr[i - 2];
        }
        foreach (int i in arr)
        {
            Console.WriteLine(i);
        }
    }
}