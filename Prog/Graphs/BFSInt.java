import java.util.*;

public class BFSInt {

    static List<Integer>[] graph;  // listas de vecinos
    static boolean[] visited;      // nodos visitados

    static void bfs(int start) {

        Queue<Integer> queue = new LinkedList<>(); // cola FIFO

        // marcar nodo inicial como visitado y añadir a la cola
        visited[start] = true;
        queue.add(start);

        while (!queue.isEmpty()) {
            int node = queue.poll(); // sacar nodo de la cola
            System.out.print(node + " "); // procesar nodo

            // recorrer vecinos
            for (int neighbor : graph[node]) {
                if (!visited[neighbor]) {
                    visited[neighbor] = true;
                    queue.add(neighbor); // añadir vecino a la cola
                }
            }
        }
    }

    public static void main(String[] args) {

        int n = 4; // número de nodos
        graph = new ArrayList[n];
        visited = new boolean[n];

        // inicializamos listas de vecinos
        for (int i = 0; i < n; i++) {
            graph[i] = new ArrayList<>();
        }

        // añadimos aristas (grafo dirigido según el ejemplo Python)
        graph[0].add(1);
        graph[0].add(2);
        graph[1].add(2);
        graph[2].add(3);
        graph[3].add(1);
        graph[3].add(2);

        System.out.print("BFS desde nodo 0: ");
        bfs(0);
    }
}
