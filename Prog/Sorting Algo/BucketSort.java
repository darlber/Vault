import java.util.*;

public class BucketSort {

    public static void bucketSort(int[] arr) {
        int n = arr.length;

        // Create buckets
        List<List<Integer>> buckets = new ArrayList<>();
        for (int i = 0; i < n; i++) {
            buckets.add(new ArrayList<>());
        }

        // Put elements into buckets
        for (int value : arr) {
            int index = value * n / 10; // bucket index
            buckets.get(index).add(value);
        }

        // Sort individual buckets
        for (List<Integer> bucket : buckets) {
            Collections.sort(bucket);
        }

        // Concatenate buckets back into array
        int index = 0;
        for (List<Integer> bucket : buckets) {
            for (int value : bucket) {
                arr[index++] = value;
            }
        }
    }

    public static void main(String[] args) {
        int[] arr = {1, 5, 4, 2, 3};
        bucketSort(arr);

        System.out.println("Sorted array:");
        System.out.println(Arrays.toString(arr));
    }
}
