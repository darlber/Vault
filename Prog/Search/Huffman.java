import java.util.*;
public class Huffman {

    static class Node implements Comparable<Node> {
        char ch;
        int freq;
        Node left, right;

        Node(char ch, int freq) {
            this.ch = ch;
            this.freq = freq;
        }

        Node(Node left, Node right) {
            this.ch = '\0';
            this.freq = left.freq + right.freq;
            this.left = left;
            this.right = right;
        }

        public int compareTo(Node o) {
            return this.freq - o.freq;
        }
    }

    static void buildCode(Node node, String code, Map<Character, String> map) {
        if (node.left == null && node.right == null) {
            map.put(node.ch, code);
            return;
        }
        buildCode(node.left, code + "0", map);
        buildCode(node.right, code + "1", map);
    }

    public static void main(String[] args) {
        String text = "BCAADDDCCACACAC";

        Map<Character, Integer> freq = new HashMap<>();
        for (char c : text.toCharArray())
            freq.put(c, freq.getOrDefault(c, 0) + 1);

        PriorityQueue<Node> pq = new PriorityQueue<>();
        for (var e : freq.entrySet())
            pq.add(new Node(e.getKey(), e.getValue()));

        while (pq.size() > 1) {
            Node a = pq.poll();
            Node b = pq.poll();
            pq.add(new Node(a, b));
        }

        Map<Character, String> huffmanCode = new HashMap<>();
        buildCode(pq.peek(), "", huffmanCode);

        for (char c : freq.keySet())
            System.out.println(c + " -> " + huffmanCode.get(c));
    }
}
