public class Prim {

    static final int INF = 9999999;
    static final int V = 5;

    static int[][] G = {
        {0, 9, 75, 0, 0},
        {9, 0, 95, 19, 42},
        {75, 95, 0, 51, 66},
        {0, 19, 51, 0, 31},
        {0, 42, 66, 31, 0}
    };

    public static void main(String[] args) {

        boolean[] selected = new boolean[V];
        selected[0] = true;

        int noEdge = 0;
        System.out.println("Arista : Peso");

        while (noEdge < V - 1) {
            int min = INF;
            int x = 0, y = 0;

            for (int i = 0; i < V; i++) {
                if (selected[i]) {
                    for (int j = 0; j < V; j++) {
                        if (!selected[j] && G[i][j] != 0) {
                            if (min > G[i][j]) {
                                min = G[i][j];
                                x = i;
                                y = j;
                            }
                        }
                    }
                }
            }

            System.out.println(x + " - " + y + " : " + G[x][y]);
            selected[y] = true;
            noEdge++;
        }
    }
}
