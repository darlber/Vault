public class SelectionSort {
    public void sortArr(int[] array) {
        for (int i = 0; i < array.length; i++) {
            int min = i;
            for (int j = i + 1; j < array.length; j++) {
                if (array[min] > array[j]) {
                    min = j;
                }
            }
            
            int temp = array[i];
            array[i] = array[min];
            array[min] = temp;
        }

    }

    public static void main(String[] args) {
        int[] array = { 5, 2, 7, 19, 1, 3 };
        // Inicial: 5 2 7 19 1 3
        // Paso 1: 1 2 7 19 5 3
        // Paso 2: 1 2 7 19 5 3
        // Paso 3: 1 2 3 19 5 7
        // Paso 4: 1 2 3 5 19 7
        // Paso 5: 1 2 3 5 7 19
        // Final: 1 2 3 5 7 19

        SelectionSort ss = new SelectionSort();
        ss.sortArr(array);
        for (int o : array) {
            System.out.print(o + " ");
        }
    }
}
