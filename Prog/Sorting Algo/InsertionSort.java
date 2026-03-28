public class InsertionSort {
    public int [] insertSort(int[] array) {
        for (int i = 1; i < array.length; i++) {
            int key = array[i];
            int j = i-1;
            while (j >= 0 && key < array[j]) {
                array[j+1] = array[j];
                j--;
            }
            array[j+1] = key;
        }
        return array;
    }

    public static void main(String[] args) {
        int [] array = { 5, 2, 7, 19, 1, 3 };
        InsertionSort is = new InsertionSort();
        is.insertSort(array);
        for (int o : array) {
            System.out.print(o + " ");
        }
    }
}
