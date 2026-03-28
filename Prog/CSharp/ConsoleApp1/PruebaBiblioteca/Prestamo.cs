public class Prestamo
{
  public Libro libro;
  public Usuario user;
  public DateTime fechaPrestamo;
  public DateTime fechaDevolucion;
    public Prestamo(Libro libro, Usuario user)
    {
        this.libro = libro;
        this.user = user;
        this.fechaPrestamo = DateTime.Now;
    }
}