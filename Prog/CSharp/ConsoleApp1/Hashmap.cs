public class FuncReference
{
    public static void Main(string[] args)
    {
        List<string> users = new List<string>();
        List<string> upperUsers = new List<string>();
        users.Add("Aaaaa");
        users.Add("Bbbbb");
        users.Add("Ccccc");
        users.Add("Ddddd");
        users.Add("Eeeee");
        foreach (string s in users)
        {
            upperUsers.Add(s.ToUpper());
        }
        Console.WriteLine(upperUsers);

        // lambda
        List<string> upperUsersLambda = users.Select
                (s => s.ToUpper()).ToList();
        Console.WriteLine(string.Join(", ", upperUsersLambda));

        // referencia a método
        List<string> upperUsersReference = users
    .Select(ToUpperCase)
    .ToList();
        Console.WriteLine(string.Join(", ", upperUsersReference));

    }
    private static string ToUpperCase(string s)
    {
        return s.ToUpper();
    }
}
