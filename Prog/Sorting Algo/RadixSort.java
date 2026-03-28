public class RadixSort {
    public void countingSort(int[] arr, int place) {
        int size = arr.length;
        int[] output = new int[size];
        int[] count = new int[10];

        // Guardar el contador de cada elemento
        for (int i = 0; i < size; i++) {
            int index = arr[i] / place;
            count[index % 10]++;
        }
        for (int i = 1; i < 10; i++) {
            count[i] += count[i - 1];
        }

        int i = size - 1;
        while (i >= 0) {
            int index = arr[i] / place;
            output[count[index % 10] - 1] = arr[i];
            count[index % 10]--;
            i--;
        }

        for (int j = 0; j < size; j++) {
            arr[j] = output[j];
        }
    }

    public void radixSort(int[] arr) {
        int max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }

        for (int place = 1; max / place > 0; place *= 10) {
            countingSort(arr, place);
        }
    }

    public static void main(String[] args) {
        int[] arr = { 121, 432, 564, 23, 1, 45, 788 };
        new RadixSort().radixSort(arr);
        for (int n : arr) {
            System.out.print(n + " ");
        }
    }
}
