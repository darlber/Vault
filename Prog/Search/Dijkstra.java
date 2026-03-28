import java.util.Arrays;

public class Dijkstra {

    static int[][] vertices = {
        {0,0,1,1,0,0,0},
        {0,0,1,0,0,1,0},
        {1,1,0,1,1,0,0},
        {1,0,1,0,0,0,1},
        {0,0,1,0,0,1,0},
        {0,1,0,0,1,0,1},
        {0,0,0,1,0,1,0}
    };

    static int[][] edges = {
        {0,0,1,2,0,0,0},
        {0,0,2,0,0,3,0},
        {1,2,0,1,3,0,0},
        {2,0,1,0,0,0,1},
        {0,0,3,0,0,2,0},
        {0,3,0,0,2,0,1},
        {0,0,0,1,0,1,0}
    };

    static int numVertices = vertices.length;
    static boolean[] visited = new boolean[numVertices];
    static int[] distance = new int[numVertices];

    static int toBeVisited() {
        int v = -1;
        for (int i = 0; i < numVertices; i++) {
            if (!visited[i] && (v == -1 || distance[i] <= distance[v])) {
                v = i;
            }
        }
        return v;
    }

    public static void main(String[] args) {
        Arrays.fill(distance, Integer.MAX_VALUE);
        distance[0] = 0; // vértice origen

        for (int i = 0; i < numVertices; i++) {
            int u = toBeVisited();
            visited[u] = true;

            for (int v = 0; v < numVertices; v++) {
                if (vertices[u][v] == 1 && !visited[v]) {
                    int newDist = distance[u] + edges[u][v];
                    if (newDist < distance[v]) {
                        distance[v] = newDist;
                    }
                }
            }
        }

        for (int i = 0; i < numVertices; i++) {
            System.out.println("Distancia de " + (char)('a' + i) +
                               " al origen: " + distance[i]);
        }
    }
}
