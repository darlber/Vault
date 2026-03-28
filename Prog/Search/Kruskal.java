import java.util.*;

class Kruskal {
    int V;
    List<int[]> edges = new ArrayList<>();

    Kruskal(int vertices) {
        V = vertices;
    }

    void addEdge(int u, int v, int w) {
        edges.add(new int[]{u, v, w});
    }

    int find(int[] parent, int i) {
        if (parent[i] != i)
            parent[i] = find(parent, parent[i]);
        return parent[i];
    }

    void union(int[] parent, int[] rank, int x, int y) {
        int xroot = find(parent, x);
        int yroot = find(parent, y);

        if (rank[xroot] < rank[yroot])
            parent[xroot] = yroot;
        else if (rank[xroot] > rank[yroot])
            parent[yroot] = xroot;
        else {
            parent[yroot] = xroot;
            rank[xroot]++;
        }
    }

    void kruskalAlgo() {
        edges.sort(Comparator.comparingInt(e -> e[2]));

        int[] parent = new int[V];
        int[] rank = new int[V];
        for (int i = 0; i < V; i++) {
            parent[i] = i;
            rank[i] = 0;
        }

        int e = 0, i = 0;
        while (e < V - 1) {
            int[] edge = edges.get(i++);
            int u = edge[0], v = edge[1], w = edge[2];

            int x = find(parent, u);
            int y = find(parent, v);

            if (x != y) {
                System.out.println(u + " - " + v + ": " + w);
                union(parent, rank, x, y);
                e++;
            }
        }
    }

    public static void main(String[] args) {
        Kruskal g = new Kruskal(6);
        g.addEdge(0, 1, 4);
        g.addEdge(0, 2, 4);
        g.addEdge(1, 2, 2);
        g.addEdge(2, 3, 3);
        g.addEdge(2, 5, 2);
        g.addEdge(2, 4, 4);
        g.addEdge(3, 4, 3);
        g.addEdge(5, 4, 3);
        g.kruskalAlgo();
    }
}
