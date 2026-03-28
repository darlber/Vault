public class FloydWarshall {

    static final int INF = 999;
    static final int V = 4;

    static void floydWarshall(int[][] G) {
        int[][] dist = new int[V][V];

        // Copia de la matriz
        for (int i = 0; i < V; i++)
            for (int j = 0; j < V; j++)
                dist[i][j] = G[i][j];

        for (int k = 0; k < V; k++)
            for (int i = 0; i < V; i++)
                for (int j = 0; j < V; j++)
                    dist[i][j] = Math.min(dist[i][j],
                                           dist[i][k] + dist[k][j]);

        printSolution(dist);
    }

    static void printSolution(int[][] dist) {
        for (int i = 0; i < V; i++) {
            for (int j = 0; j < V; j++) {
                if (dist[i][j] == INF)
                    System.out.print("INF ");
                else
                    System.out.print(dist[i][j] + "   ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        int[][] G = {
            {0,   3, INF, 5},
            {2,   0, INF, 4},
            {INF, 1,   0, INF},
            {INF, INF, 2,   0}
        };

        floydWarshall(G);
    }
}
