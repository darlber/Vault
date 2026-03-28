public class Linear {
    public static int search(int[] arr, int target) {
        for (int i : arr) {
            if (i == target) {
                System.out.println("Element found: " + i);
                return i;
            }
        }
        System.out.println("Element not found");
        return -1;
    }

    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        search(arr, 9);

    }
}
