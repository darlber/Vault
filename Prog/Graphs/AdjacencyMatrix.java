public class AdjacencyMatrix {

    int size;                 // número de nodos
    int[][] matrix;           // matriz de adyacencia

    // 1️⃣ CONSTRUCTOR
    AdjacencyMatrix(int size) {
        this.size = size;

        // Creamos la matriz size x size
        matrix = new int[size][size];

        // Java ya la inicializa con ceros, no hay que hacer nada más
    }

    // 2️⃣ AÑADIR ARISTA (grafo NO dirigido)
    void addEdge(int from, int to) {
        matrix[from][to] = 1;
        matrix[to][from] = 1;
    }

    // 3️⃣ IMPRIMIR MATRIZ
    void printMatrix() {
        System.out.println("Matriz de adyacencia:");

        // Imprimir encabezado
        System.out.print("   ");
        for (int i = 0; i < size; i++) {
            System.out.print(i + " ");
        }
        System.out.println();

        // Imprimir filas
        for (int i = 0; i < size; i++) {
            System.out.print(i + ": ");
            for (int j = 0; j < size; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }

    // 4️⃣ MAIN
    public static void main(String[] args) {

        AdjacencyMatrix g = new AdjacencyMatrix(5);

        g.addEdge(0, 1);
        g.addEdge(0, 2);
        g.addEdge(1, 2);
        g.addEdge(2, 3);

        g.printMatrix();
    }
}

