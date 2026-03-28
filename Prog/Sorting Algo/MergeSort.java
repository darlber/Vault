import java.util.Arrays;

public class MergeSort {

    // Método principal que ordena el array
    public void mergeSort(int[] array) {
        if (array.length > 1) {
            int mid = array.length / 2;

            // Dividir el array en dos subarrays
            int[] left = Arrays.copyOfRange(array, 0, mid);
            int[] right = Arrays.copyOfRange(array, mid, array.length);

            // Llamadas recursivas para ordenar los subarrays
            mergeSort(left);
            mergeSort(right);

            // Mezclar los subarrays ordenados
            merge(array, left, right);
        }
    }

    // Método que mezcla dos subarrays ordenados
    private void merge(int[] array, int[] left, int[] right) {
        int i = 0; // índice para left
        int j = 0; // índice para right
        int k = 0; // índice para array

        // Comparar y colocar el menor en array
        while (i < left.length && j < right.length) {
            if (left[i] < right[j]) {
                array[k++] = left[i++];
            } else {
                array[k++] = right[j++];
            }
        }

        // Copiar los elementos restantes de left, si quedan
        while (i < left.length) {
            array[k++] = left[i++];
        }

        // Copiar los elementos restantes de right, si quedan
        while (j < right.length) {
            array[k++] = right[j++];
        }
    }

    public static void main(String[] args) {
        int[] array = {5, 10, 4, 2, 3, 18, 15, 22};
        MergeSort ms = new MergeSort();
        ms.mergeSort(array);

        // Imprimir array ordenado
        for (int num : array) {
            System.out.print(num + " ");
        }
    }
}
