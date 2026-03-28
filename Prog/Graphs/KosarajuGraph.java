import java.util.*;

public class KosarajuGraph {
    // numero de vertices
    private int V;
    // lista de nodos a los que se apunta, lista de listas
    // 0 → [1]
    // 1 → [2]
    // 2 → [3, 4]
    private List<Integer>[] graph;

    public KosarajuGraph(int v) {

        V = v;
        graph = new ArrayList[v];
        for (int i = 0; i < v; i++) {
            graph[i] = new ArrayList<>();
            //en cada pos del array, lista vacia inicializada.
        }
    }

    public void add_edge(int source, int destination) {
        //desde s hacia d
        graph[source].add(destination);
    }

    public void dfs(int d, boolean[] visited) {
        visited[d] = true;
        System.out.print(d + " ");

        for (int i : graph[d]) {
            if (!visited[i]) {
                dfs(i, visited);
            }
        }
    }

    public void fill_order(int d, boolean[] visited, Stack<Integer> s) {
        visited[d] = true;
        for (int i : graph[d]) {
            if (!visited[i]) {
                fill_order(i, visited, s);
            }
        }
        //usamos stack para guardar el orden
        s.push(d);
    }

    public KosarajuGraph transpose() {
        KosarajuGraph g = new KosarajuGraph(V);

        for (int i = 0; i < V; i++) {
            for (int j : graph[i]) {
                //invertir grafo
                g.add_edge(j, i);
            }
        }
        return g;
    }

    public void printSCC() {
        Stack<Integer> s = new Stack<>();
        boolean[] visited = new boolean[V];

        for (int i = 0; i < V; i++) {
            if (!visited[i]) {
                fill_order(i, visited, s);
            }
        }

        KosarajuGraph g = transpose();
        Arrays.fill(visited, false);

        while (!s.isEmpty()) {
            int d = s.pop();
            if (!visited[d]) {
                g.dfs(d, visited);
                System.out.println();
            }
        }
    }

    public static void main(String[] args) {
        KosarajuGraph g = new KosarajuGraph(8);

        g.add_edge(0, 1);
        g.add_edge(1, 2);
        g.add_edge(2, 3);
        g.add_edge(2, 4);
        g.add_edge(3, 0);
        g.add_edge(4, 5);
        g.add_edge(5, 6);
        g.add_edge(6, 4);
        g.add_edge(6, 7);

        System.out.println("Strongly connected components:");
        g.printSCC();
    }
}
