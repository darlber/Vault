public class Usuario
{
    public string nombre { get; }
    public string id { get; }

    public Usuario(string nombre, string id)
    {
        this.nombre = nombre;
        this.id = id;
    }

}