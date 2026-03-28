public class Biblioteca
{
    public List<Libro> libros = new List<Libro>();
    public List<Usuario> usuarios = new();
    public List<Prestamo> prestamos = new();
    public void AgregarLibro(Libro libro) => libros.Add(libro);
    public void AgregarUsuario(Usuario usuario) => usuarios.Add(usuario);

    public void PrestarLibro(string isbn, string id)
    {
        //utilizamos var porque el tipo es inferido y resulta mas legible uqe Libro libro
        // l => l.isbn == isbn es una lambda que hace lo mismo que:
        // foreach (var l in libros)
        // {
        //     if (l.isbn == isbn)
        //     {
        //         libro = l;
        //         break;
        //     }
        var libro = libros.FirstOrDefault(l => l.isbn == isbn);
        var usuario = usuarios.FirstOrDefault(u => u.id == id);

        if (libro == null || usuario == null)
        {
            Console.WriteLine("No se encontro el libro o el usuario");
            return;
        }
        if (libro.prestado)
        {
            Console.WriteLine("El libro ya esta prestado");
            return;
        }
        libro.LibroPrestado();
        prestamos.Add(new Prestamo(libro, usuario));
        Console.WriteLine("Libro prestado exitosamente");
    }
    public void DevolverLibro(string isbn)
    {
        var libro = libros.FirstOrDefault(l => l.isbn == isbn);
        if (libro == null)
        {
            Console.WriteLine("No se encontro el libro");
            return;
        }
        if (!libro.prestado)
        {
            Console.WriteLine("El libro no esta prestado");
            return;
        }
        libro.LibroDevuelto();
        libros.Remove(libro);
        Console.WriteLine("Libro devuelto exitosamente");

    }
}