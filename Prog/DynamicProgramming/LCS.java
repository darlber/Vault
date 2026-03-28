public class LCS {

    static void lcs(String S1, String S2) {
        int m = S1.length();
        int n = S2.length();

        int[][] L = new int[m + 1][n + 1];

        // Construcción bottom-up
        for (int i = 1; i <= m; i++) {
            for (int j = 1; j <= n; j++) {
                if (S1.charAt(i - 1) == S2.charAt(j - 1))
                    L[i][j] = L[i - 1][j - 1] + 1;
                else
                    L[i][j] = Math.max(L[i - 1][j], L[i][j - 1]);
            }
        }

        // Reconstrucción de la subsecuencia
        int index = L[m][n];
        char[] lcs = new char[index];

        int i = m, j = n;
        while (i > 0 && j > 0) {
            if (S1.charAt(i - 1) == S2.charAt(j - 1)) {
                lcs[--index] = S1.charAt(i - 1);
                i--;
                j--;
            } else if (L[i - 1][j] > L[i][j - 1]) {
                i--;
            } else {
                j--;
            }
        }

        System.out.println("S1 : " + S1);
        System.out.println("S2 : " + S2);
        System.out.println("LCS: " + new String(lcs));
    }

    public static void main(String[] args) {
        String S1 = "ACADB";
        String S2 = "CBDA";
        lcs(S1, S2);
    }
}
