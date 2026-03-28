import java.util.LinkedList;
import java.util.Queue;

public class FordFulkerson {

    private int[][] graph;
    private int V;

    public FordFulkerson(int[][] graph) {
        this.graph = graph;
        this.V = graph.length;
    }

    private boolean bfs(int s, int t, int[] parent) {
        boolean[] visited = new boolean[V];
        Queue<Integer> q = new LinkedList<>();
        q.add(s);
        visited[s] = true;
        parent[s] = -1;

        while (!q.isEmpty()) {
            int u = q.poll();
            for (int v = 0; v < V; v++) {
                if (visited[v] == false && graph[u][v] > 0) {
                    q.add(v);
                    parent[v] = u;
                    visited[v] = true;
                }
            }
        }

        return visited[t];
    }

    private int fordFulkerson(int s, int t) {
        int[] parent = new int[V];
        int max_flow = 0;
        while (bfs(s, t, parent)) {
            int path_flow = Integer.MAX_VALUE;
            for (int v = t; v != s; v = parent[v]) {
                int u = parent[v];
                path_flow = Math.min(path_flow, graph[u][v]);
            }
            for (int v = t; v != s; v = parent[v]) {
                int u = parent[v];
                graph[u][v] -= path_flow;
                graph[v][u] += path_flow;
            }
            max_flow += path_flow;
        }
        return max_flow;
    }

    public static void main(String[] args) {
        int[][] graph = {
                { 0, 8, 0, 0, 3, 0 },
                { 0, 0, 9, 0, 0, 0 },
                { 0, 0, 0, 0, 7, 2 },
                { 0, 0, 0, 0, 0, 5 },
                { 0, 0, 7, 4, 0, 0 },
                { 0, 0, 0, 0, 0, 0 }
        };

        FordFulkerson g = new FordFulkerson(graph);
        System.out.println("Max Flow: " + g.fordFulkerson(0, 5));
    }
}
