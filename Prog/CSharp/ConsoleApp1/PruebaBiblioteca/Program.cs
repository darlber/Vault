var biblioteca = new Biblioteca();

var libro = new Libro("Clean Code", "Robert C. Martin", "123");
var usuario = new Usuario("Carlos", "U1");

biblioteca.AgregarLibro(libro);
biblioteca.AgregarUsuario(usuario);

biblioteca.PrestarLibro("123", "U1");
biblioteca.DevolverLibro("123");