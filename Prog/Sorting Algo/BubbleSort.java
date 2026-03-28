import java.util.Arrays;

public class BubbleSort {
    void sortArr(int[] array) {
        for (int i = 0; i < array.length; i++) {
            boolean swapped = false;
            for (int j = 0; j < array.length -i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                    swapped = true;
                }
            }
            if (!swapped) {
                return;
            }
        }
    }

    public static void main(String[] args) {
        int[] array = { 5, 2, 7, 19, 1, 3 };
        BubbleSort bs = new BubbleSort();
        bs.sortArr(array);
        for (int o : array) {
            System.out.print(o + " ");
        }
    }
}
