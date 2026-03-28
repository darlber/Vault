public class Libro
{
    public string titulo { get; }
    public string autor { get; }
    public string isbn { get; }
    public bool prestado { get; set; }
    public Libro(string titulo, string autor, string isbn)
    {
        this.titulo = titulo;
        this.autor = autor;
        this.isbn = isbn;
        prestado = false;
    }

    public void LibroPrestado()
    {
        prestado = true;
    }public void LibroDevuelto()
    {
        prestado = false;
    }
}