public class RabinKarp {

    static final int d = 10;

    static void search(String pattern, String text, int q) {

        /*
         * Texto: A B C C D D A E F G
         * | | | ← ventana de tamaño m=3
         * Patrón: C D D
         */

        int m = pattern.length();
        int n = text.length();
        int p = 0; // hash del patrón
        int t = 0; // hash de la ventana del texto
        int h = 1;

        /*
         * h = d^(m-1) % q
         * Sirve para "quitar" la primera letra del hash al mover la ventana
         * 
         * Ejemplo:
         * ABC → BCC
         * quitar A, añadir C
         */
        for (int i = 0; i < m - 1; i++)
            h = (h * d) % q;

        /*
         * Cálculo inicial de hashes
         * 
         * Patrón: C D D
         * Texto: A B C
         */
        for (int i = 0; i < m; i++) {
            p = (d * p + pattern.charAt(i)) % q;
            t = (d * t + text.charAt(i)) % q;
        }

        /*
         * Desplazamiento de la ventana:
         * 
         * i=0 [A B C] C D D A E F G
         * i=1 [B C C] D D A E F G
         * i=2 [C C D] D A E F G
         * i=3 [C D D] A E F G ← MATCH
         */
        for (int i = 0; i <= n - m; i++) {

            // Si los hashes coinciden, comprobamos letra a letra
            if (p == t) {
                int j;
                for (j = 0; j < m; j++) {
                    if (text.charAt(i + j) != pattern.charAt(j))
                        break;
                }
                if (j == m)
                    System.out.println("Patrón encontrado en posición: " + (i + 1));
            }

            /*
             * Hash rodante:
             * quitamos la letra izquierda y añadimos la nueva derecha
             * 
             * [A B C] → [B C C]
             * -A +C
             */
            if (i < n - m) {
                t = (d * (t - text.charAt(i) * h)
                        + text.charAt(i + m)) % q;

                if (t < 0)
                    t += q;
            }
        }
    }

    public static void main(String[] args) {
        String text = "ABCCDDAEFG";
        String pattern = "CDD";
        // usamos numero primo porque no hay colisiones
        int q = 13;
        search(pattern, text, q);
    }
}
