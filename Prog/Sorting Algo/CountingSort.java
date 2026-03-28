public class CountingSort {
    public void countingSort(int[] arr) {
        int size = arr.length;
        int[] output = new int[size];
        int[] count = new int[20];

        // Guardar el contador de cada elemento
        for (int i = 0; i < size; i++) {
            count[arr[i]]++;
        }

        // Actualizar el contador acumulativo
        // que significa, cuantos numeros menores que el elemento estan a la izquierda
        for (int i = 1; i < count.length; i++) {
            count[i] += count[i - 1];
        }

        // Colocar los elementos en el output
        for (int i = size - 1; i >= 0; i--) {
            output[count[arr[i]] - 1] = arr[i];
            count[arr[i]]--;
        }

        // Copiar el output al array original
        for (int i = 0; i < size; i++) {
            arr[i] = output[i];
        }
    }

    public static void main(String[] args) {
        int[] arr = {5, 2, 7, 19, 1, 3};
        new CountingSort().countingSort(arr);
        for (int n : arr) {
            System.out.print(n + " ");
        }
    }
}
