import java.util.ArrayList;
import java.util.List;

public class DFSInt {

    static List<Integer>[] graph;  // lista de vecinos
    static boolean[] visited;      // nodos visitados

    // DFS recursivo
    static void dfs(int node) {
        // 1️⃣ marcar como visitado
        visited[node] = true;

        // 2️⃣ imprimir nodo
        System.out.print(node + " ");

        // 3️⃣ recorrer vecinos
        for (int neighbor : graph[node]) {
            if (!visited[neighbor]) {
                dfs(neighbor);
            }
        }
    }

    public static void main(String[] args) {

        int n = 5; // número de nodos
        graph = new ArrayList[n];
        visited = new boolean[n];

        // inicializamos listas de vecinos
        for (int i = 0; i < n; i++) {
            graph[i] = new ArrayList<>();
        }

        // añadimos aristas (grafo no dirigido)
        //        0
        //       / \
        //      1   2
        //     / \   \
        //    3   4---
        //         \
        //          2
        graph[0].add(1); graph[1].add(0);
        graph[0].add(2); graph[2].add(0);
        graph[1].add(3); graph[3].add(1);
        graph[1].add(4); graph[4].add(1);
        graph[2].add(4); graph[4].add(2);

        // ejecutamos DFS desde el nodo 0
        System.out.print("DFS desde nodo 0: ");
        dfs(0);
    }
}
